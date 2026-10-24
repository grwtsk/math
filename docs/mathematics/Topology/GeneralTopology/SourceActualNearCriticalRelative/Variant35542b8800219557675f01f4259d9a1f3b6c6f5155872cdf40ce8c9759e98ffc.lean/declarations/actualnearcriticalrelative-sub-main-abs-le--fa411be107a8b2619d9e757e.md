# actualNearCriticalRelative_sub_main_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:417f0047-e50f-511d-d882-642077bd9d55",
  "kind": "theorem",
  "lexical_name": "actualNearCriticalRelative_sub_main_abs_le",
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
  "slug": "actualnearcriticalrelative-sub-main-abs-le--fa411be107a8b2619d9e757e",
  "source": {
    "blob": "90908a133a1e0037b2027039759271ba3faf40b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 276,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant35542b8800219557675f01f4259d9a1f3b6c6f5155872cdf40ce8c9759e98ffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa411be107a8b2619d9e757e14ea9aa7ffa0e821644e3cb24a701d8eb81c5402",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant35542b8800219557675f01f4259d9a1f3b6c6f5155872cdf40ce8c9759e98ffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:417f0047-e50f-511d-d882-642077bd9d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNearCriticalRelative_sub_main_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualNearCriticalRelativePairing A - actualNearCriticalRelativeMain A| ≤
      10 * (Real.log 4 + 3) * (Real.log A) ^ 2 / A := by
  have hp : 0 < A := by linarith
  rw [near_main_eq_integral (by linarith : 1 ≤ A)]
  have hh := near_replacement hA
    (show 0 ≤ 2 * Real.log A by positivity [Real.log_nonneg (by linarith : 1 ≤ A)])
  unfold actualNearCriticalRelativePairing
  apply hh.trans_eq
  rw [show 2 * Real.log A / 2 = Real.log A by ring, Real.exp_log hp]
  field_simp
  ring

/-- The kernel replacement error tends to zero before any normalization of the signed pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant35542b8800219557675f01f4259d9a1f3b6c6f5155872cdf40ce8c9759e98ffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant35542b8800219557675f01f4259d9a1f3b6c6f5155872cdf40ce8c9759e98ffc.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90908a133a1e0037b2027039759271ba3faf40b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
