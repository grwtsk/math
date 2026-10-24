# iIndepFun.indepFun_finset₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8780ab9b4f32c50c2eb25780f1395e87224e69d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9055fe6e-8e62-67d6-533c-675622b09bcb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d78d4fb-05b7-40d5-d0c5-5bdbd3b18921",
  "kind": "theorem",
  "lexical_name": "iIndepFun.indepFun_finset₀",
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
  "slug": "iindepfun-indepfun-finset--0fd937843f6e8b8a22e08b1e",
  "source": {
    "blob": "e8780ab9b4f32c50c2eb25780f1395e87224e69d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 416,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variantb070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fd937843f6e8b8a22e08b1e626af1e39de5047f4b2d9bec6d59f316f006a8cc",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variantb070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d78d4fb-05b7-40d5-d0c5-5bdbd3b18921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepFun.indepFun_finset₀ (S T : Finset ι) (hST : Disjoint S T)
    (hf_Indep : iIndepFun f κ μ) (hf_meas : ∀ i, AEMeasurable (f i) (κ ∘ₘ μ)) :
    IndepFun (fun a (i : S) ↦ f i a) (fun a (i : T) ↦ f i a) κ μ := by
  have h : IndepFun (fun a (i : S) ↦ (hf_meas i).mk (f i) a)
      (fun a (i : T) ↦ (hf_meas i).mk (f i) a) κ μ := by
    refine iIndepFun.indepFun_finset S T hST ?_ fun i ↦ (hf_meas i).measurable_mk
    exact iIndepFun.congr' hf_Indep fun i ↦ Measure.ae_ae_of_ae_comp (hf_meas i).ae_eq_mk
  refine IndepFun.congr' h ?_ ?_
  · have : ∀ᵐ (a : α) ∂μ, ∀ (i : S), f i =ᵐ[κ a] (hf_meas i).mk := by
      rw [ae_all_iff]
      exact fun i ↦ Measure.ae_ae_of_ae_comp (hf_meas i).ae_eq_mk
    filter_upwards [this] with a ha
    filter_upwards [ae_all_iff.2 ha] with b hb
    ext i
    exact (hb i).symm
  · have : ∀ᵐ (a : α) ∂μ, ∀ (i : T), f i =ᵐ[κ a] (hf_meas i).mk := by
      rw [ae_all_iff]
      exact fun i ↦ Measure.ae_ae_of_ae_comp (hf_meas i).ae_eq_mk
    filter_upwards [this] with a ha
    filter_upwards [ae_all_iff.2 ha] with b hb
    ext i
    exact (hb i).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variantb070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variantb070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8780ab9b4f32c50c2eb25780f1395e87224e69d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
