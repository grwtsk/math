# fieldEndOfFiniteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8721fe84cadef0f295a2a88c6fe5b001a330923413ed7b15407bda90df3095c",
  "kind": "def",
  "lexical_name": "fieldEndOfFiniteDimensional",
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
  "slug": "fieldendoffinitedimensional--351769981f01854d4d2c056d",
  "source": {
    "blob": "fd804d0e4464fa91fe486a90f064ad894a24b1ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:351769981f01854d4d2c056d6a0a756bd82667765af0c5a4a088ef777b1b8650",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8721fe84cadef0f295a2a88c6fe5b001a330923413ed7b15407bda90df3095c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fieldEndOfFiniteDimensional (X : C) [Simple X] [I : FiniteDimensional 𝕜 (X ⟶ X)] :
    Field (End X) := by
  classical exact
    { (inferInstance : DivisionRing (End X)) with
      mul_comm := fun f g => by
        obtain ⟨c, rfl⟩ := endomorphism_simple_eq_smul_id 𝕜 f
        obtain ⟨d, rfl⟩ := endomorphism_simple_eq_smul_id 𝕜 g
        simp [← mul_smul, mul_comm c d] }

-- There is a symmetric argument that uses `[FiniteDimensional 𝕜 (Y ⟶ Y)]` instead,
-- but we don't bother proving that here.
/-- **Schur's lemma** for `𝕜`-linear categories:
if hom spaces are finite dimensional, then the hom space between simples is at most 1-dimensional.

See `finrank_hom_simple_simple_eq_one_iff` and `finrank_hom_simple_simple_eq_zero_iff` below
for the refinements when we know whether or not the simples are isomorphic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd804d0e4464fa91fe486a90f064ad894a24b1ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
