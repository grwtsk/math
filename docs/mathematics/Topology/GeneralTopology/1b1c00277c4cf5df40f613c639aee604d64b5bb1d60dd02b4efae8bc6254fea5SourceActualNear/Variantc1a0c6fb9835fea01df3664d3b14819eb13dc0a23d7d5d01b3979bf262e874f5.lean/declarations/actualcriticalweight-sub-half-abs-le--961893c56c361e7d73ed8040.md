# actualCriticalWeight_sub_half_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a28ce0f-c257-e0ee-86df-352dd018fa73",
  "kind": "theorem",
  "lexical_name": "actualCriticalWeight_sub_half_abs_le",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "actualcriticalweight-sub-half-abs-le--961893c56c361e7d73ed8040",
  "source": {
    "blob": "b61c8ef27ab6d85467f28f967822735d25dc0402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:961893c56c361e7d73ed80402debe3b4808eba65cec44a3080405e3d1d0c59fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a28ce0f-c257-e0ee-86df-352dd018fa73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalWeight_sub_half_abs_le {A t : ℝ} (hA : 91 ≤ A) (ht : 0 ≤ t) :
    |criticalWeight A t - 1 / 2| ≤ ((5 / 4 : ℝ) * t ^ 2 + 5 * t) / A ^ 2 := by
  have hc := actualCorrelation_sub_one_abs_le_five hA t
  have hd := actualCorrelation_first_abs_le_five hA t
  rw [abs_of_nonneg ht] at hd
  have he : criticalWeight A t - 1 / 2 =
      (sourceCorrelation explicitSecondDerivative A t - 1) / 2 -
        deriv (sourceCorrelation explicitSecondDerivative A) t := by
    unfold criticalWeight
    ring
  rw [he]
  calc
    _ ≤ |(sourceCorrelation explicitSecondDerivative A t - 1) / 2| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| := abs_sub _ _
    _ ≤ ((5 / 2 : ℝ) / A ^ 2 * t ^ 2) / 2 + 5 / A ^ 2 * t := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add (div_le_div_of_nonneg_right hc (by norm_num)) hd
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b61c8ef27ab6d85467f28f967822735d25dc0402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
