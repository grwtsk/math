# irreducible_mul_X_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "743a164c8b8c6bad9b9141f290845d6229486268",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1ad1929d6a819a178551057fdc4c11aa7877cc14b0daaa5d90a4361492aa684f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:832e9b3d-0f35-8f3f-0c11-76519f0aa2b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34e5c72b-7215-52c9-2d3e-b80a1bdce894",
  "kind": "lemma",
  "lexical_name": "irreducible_mul_X_add",
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
  "slug": "irreducible-mul-x-add--436b8592cab8abae525ce36f",
  "source": {
    "blob": "743a164c8b8c6bad9b9141f290845d6229486268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 70,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant1ad1929d6a819a178551057fdc4c11aa7877cc14b0daaa5d90a4361492aa684f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:436b8592cab8abae525ce36f2148a463e9d4e86522a2898dd7d2a305fed16f73",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant1ad1929d6a819a178551057fdc4c11aa7877cc14b0daaa5d90a4361492aa684f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34e5c72b-7215-52c9-2d3e-b80a1bdce894`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma irreducible_mul_X_add {n : Type*} {R : Type*} [CommRing R] [IsDomain R]
    (f g : MvPolynomial n R) (i : n) (hf0 : f ≠ 0) (hif : i ∉ f.vars) (hig : i ∉ g.vars)
    (h : IsRelPrime f g) :
    Irreducible (f * X i + g) := by
  classical
  let S := MvPolynomial { j // j ≠ i } R
  let e : MvPolynomial n R ≃ₐ[R] S[X] :=
    (renameEquiv R (Equiv.optionSubtypeNe i).symm).trans (optionEquivLeft R _)
  have he : e.symm.toAlgHom.comp Polynomial.CAlgHom = rename (↑) := by ext; simp [e, S]
  obtain ⟨f, rfl⟩ : f ∈ (e.symm.toAlgHom.comp Polynomial.CAlgHom).range :=
    he ▸ exists_rename_eq_of_vars_subset_range _ _ Subtype.val_injective (by simpa [Set.subset_def])
  obtain ⟨g, rfl⟩ : g ∈ (e.symm.toAlgHom.comp Polynomial.CAlgHom).range :=
    he ▸ exists_rename_eq_of_vars_subset_range _ _ Subtype.val_injective (by simpa [Set.subset_def])
  refine .of_map (f := e) ?_
  simpa [e, S] using Polynomial.irreducible_C_mul_X_add_C (by aesop)
    (IsRelPrime.of_map Polynomial.C (IsRelPrime.of_map e.symm h))

/-- A multivariate polynomial `f` whose support is nontrivial,
such that some variable `i` appears with exponent `1` in one nontrivial monomial,
whose monomials have disjoint supports, and which is primitive, is irreducible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant1ad1929d6a819a178551057fdc4c11aa7877cc14b0daaa5d90a4361492aa684f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant1ad1929d6a819a178551057fdc4c11aa7877cc14b0daaa5d90a4361492aa684f.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743a164c8b8c6bad9b9141f290845d6229486268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
