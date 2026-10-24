# ofTensorProduct_surjective_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09f27b1ee2fcdcc2d248b1f88ba8d724ca33ac15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e96fce3-8b62-0405-edca-fd11f1280481",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8224b436-84c1-3fc5-300e-1f9121ced0d7",
  "kind": "lemma",
  "lexical_name": "ofTensorProduct_surjective_of_finite",
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
  "slug": "oftensorproduct-surjective-of-finite--393eee06961140d02c13f566",
  "source": {
    "blob": "09f27b1ee2fcdcc2d248b1f88ba8d724ca33ac15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 154,
    "path": "GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:393eee06961140d02c13f566e58bde1e1b1012c86e515fdbf6e96e95f1a96fcd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8224b436-84c1-3fc5-300e-1f9121ced0d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma ofTensorProduct_surjective_of_finite [Module.Finite R M] :
    Function.Surjective (ofTensorProduct I M) := by
  obtain ⟨n, p, hp⟩ := Module.Finite.exists_fin' R M
  let f := ofTensorProduct I M ∘ₗ p.baseChange (AdicCompletion I R)
  let g := map I p ∘ₗ ofTensorProduct I (Fin n → R)
  have hfg : f = g := by
    ext
    simp [f, g]
  have hf : Function.Surjective f := by
    simp only [hfg, LinearMap.coe_comp, g]
    apply Function.Surjective.comp
    · exact AdicCompletion.map_surjective I hp
    · exact (ofTensorProduct_bijective_of_pi_of_fintype I (Fin n)).surjective
  exact Function.Surjective.of_comp hf

section Noetherian

variable {R : Type u} [CommRing R] (I : Ideal R)
variable (M : Type u) [AddCommGroup M] [Module R M]

/-!

### Noetherian case

Suppose `R` is Noetherian. Then we show that the canonical map
`AdicCompletion I R ⊗[R] M →ₗ[AdicCompletion I R] AdicCompletion I M` is an isomorphism for every
finite `R`-module `M`.

The strategy is the following: Choose a surjection `f : (ι → R) →ₗ[R] M` and consider the following
commutative diagram:

```
 AdicCompletion I R ⊗[R] ker f -→ AdicCompletion I R ⊗[R] (ι → R) -→ AdicCompletion I R ⊗[R] M -→ 0
               |                             |                                 |                  |
               ↓                             ↓                                 ↓                  ↓
    AdicCompletion I (ker f) ------→ AdicCompletion I (ι → R) -------→ AdicCompletion I M ------→ 0
```

The vertical maps are given by `ofTensorProduct`. By the previous section we know that the second
vertical map is an isomorphism. Since `R` is Noetherian, `ker f` is finitely-generated, so again
by the previous section the first vertical map is surjective.

Moreover, both rows are exact by right-exactness of the tensor product and exactness of adic
completions over Noetherian rings. Hence we conclude by the 5-lemma.

-/

open CategoryTheory

section

variable {ι : Type} (f : (ι → R) →ₗ[R] M)

/- The first horizontal arrow in the top row. -/
private
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variant6dbb69f2b1f94aeed9400f108b22982c4808037af14f90de43d5d0fa51f413c9.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09f27b1ee2fcdcc2d248b1f88ba8d724ca33ac15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
