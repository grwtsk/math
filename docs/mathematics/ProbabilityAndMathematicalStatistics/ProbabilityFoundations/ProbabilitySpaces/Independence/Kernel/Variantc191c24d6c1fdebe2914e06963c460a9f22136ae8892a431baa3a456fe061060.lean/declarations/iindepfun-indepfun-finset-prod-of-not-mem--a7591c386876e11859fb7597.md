# iIndepFun.indepFun_finset_prod_of_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb720a5629710180fcd3c206acbe3275cdb76d94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 868,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db238f1b-660e-b152-8223-90719f4166dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11b33a86-b4fb-11cd-44e6-acfeeffd24ec",
  "kind": "theorem",
  "lexical_name": "iIndepFun.indepFun_finset_prod_of_not_mem",
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
  "slug": "iindepfun-indepfun-finset-prod-of-not-mem--a7591c386876e11859fb7597",
  "source": {
    "blob": "bb720a5629710180fcd3c206acbe3275cdb76d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 891,
    "line": 868,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7591c386876e11859fb7597853b652c3f16212fcc64f0178735a09c5cb1a414",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11b33a86-b4fb-11cd-44e6-acfeeffd24ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 868–891.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepFun.indepFun_finset_prod_of_not_mem [IsMarkovKernel κ] {ι : Type*} {β : Type*}
    {m : MeasurableSpace β} [CommMonoid β] [MeasurableMul₂ β] {f : ι → Ω → β}
    (hf_Indep : iIndepFun (fun _ => m) f κ μ) (hf_meas : ∀ i, Measurable (f i))
    {s : Finset ι} {i : ι} (hi : i ∉ s) :
    IndepFun (∏ j in s, f j) (f i) κ μ := by
  classical
  have h_right : f i =
    (fun p : ∀ _j : ({i} : Finset ι), β => p ⟨i, Finset.mem_singleton_self i⟩) ∘
    fun a (j : ({i} : Finset ι)) => f j a := rfl
  have h_meas_right : Measurable fun p : ∀ _j : ({i} : Finset ι), β
    => p ⟨i, Finset.mem_singleton_self i⟩ := measurable_pi_apply ⟨i, Finset.mem_singleton_self i⟩
  have h_left : ∏ j in s, f j = (fun p : ∀ _j : s, β => ∏ j, p j) ∘ fun a (j : s) => f j a := by
    ext1 a
    simp only [Function.comp_apply]
    have : (∏ j : ↥s, f (↑j) a) = (∏ j : ↥s, f ↑j) a := by rw [Finset.prod_apply]
    rw [this, Finset.prod_coe_sort]
  have h_meas_left : Measurable fun p : ∀ _j : s, β => ∏ j, p j :=
    Finset.univ.measurable_prod fun (j : ↥s) (_H : j ∈ Finset.univ) => measurable_pi_apply j
  rw [h_left, h_right]
  exact
    (hf_Indep.indepFun_finset s {i} (Finset.disjoint_singleton_left.mpr hi).symm hf_meas).comp
      h_meas_left h_meas_right

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean#L868).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb720a5629710180fcd3c206acbe3275cdb76d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
