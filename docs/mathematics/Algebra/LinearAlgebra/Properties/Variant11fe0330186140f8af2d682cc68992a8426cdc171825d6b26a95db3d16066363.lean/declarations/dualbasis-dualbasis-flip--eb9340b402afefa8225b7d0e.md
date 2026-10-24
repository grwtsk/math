# dualBasis_dualBasis_flip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efbcf23c-0bfb-6177-bf73-eb202a44dce9",
  "kind": "lemma",
  "lexical_name": "dualBasis_dualBasis_flip",
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
  "slug": "dualbasis-dualbasis-flip--eb9340b402afefa8225b7d0e",
  "source": {
    "blob": "40681f592b9648400ded4751c49b81f69c55a0c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 296,
    "path": "GRWTSK/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb9340b402afefa8225b7d0e3ea48db0cf3f685a5b48e78b5f72f75c8a2e45a6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efbcf23c-0bfb-6177-bf73-eb202a44dce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dualBasis_dualBasis_flip [FiniteDimensional K V]
    (B : BilinForm K V) (hB : B.Nondegenerate) {ι : Type*}
    [Finite ι] [DecidableEq ι] (b : Basis ι K V) :
    B.dualBasis hB (B.flip.dualBasis hB.flip b) = b := by
  ext i
  refine LinearMap.ker_eq_bot.mp hB.ker_eq_bot ((B.flip.dualBasis hB.flip b).ext (fun j ↦ ?_))
  simp_rw [apply_dualBasis_left, ← B.flip_apply, apply_dualBasis_left, @eq_comm _ i j]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40681f592b9648400ded4751c49b81f69c55a0c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
