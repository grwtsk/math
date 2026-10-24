# δ_neg_one_cochain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1571cf5-06b7-3730-8d07-9604a7e9c786",
  "kind": "lemma",
  "lexical_name": "δ_neg_one_cochain",
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
  "slug": "neg-one-cochain--06beb361b52f03367794e45e",
  "source": {
    "blob": "a052e1a37eee0a933b54423bee44aee1f80f3d38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 556,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant16a96466620daae72d76a409df2c462180f5b7c98b5065303124d96fb0a9cc91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06beb361b52f03367794e45e5258a590c3946fc2e18be6bdf62b7ed07c801bd4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant16a96466620daae72d76a409df2c462180f5b7c98b5065303124d96fb0a9cc91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1571cf5-06b7-3730-8d07-9604a7e9c786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ_neg_one_cochain (z : Cochain F G (-1)) :
    δ (-1) 0 z = Cochain.ofHom (Homotopy.nullHomotopicMap'
      (fun i j hij => z.v i j (by dsimp at hij; rw [← hij, add_neg_cancel_right]))) := by
  ext p
  rw [δ_v (-1) 0 (neg_add_cancel 1) _ p p (add_zero p) (p-1) (p+1) rfl rfl]
  simp only [neg_add_cancel, one_smul, Cochain.ofHom_v, Int.negOnePow_zero]
  rw [Homotopy.nullHomotopicMap'_f (show (ComplexShape.up ℤ).Rel (p-1) p by simp)
    (show (ComplexShape.up ℤ).Rel p (p+1) by simp)]
  abel

end HomComplex

variable (F G)

open HomComplex

/-- The cochain complex of homomorphisms between two cochain complexes `F` and `G`.
In degree `n : ℤ`, it consists of the abelian group `HomComplex.Cochain F G n`. -/
@[simps! X d_hom_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant16a96466620daae72d76a409df2c462180f5b7c98b5065303124d96fb0a9cc91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant16a96466620daae72d76a409df2c462180f5b7c98b5065303124d96fb0a9cc91.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a052e1a37eee0a933b54423bee44aee1f80f3d38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
