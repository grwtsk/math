# Ideal.finite_quotient_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b771f5ea7904b74a840e4457fbbce257ecabadb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4827539e-3a76-deb7-6baa-1834a1db434b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05a4bf1a-3a70-efe8-a635-ca5cc8acafb4",
  "kind": "lemma",
  "lexical_name": "Ideal.finite_quotient_prod",
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
  "slug": "ideal-finite-quotient-prod--d1ede8d4c570f1e8b45e409b",
  "source": {
    "blob": "b771f5ea7904b74a840e4457fbbce257ecabadb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 86,
    "path": "GRWTSK/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1ede8d4c570f1e8b45e409ba6b5092d2ce75d9b4489739c6ca385f9f92dce36",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05a4bf1a-3a70-efe8-a635-ca5cc8acafb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.finite_quotient_prod {ι : Type*} (I : ι → Ideal R) (s : Finset ι)
    (hI : ∀ i ∈ s, (I i).FG) (hI' : ∀ i ∈ s, Finite (R ⧸ I i)) : Finite (R ⧸ (∏ i ∈ s, I i)) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp only [Finset.prod_empty, one_eq_top]; infer_instance
  | insert a s has IH =>
    rw [Finset.prod_insert has, mul_comm]
    have := hI' a (by simp)
    have := IH (fun i hi ↦ hI _ (by simp [hi])) (fun i hi ↦ hI' _ (by simp [hi]))
    exact Submodule.finite_quotient_smul _ (hI a (by simp))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b771f5ea7904b74a840e4457fbbce257ecabadb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
