# Ideal.comap_map_eq_self_of_faithfullyFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "283c4cf0a956dfeba81e210652ebcc48f2ec51ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b5a0a6e-0501-0529-fb03-9102ac18d6c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:640e85a7-a7b5-cebc-c6be-b0c0ca80b364",
  "kind": "lemma",
  "lexical_name": "Ideal.comap_map_eq_self_of_faithfullyFlat",
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
  "slug": "ideal-comap-map-eq-self-of-faithfullyflat--4b626b3801cb529082880362",
  "source": {
    "blob": "283c4cf0a956dfeba81e210652ebcc48f2ec51ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 107,
    "path": "GRWTSK/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b626b3801cb5290828803622d45be2cd8319d78df5dad2f7931c1658d60f927",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:640e85a7-a7b5-cebc-c6be-b0c0ca80b364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.comap_map_eq_self_of_faithfullyFlat (I : Ideal A) :
    (I.map (algebraMap A B)).comap (algebraMap A B) = I := by
  refine le_antisymm ?_ le_comap_map
  have inj : Function.Injective
      ((quotIdealMapEquivTensorQuot B I).symm.toLinearMap.restrictScalars _ ∘ₗ
        TensorProduct.mk A B (A ⧸ I) 1) := by
    rw [LinearMap.coe_comp, AlgEquiv.toLinearMap, ← LinearEquiv.restrictScalars_toLinearMap]
    exact (LinearEquiv.injective _).comp <|
      Module.FaithfullyFlat.tensorProduct_mk_injective (A ⧸ I)
  intro x hx
  rw [Ideal.mem_comap] at hx
  rw [← Ideal.Quotient.eq_zero_iff_mem] at hx ⊢
  apply inj
  have : ((quotIdealMapEquivTensorQuot B I).symm.toLinearEquiv.toLinearMap.restrictScalars _ ∘ₗ
      TensorProduct.mk A B (A ⧸ I) 1) x = 0 := by
    simp [← Algebra.algebraMap_eq_smul_one, hx]
  simp [this]

/-- If `B` is a faithfully-flat `A`-algebra, every ideal in `A` is the preimage of some ideal
in `B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283c4cf0a956dfeba81e210652ebcc48f2ec51ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
