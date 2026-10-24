# LinearMap.lTensor_injective_of_exact_of_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e49ee23e-abda-2ef3-88d8-be31ad95801b",
  "kind": "lemma",
  "lexical_name": "LinearMap.lTensor_injective_of_exact_of_flat",
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
  "slug": "linearmap-ltensor-injective-of-exact-of-flat--55658c61b1f089491e90654c",
  "source": {
    "blob": "e0afaf8f1a3a3dd01cac113b1ad03d09aee8909a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 200,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant4f821b600ce1b6edd751bea552bdee0443df58c8e545f7477e231e979fb850f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55658c61b1f089491e90654c3314d517b2b9be4e58a8b04f472979c236104c3f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equalizer/Variant4f821b600ce1b6edd751bea552bdee0443df58c8e545f7477e231e979fb850f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e49ee23e-abda-2ef3-88d8-be31ad95801b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma LinearMap.lTensor_injective_of_exact_of_flat [Module.Flat R P]
    (f : N →ₗ[R] P) (hf : Function.Surjective f) (g : M →ₗ[R] N) (hg : Function.Injective g)
    (H : Function.Exact g f) (A : Type*) [AddCommGroup A] [Module R A] :
    Function.Injective (g.lTensor A) := by
/-
The proof is taking a resolution `0 → K → Q → A → 0` with `Q` flat,
and applying snake lemma on the following diagram to
```
                      0
                      ↓
    K ⊗ M → K ⊗ N → K ⊗ P → 0
      ↓       ↓       ↓
0 → Q ⊗ M → Q ⊗ N → Q ⊗ P
      ↓       ↓
    A ⊗ M → A ⊗ N
      ↓       ↓
      0       0
```
to get `0 → A ⊗ K → A ⊗ M` exact.
-/
  let Q := A →₀ R
  let π : Q →ₗ[R] A := Finsupp.linearCombination R fun a ↦ a
  have hπ : Function.Surjective π := Finsupp.linearCombination_surjective _ Function.surjective_id
  let K := LinearMap.ker π
  have := SnakeLemma.exact_δ'_left (K.subtype.rTensor M) (K.subtype.rTensor N) (K.subtype.rTensor P)
    (g.lTensor K) (f.lTensor K) (lTensor_exact K H hf) (g.lTensor Q) (f.lTensor Q)
    (lTensor_exact Q H hf) (by simp) (by simp) (K₃ := Unit) 0
    (by simpa using Module.Flat.rTensor_preserves_injective_linearMap _ K.subtype_injective)
    (π.rTensor M) (rTensor_exact _ (exact_subtype_ker_map π) hπ) (π.rTensor N)
    (rTensor_exact _ (exact_subtype_ker_map π) hπ) (lTensor_surjective K hf)
    (Module.Flat.lTensor_preserves_injective_linearMap _ hg) (g.lTensor A)
    (by simp) (rTensor_surjective _ hπ)
  rw [Subsingleton.elim (SnakeLemma.δ' ..) 0] at this
  simpa using this

/-- Given surjection `f : N → P` with `P` flat, then `A ⊗ ker f ≃ ker (A ⊗ f)`.
Also see `LinearMap.tensorKerEquiv` for the version with `A` flat instead. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equalizer/Variant4f821b600ce1b6edd751bea552bdee0443df58c8e545f7477e231e979fb850f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant4f821b600ce1b6edd751bea552bdee0443df58c8e545f7477e231e979fb850f7.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0afaf8f1a3a3dd01cac113b1ad03d09aee8909a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
