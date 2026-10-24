# norm_eq_of_equiv_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9235c3cdc1d3618835c4d2a19324089d9abcd5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a748469-eb7a-15bb-e066-87ec5d300581",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d367615-e2f0-0e3b-9b3c-e45d4a36abdc",
  "kind": "lemma",
  "lexical_name": "norm_eq_of_equiv_equiv",
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
  "slug": "norm-eq-of-equiv-equiv--3e9470829dce7ec70a869c79",
  "source": {
    "blob": "e9235c3cdc1d3618835c4d2a19324089d9abcd5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 272,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e9470829dce7ec70a869c7995a9e31c0f985566ac555c848412b876bd1a2f15",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d367615-e2f0-0e3b-9b3c-e45d4a36abdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_eq_of_equiv_equiv {A₁ B₁ A₂ B₂ : Type*} [CommRing A₁] [Ring B₁]
    [CommRing A₂] [Ring B₂] [Algebra A₁ B₁] [Algebra A₂ B₂] (e₁ : A₁ ≃+* A₂) (e₂ : B₁ ≃+* B₂)
    (he : RingHom.comp (algebraMap A₂ B₂) ↑e₁ = RingHom.comp ↑e₂ (algebraMap A₁ B₁)) (x) :
    Algebra.norm A₁ x = e₁.symm (Algebra.norm A₂ (e₂ x)) := by
  letI := (RingHom.comp (e₂ : B₁ →+* B₂) (algebraMap A₁ B₁)).toAlgebra' ?_
  · let e' : B₁ ≃ₐ[A₁] B₂ := { e₂ with commutes' := fun _ ↦ rfl }
    rw [← Algebra.norm_eq_of_ringEquiv e₁ he, ← Algebra.norm_eq_of_algEquiv e']
    simp [e']
  intros c x
  apply e₂.symm.injective
  simp only [RingHom.coe_comp, RingHom.coe_coe, Function.comp_apply, map_mul,
    RingEquiv.symm_apply_apply, commutes]

end EqProdEmbeddings

end Algebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9235c3cdc1d3618835c4d2a19324089d9abcd5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
