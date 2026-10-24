# isBounded_iff_subset_smul_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cec7727-41c3-f331-31d4-10fcaaafdba2",
  "kind": "theorem",
  "lexical_name": "isBounded_iff_subset_smul_closedBall",
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
  "slug": "isbounded-iff-subset-smul-closedball--4fa3710adbe82d17ad0ff708",
  "source": {
    "blob": "66d00f748acb5887e35769ac2433feb5a96ab665",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 529,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fa3710adbe82d17ad0ff70828bef051f4a74e6af8e20d7266fc5edf9d50d68a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cec7727-41c3-f331-31d4-10fcaaafdba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBounded_iff_subset_smul_closedBall {s : Set E} :
    Bornology.IsBounded s ↔ ∃ a : 𝕜, s ⊆ a • Metric.closedBall (0 : E) 1 := by
  constructor
  · rw [isBounded_iff_subset_smul_ball 𝕜]
    exact Exists.imp fun a ha => ha.trans <| Set.smul_set_mono <| Metric.ball_subset_closedBall
  · rw [← isVonNBounded_iff 𝕜]
    rintro ⟨a, ha⟩
    exact ((isVonNBounded_closedBall 𝕜 E 1).image (a • (1 : E →L[𝕜] E))).subset ha

end NormedSpace

end VonNBornologyEqMetric

section QuasiCompleteSpace

/-- A locally convex space is quasi-complete if every closed and von Neumann bounded set is
complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66d00f748acb5887e35769ac2433feb5a96ab665` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
