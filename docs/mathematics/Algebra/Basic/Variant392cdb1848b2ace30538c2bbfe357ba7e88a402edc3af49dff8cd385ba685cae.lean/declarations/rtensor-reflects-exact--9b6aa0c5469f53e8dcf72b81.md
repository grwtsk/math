# rTensor_reflects_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dda4a72d32e3af50005b49613d390269e6ecbca8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90ef56d8-a0f8-35bb-1564-89693e89c380",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:834d2190-2b2f-ecc7-c9dc-b77063162680",
  "kind": "lemma",
  "lexical_name": "rTensor_reflects_exact",
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
  "slug": "rtensor-reflects-exact--9b6aa0c5469f53e8dcf72b81",
  "source": {
    "blob": "dda4a72d32e3af50005b49613d390269e6ecbca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 318,
    "path": "GRWTSK/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b6aa0c5469f53e8dcf72b81b8c0748971c75822d492e842880ec8b7e44d4559",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:834d2190-2b2f-ecc7-c9dc-b77063162680`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rTensor_reflects_exact [fl : FaithfullyFlat R M]
    (ex : Function.Exact (l12.rTensor M) (l23.rTensor M)) :
    Function.Exact l12 l23 := LinearMap.exact_iff.2 <| by
  have complex : LinearMap.range l12 ≤ LinearMap.ker l23 := range_le_ker_of_exact_rTensor R M _ _ ex
  -- By the previous lemma we have that range l12 ≤ ker l23 and hence the quotient
  -- H := ker l23 ⧸ range l12 makes sense.
  -- Hence our goal ker l23 = range l12 follows from the claim that H = 0.
  let H := LinearMap.ker l23 ⧸ LinearMap.range (Submodule.inclusion complex)
  suffices triv_coh : Subsingleton H by
    rw [Submodule.Quotient.subsingleton_iff, Submodule.range_inclusion,
      Submodule.comap_subtype_eq_top] at triv_coh
    exact le_antisymm triv_coh complex
  -- Since `M` is faithfully flat, we need only to show that `H ⊗ M` is trivial.
  suffices Subsingleton (H ⊗[R] M) from rTensor_reflects_triviality R M H
  let e : H ⊗[R] M ≃ₗ[R] _ := TensorProduct.quotientTensorEquiv _ _
  -- Note that `H ⊗ M` is isomorphic to `ker l12 ⊗ M ⧸ range ((range l12 ⊗ M) -> (ker l23 ⊗ M))`.
  -- So the problem is reduced to proving surjectivity of `range l12 ⊗ M → ker l23 ⊗ M`.
  rw [e.toEquiv.subsingleton_congr, Submodule.Quotient.subsingleton_iff,
    LinearMap.range_eq_top]
  intro x
  induction x using TensorProduct.inductionOn with
  -- let `x ⊗ m` be an element in `ker l23 ⊗ M`, then `x ⊗ m` is in the kernel of `l23 ⊗ 𝟙M`.
  -- Since `N1 ⊗ M -l12 ⊗ M-> N2 ⊗ M -l23 ⊗ M-> N3 ⊗ M` is exact, we have that `x ⊗ m` is in
  -- the range of `l12 ⊗ 𝟙M`, i.e. `x ⊗ m = (l12 ⊗ 𝟙M) y` for some `y ∈ N1 ⊗ M` as elements of
  -- `N2 ⊗ M`. We need to prove that `x ⊗ m = (l12 ⊗ 𝟙M) y` still holds in `(ker l23) ⊗ M`.
  -- This is okay because `M` is flat and `ker l23 -> N2` is injective.
  | tmul x m =>
    rcases x with ⟨x, (hx : l23 x = 0)⟩
    have mem : x ⊗ₜ[R] m ∈ LinearMap.ker (l23.rTensor M) := by simp [hx]
    rw [LinearMap.exact_iff.1 ex] at mem
    obtain ⟨y, hy⟩ := mem
    refine ⟨LinearMap.rTensor M (LinearMap.rangeRestrict _ ∘ₗ LinearMap.rangeRestrict l12) y,
      Module.Flat.rTensor_preserves_injective_linearMap (LinearMap.ker l23).subtype
      Subtype.val_injective ?_⟩
    simp only [LinearMap.comp_codRestrict, LinearMap.rTensor_tmul, Submodule.coe_subtype, ← hy]
    rw [← LinearMap.comp_apply, ← LinearMap.rTensor_def, ← LinearMap.rTensor_comp,
      ← LinearMap.comp_apply, ← LinearMap.rTensor_comp, LinearMap.comp_assoc,
      LinearMap.subtype_comp_codRestrict, ← LinearMap.comp_assoc, Submodule.subtype_comp_inclusion,
      LinearMap.subtype_comp_codRestrict]
  | add x y hx hy =>
    obtain ⟨x, rfl⟩ := hx; obtain ⟨y, rfl⟩ := hy
    exact ⟨x + y, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dda4a72d32e3af50005b49613d390269e6ecbca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
