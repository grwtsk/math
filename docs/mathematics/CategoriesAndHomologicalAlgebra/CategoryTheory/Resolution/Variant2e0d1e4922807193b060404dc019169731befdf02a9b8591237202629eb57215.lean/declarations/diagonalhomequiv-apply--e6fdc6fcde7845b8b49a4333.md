# diagonalHomEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3570308f26fded0a318ea88af745cdbd1aac610",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2074c5a4-b620-781d-d2d3-d9d8483f9f6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42010531-2869-018d-f173-7cb8e6aa79b8",
  "kind": "theorem",
  "lexical_name": "diagonalHomEquiv_apply",
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
  "slug": "diagonalhomequiv-apply--e6fdc6fcde7845b8b49a4333",
  "source": {
    "blob": "d3570308f26fded0a318ea88af745cdbd1aac610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 299,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6fdc6fcde7845b8b49a4333138200cfd5d84fff248c89abe7f0fd105ac952a4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42010531-2869-018d-f173-7cb8e6aa79b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalHomEquiv_apply (f : Rep.diagonal k G (n + 1) ⟶ A) (x : Fin n → G) :
    diagonalHomEquiv n A f x = f.hom (Finsupp.single (Fin.partialProd x) 1) := by
/- Porting note (https://github.com/leanprover-community/mathlib4/issues/11039): broken proof was
  unfold diagonalHomEquiv
  simpa only [LinearEquiv.trans_apply, Rep.leftRegularHomEquiv_apply,
    MonoidalClosed.linearHomEquivComm_hom, Finsupp.llift_symm_apply, TensorProduct.curry_apply,
    Linear.homCongr_apply, Iso.refl_hom, Iso.trans_inv, Action.comp_hom, ModuleCat.comp_def,
    LinearMap.comp_apply, Representation.repOfTprodIso_inv_apply,
    diagonalSucc_inv_single_single (1 : G) x, one_smul, one_mul] -/
  change f.hom ((diagonalSucc k G n).inv.hom (Finsupp.single 1 1 ⊗ₜ[k] Finsupp.single x 1)) = _
  rw [diagonalSucc_inv_single_single, one_smul, one_mul]

/-- Given a `k`-linear `G`-representation `A`, `diagonalHomEquiv` is a `k`-linear isomorphism of
the set of representation morphisms `Hom(k[Gⁿ⁺¹], A)` with `Fun(Gⁿ, A)`. This lemma says that the
inverse map sends a function `f : Gⁿ → A` to the representation morphism sending
`(g₀, ... gₙ) ↦ ρ(g₀)(f(g₀⁻¹g₁, g₁⁻¹g₂, ..., gₙ₋₁⁻¹gₙ))`, where `ρ` is the representation attached
to `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3570308f26fded0a318ea88af745cdbd1aac610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
