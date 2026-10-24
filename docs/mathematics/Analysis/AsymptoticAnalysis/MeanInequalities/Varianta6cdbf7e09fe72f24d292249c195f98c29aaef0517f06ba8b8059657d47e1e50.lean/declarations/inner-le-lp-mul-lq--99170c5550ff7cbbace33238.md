# inner_le_Lp_mul_Lq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bb832774232101bddaad4985ac7ca896646bb97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 721,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91f8dd57-fdbb-4ba0-c7e0-f7cc44593c57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c102f89-d4ab-2c8e-f8eb-ef65a532abb5",
  "kind": "theorem",
  "lexical_name": "inner_le_Lp_mul_Lq",
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
  "slug": "inner-le-lp-mul-lq--99170c5550ff7cbbace33238",
  "source": {
    "blob": "2bb832774232101bddaad4985ac7ca896646bb97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 749,
    "line": 721,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99170c5550ff7cbbace3323804d77195d3e0408b630e2301839658aa3b48b629",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c102f89-d4ab-2c8e-f8eb-ef65a532abb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 721–749.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_le_Lp_mul_Lq (hpq : p.IsConjugateExponent q) :
    ∑ i in s, f i * g i ≤ (∑ i in s, f i ^ p) ^ (1 / p) * (∑ i in s, g i ^ q) ^ (1 / q) := by
  by_cases H : (∑ i in s, f i ^ p) ^ (1 / p) = 0 ∨ (∑ i in s, g i ^ q) ^ (1 / q) = 0
  · replace H : (∀ i ∈ s, f i = 0) ∨ ∀ i ∈ s, g i = 0
    · simpa [ENNReal.rpow_eq_zero_iff, hpq.pos, hpq.symm.pos, asymm hpq.pos, asymm hpq.symm.pos,
        sum_eq_zero_iff_of_nonneg] using H
    have : ∀ i ∈ s, f i * g i = 0 := fun i hi => by cases' H with H H <;> simp [H i hi]
    have : ∑ i in s, f i * g i = ∑ i in s, 0 := sum_congr rfl this
    simp [this]
  push_neg at H
  by_cases H' : (∑ i in s, f i ^ p) ^ (1 / p) = ⊤ ∨ (∑ i in s, g i ^ q) ^ (1 / q) = ⊤
  · cases' H' with H' H' <;> simp [H', -one_div, -sum_eq_zero_iff, -rpow_eq_zero_iff, H]
  replace H' : (∀ i ∈ s, f i ≠ ⊤) ∧ ∀ i ∈ s, g i ≠ ⊤
  · simpa [ENNReal.rpow_eq_top_iff, asymm hpq.pos, asymm hpq.symm.pos, hpq.pos, hpq.symm.pos,
      ENNReal.sum_eq_top_iff, not_or] using H'
  have :=
    ENNReal.coe_le_coe.2
      (@NNReal.inner_le_Lp_mul_Lq _ s (fun i => ENNReal.toNNReal (f i))
        (fun i => ENNReal.toNNReal (g i)) _ _ hpq)
  simp [← ENNReal.coe_rpow_of_nonneg, le_of_lt hpq.pos, le_of_lt hpq.one_div_pos,
    le_of_lt hpq.symm.pos, le_of_lt hpq.symm.one_div_pos] at this
  convert this using 1 <;> [skip; congr 2] <;> [skip; skip; simp; skip; simp] <;>
    · refine Finset.sum_congr rfl fun i hi => ?_
      simp [H'.1 i hi, H'.2 i hi, -WithZero.coe_mul, WithTop.coe_mul.symm]
#align ennreal.inner_le_Lp_mul_Lq ENNReal.inner_le_Lp_mul_Lq

/-- For `1 ≤ p`, the `p`-th power of the sum of `f i` is bounded above by a constant times the
sum of the `p`-th powers of `f i`. Version for sums over finite sets, with `ℝ≥0∞`-valued functions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean#L721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bb832774232101bddaad4985ac7ca896646bb97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
