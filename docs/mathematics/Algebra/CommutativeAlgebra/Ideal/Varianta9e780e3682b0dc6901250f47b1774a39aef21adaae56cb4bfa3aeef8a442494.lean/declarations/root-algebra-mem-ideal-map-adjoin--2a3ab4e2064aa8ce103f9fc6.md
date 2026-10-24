# _root_.Algebra.mem_ideal_map_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59b56e39b35448657a14d285bb52694f3908ceec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c89ca1ff-330d-dce4-feae-cc8b4852c6ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1c90644-7837-36ea-8692-71bbcc2e588a",
  "kind": "lemma",
  "lexical_name": "_root_.Algebra.mem_ideal_map_adjoin",
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
  "slug": "root-algebra-mem-ideal-map-adjoin--2a3ab4e2064aa8ce103f9fc6",
  "source": {
    "blob": "59b56e39b35448657a14d285bb52694f3908ceec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 46,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a3ab4e2064aa8ce103f9fc620c8b8cdd6705aa2947834f6c38dbc857221108b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1c90644-7837-36ea-8692-71bbcc2e588a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Algebra.mem_ideal_map_adjoin {R S : Type*} [CommSemiring R] [Semiring S] [Algebra R S]
    (x : S) (I : Ideal R) {y : adjoin R ({x} : Set S)} :
    y ∈ I.map (algebraMap R (adjoin R ({x} : Set S))) ↔
      ∃ p : R[X], (∀ i, p.coeff i ∈ I) ∧ Polynomial.aeval x p = y := by
  constructor
  · intro H
    induction H using Submodule.span_induction with
    | mem a ha =>
      obtain ⟨a, ha, rfl⟩ := ha
      exact ⟨C a, fun i ↦ by rw [coeff_C]; aesop, aeval_C _ _⟩
    | zero => exact ⟨0, by simp, aeval_zero _⟩
    | add a b ha hb ha' hb' =>
      obtain ⟨a, ha, ha'⟩ := ha'
      obtain ⟨b, hb, hb'⟩ := hb'
      exact ⟨a + b, fun i ↦ by simpa using add_mem (ha i) (hb i), by simp [ha', hb']⟩
    | smul a b hb hb' =>
      obtain ⟨b', hb, hb'⟩ := hb'
      obtain ⟨a, ha⟩ := a
      rw [Algebra.adjoin_singleton_eq_range_aeval] at ha
      obtain ⟨p, hp : aeval x p = a⟩ := ha
      refine ⟨p * b', fun i ↦ ?_, by simp [hp, hb']⟩
      rw [coeff_mul]
      exact sum_mem fun i hi ↦ Ideal.mul_mem_left _ _ (hb _)
  · rintro ⟨p, hp, hp'⟩
    have : y = ∑ i ∈ p.support, p.coeff i • ⟨_, (X ^ i).aeval_mem_adjoin_singleton _ x⟩ := by
      trans ∑ i ∈ p.support, ⟨_, (C (p.coeff i) * X ^ i).aeval_mem_adjoin_singleton _ x⟩
      · ext1
        simp only [AddSubmonoidClass.coe_finset_sum, ← map_sum, ← hp', ← as_sum_support_C_mul_X_pow]
      · congr with i
        simp [Algebra.smul_def]
    simp_rw [this, Algebra.smul_def]
    exact sum_mem fun i _ ↦ Ideal.mul_mem_right _ _ (Ideal.mem_map_of_mem _ (hp i))

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59b56e39b35448657a14d285bb52694f3908ceec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
