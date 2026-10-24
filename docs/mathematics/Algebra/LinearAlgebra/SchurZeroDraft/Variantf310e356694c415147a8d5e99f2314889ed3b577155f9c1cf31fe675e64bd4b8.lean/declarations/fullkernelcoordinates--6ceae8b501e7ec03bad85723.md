# fullKernelCoordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c66d523fef72d995854cc420e21d671f34b12c33c3b2cad33b29e33a39d844f8",
  "kind": "def",
  "lexical_name": "fullKernelCoordinates",
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
  "slug": "fullkernelcoordinates--6ceae8b501e7ec03bad85723",
  "source": {
    "blob": "6e997df2712ca975312660201fcdbf5871dfd1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ceae8b501e7ec03bad8572333c5584e24eb7c498d62d87737b23f24f73af86e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c66d523fef72d995854cc420e21d671f34b12c33c3b2cad33b29e33a39d844f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fullKernelCoordinates (A : Matrix m m ℂ) (U : Matrix m n ℂ) (C : Matrix n m ℂ)
    (B : Matrix n n ℂ) :
    LinearMap.ker (fromBlocks A U C B).mulVecLin ≃ₗ[ℂ] LinearMap.ker (Feshbach.blockMap A U C B) where
  toFun z := ⟨(fun i => z.val (Sum.inl i), fun j => z.val (Sum.inr j)), by
    change Feshbach.blockMap A U C B (fun i => z.val (Sum.inl i), fun j => z.val (Sum.inr j)) = 0
    apply Prod.ext
    · ext i
      have hh := congrFun z.property (Sum.inl i)
      change ((fromBlocks A U C B).mulVec z) (Sum.inl i) = 0 at hh
      simpa [Matrix.fromBlocks_mulVec, Feshbach.blockMap_apply, Function.comp_def] using hh
    · ext j
      have hh := congrFun z.property (Sum.inr j)
      change ((fromBlocks A U C B).mulVec z) (Sum.inr j) = 0 at hh
      simpa [Matrix.fromBlocks_mulVec, Feshbach.blockMap_apply, Function.comp_def] using hh⟩
  invFun z := ⟨Sum.elim z.val.1 z.val.2, by
    change (fromBlocks A U C B).mulVec (Sum.elim z.val.1 z.val.2) = 0
    rw [Feshbach.blockMap_eq_fromBlocks]
    have hz : Feshbach.blockMap A U C B z = 0 := z.property
    rw [hz]
    ext i
    cases i <;> rfl⟩
  left_inv z := by apply Subtype.ext; ext i; cases i <;> rfl
  right_inv z := by apply Subtype.ext; rfl
  map_add' x y := by apply Subtype.ext; rfl
  map_smul' r x := by apply Subtype.ext; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e997df2712ca975312660201fcdbf5871dfd1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
