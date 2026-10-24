# quasiIso_iff_of_zeros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "102b74b572c93b23890442689b960c4199ade930",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 836,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5cbee139b9b1701df9d01e2010dcbe54204a24eb21272b0b9196445c5b558ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:199d7237-4c60-0806-1c0a-c5bc94bc3d06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5db6448e-6817-604a-a29b-e5b9259618bd",
  "kind": "lemma",
  "lexical_name": "quasiIso_iff_of_zeros",
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
  "slug": "quasiiso-iff-of-zeros--2bb7452e6ba4c3b9ebc17fd7",
  "source": {
    "blob": "102b74b572c93b23890442689b960c4199ade930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 859,
    "line": 836,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantc5cbee139b9b1701df9d01e2010dcbe54204a24eb21272b0b9196445c5b558ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bb7452e6ba4c3b9ebc17fd73d65542af5d10db1bdbacc2e9b399f7cf039129e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantc5cbee139b9b1701df9d01e2010dcbe54204a24eb21272b0b9196445c5b558ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5db6448e-6817-604a-a29b-e5b9259618bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 836–859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIso_iff_of_zeros {S₁ S₂ : ShortComplex C} (φ : S₁ ⟶ S₂)
    (hf₁ : S₁.f = 0) (hg₁ : S₁.g = 0) (hf₂ : S₂.f = 0) :
    QuasiIso φ ↔
      (ShortComplex.mk φ.τ₂ S₂.g (by rw [φ.comm₂₃, hg₁, zero_comp])).Exact ∧ Mono φ.τ₂ := by
  have w : φ.τ₂ ≫ S₂.g = 0 := by rw [φ.comm₂₃, hg₁, zero_comp]
  rw [quasiIso_iff_isIso_liftCycles φ hf₁ hg₁ hf₂]
  constructor
  · intro h
    have : Mono φ.τ₂ := by
      rw [← S₂.liftCycles_i φ.τ₂ w]
      apply mono_comp
    refine ⟨?_, this⟩
    apply exact_of_f_is_kernel
    exact IsLimit.ofIsoLimit S₂.cyclesIsKernel
      (Fork.ext (asIso (S₂.liftCycles φ.τ₂ w)).symm (by simp))
  · rintro ⟨h₁, h₂⟩
    refine ⟨⟨h₁.lift S₂.iCycles (by simp), ?_, ?_⟩⟩
    · rw [← cancel_mono φ.τ₂, assoc, h₁.lift_f, liftCycles_i, id_comp]
    · rw [← cancel_mono S₂.iCycles, assoc, liftCycles_i, h₁.lift_f, id_comp]

/-- Given a morphism of short complexes `φ : S₁ ⟶ S₂` in an abelian category, if `S₁.g = 0`
(e.g when `S₁` is of the form `S₁.X₁ ⟶ S₁.X₂ ⟶ 0`) and both `S₂.f` and `S₂.g` are zero
(e.g when `S₂` is of the form `0 ⟶ S₂.X₂ ⟶ 0`), then `φ` is a quasi-isomorphism iff
the obvious short complex `S₁.X₂ ⟶ S₁.X₂ ⟶ S₂.X₂` is exact and `φ.τ₂` is an epi). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantc5cbee139b9b1701df9d01e2010dcbe54204a24eb21272b0b9196445c5b558ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantc5cbee139b9b1701df9d01e2010dcbe54204a24eb21272b0b9196445c5b558ef.lean#L836).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `102b74b572c93b23890442689b960c4199ade930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
