# rankOne_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4b60e53-518e-3df9-be12-2ed1b870a02c",
  "kind": "theorem",
  "lexical_name": "rankOne_eq_zero",
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
  "slug": "rankone-eq-zero--a46514c4e69d63e7a4b31ac2",
  "source": {
    "blob": "9e464cfcd28bd0ac75d7d79f814305a6c88a4a28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 352,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variant8b88e65383029c397906c6029ea3d593502074a222207b13226b6af5b9bf0aba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a46514c4e69d63e7a4b31ac21f51c200b55689ff9b44953ef7c94a65e575ee06",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LinearMap/Variant8b88e65383029c397906c6029ea3d593502074a222207b13226b6af5b9bf0aba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4b60e53-518e-3df9-be12-2ed1b870a02c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem rankOne_eq_zero {x : E} {y : F} : rankOne 𝕜 x y = 0 ↔ x = 0 ∨ y = 0 := by
  simp [ContinuousLinearMap.ext_iff, rankOne_apply, forall_or_right, or_comm,
    ext_iff_inner_right 𝕜 (E := F)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LinearMap/Variant8b88e65383029c397906c6029ea3d593502074a222207b13226b6af5b9bf0aba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variant8b88e65383029c397906c6029ea3d593502074a222207b13226b6af5b9bf0aba.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e464cfcd28bd0ac75d7d79f814305a6c88a4a28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
