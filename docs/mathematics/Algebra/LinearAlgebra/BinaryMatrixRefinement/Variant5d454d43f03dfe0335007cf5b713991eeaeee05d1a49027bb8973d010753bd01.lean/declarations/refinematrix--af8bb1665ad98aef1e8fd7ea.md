# refineMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e09d6f19069c921f63a5b9f31f5b52b059e4b2a45d8bbac880a79585f5095be",
  "kind": "def",
  "lexical_name": "refineMatrix",
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
  "slug": "refinematrix--af8bb1665ad98aef1e8fd7ea",
  "source": {
    "blob": "3c69651a98e85e7dca8cbdfdb953b1a414638811",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af8bb1665ad98aef1e8fd7ea9b740fc2baa49bcf02b7f66cd5e42eb79a259891",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e09d6f19069c921f63a5b9f31f5b52b059e4b2a45d8bbac880a79585f5095be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def refineMatrix
    (R : BinaryMatrixRefinementRule)
    (M : Carrier.BinaryMatrix) : Carrier.BinaryMatrix :=
  Carrier.BinaryMatrix.ofFunction
    (M.m * R.scale)
    (M.n * R.scale)
    fun I J =>
      let row : Fin M.m :=
        ⟨I.val / R.scale, by
          have hcomm : I.val < R.scale * M.m := by
            simpa [Nat.mul_comm] using I.isLt
          exact Nat.div_lt_of_lt_mul hcomm⟩
      let col : Fin M.n :=
        ⟨J.val / R.scale, by
          have hcomm : J.val < R.scale * M.n := by
            simpa [Nat.mul_comm] using J.isLt
          exact Nat.div_lt_of_lt_mul hcomm⟩
      let localRow : Fin R.scale :=
        ⟨I.val % R.scale, Nat.mod_lt I.val R.scale_pos⟩
      let localCol : Fin R.scale :=
        ⟨J.val % R.scale, Nat.mod_lt J.val R.scale_pos⟩
      R.split (M.get row col) localRow localCol

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c69651a98e85e7dca8cbdfdb953b1a414638811` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
