# LinearMap.lTensor_injective_of_exact_of_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10ee1cdddfba10606249558bc7e1b9babe3f0bd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28fbaa3f-6ba6-6c6e-1cac-f2a11699e762",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a0d04bf-9eac-c390-ec51-7fb9ffafbc9d",
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
  "slug": "linearmap-ltensor-injective-of-exact-of-flat--2a3d21d6405f0c9aaa1bd53b",
  "source": {
    "blob": "10ee1cdddfba10606249558bc7e1b9babe3f0bd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 192,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a3d21d6405f0c9aaa1bd53b17ec8a07d92de9e3f305ef97f30591effeff6c85",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a0d04bf-9eac-c390-ec51-7fb9ffafbc9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–228.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10ee1cdddfba10606249558bc7e1b9babe3f0bd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
