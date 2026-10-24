# IsStableUnderBaseChange.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae7717b5ea7daa8300cf1d3764a7059b2d7a0b9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b6181f7-2bf4-45cf-2d73-5035121a8a21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9201909b-6a0a-a9fa-88e7-8ff57df87d1c",
  "kind": "theorem",
  "lexical_name": "IsStableUnderBaseChange.mk",
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
  "slug": "isstableunderbasechange-mk--a25cf153e57e38a55031dc5c",
  "source": {
    "blob": "ae7717b5ea7daa8300cf1d3764a7059b2d7a0b9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 137,
    "path": "GRWTSK/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a25cf153e57e38a55031dc5c1e99f1f25dd86b9abaa68c25304680cc3e269f7e",
  "verification": {
    "reference": "docs/verification/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9201909b-6a0a-a9fa-88e7-8ff57df87d1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsStableUnderBaseChange.mk (h₁ : RespectsIso @P)
    (h₂ :
      ∀ ⦃R S T⦄ [CommRing R] [CommRing S] [CommRing T],
        ∀ [Algebra R S] [Algebra R T],
          P (algebraMap R T) →
            P (Algebra.TensorProduct.includeLeftRingHom : S →+* TensorProduct R S T)) :
    IsStableUnderBaseChange @P := by
  introv R h H
  let e := h.symm.1.equiv
  let f' :=
    Algebra.TensorProduct.productMap (IsScalarTower.toAlgHom R R' S')
      (IsScalarTower.toAlgHom R S S')
  have : ∀ x, e x = f' x := by
    intro x
    change e.toLinearMap.restrictScalars R x = f'.toLinearMap x
    congr 1
    apply TensorProduct.ext'
    intro x y
    simp [e, f', IsBaseChange.equiv_tmul, Algebra.smul_def]
  -- Porting Note: This had a lot of implicit inferences which didn't resolve anymore.
  -- Added those in
  convert h₁.1 (_ : R' →+* TensorProduct R R' S) (_ : TensorProduct R R' S ≃+* S')
      (h₂ H : P (_ : R' →+* TensorProduct R R' S))
  swap
  · refine { e with map_mul' := fun x y => ?_ }
    change e (x * y) = e x * e y
    simp_rw [this]
    exact map_mul f' _ _
  · ext x
    change _ = e (x ⊗ₜ[R] 1)
    -- Porting note: Had `dsimp only [e]` here, which didn't work anymore
    rw [h.symm.1.equiv_tmul, Algebra.smul_def, AlgHom.toLinearMap_apply, map_one, mul_one]

attribute [local instance] Algebra.TensorProduct.rightAlgebra

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae7717b5ea7daa8300cf1d3764a7059b2d7a0b9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
