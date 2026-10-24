# young_inequality

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
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d3e35df-3da6-06b4-3367-27aa8b662b89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a87f48e-ca28-4c6f-18c2-0f04d30a27f7",
  "kind": "theorem",
  "lexical_name": "young_inequality",
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
  "slug": "young-inequality--31387f4b859c81cea763baed",
  "source": {
    "blob": "2bb832774232101bddaad4985ac7ca896646bb97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 293,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31387f4b859c81cea763baededf626b281f27097e0d6e912b7731df3905dd73d",
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

Occurrence: `result:5a87f48e-ca28-4c6f-18c2-0f04d30a27f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem young_inequality (a b : ℝ≥0∞) {p q : ℝ} (hpq : p.IsConjugateExponent q) :
    a * b ≤ a ^ p / ENNReal.ofReal p + b ^ q / ENNReal.ofReal q := by
  by_cases h : a = ⊤ ∨ b = ⊤
  · refine' le_trans le_top (le_of_eq _)
    repeat rw [div_eq_mul_inv]
    cases' h with h h <;> rw [h] <;> simp [h, hpq.pos, hpq.symm.pos]
  push_neg at h
  -- if a ≠ ⊤ and b ≠ ⊤, use the nnreal version: nnreal.young_inequality_real
  rw [← coe_toNNReal h.left, ← coe_toNNReal h.right, ← coe_mul, coe_rpow_of_nonneg _ hpq.nonneg,
    coe_rpow_of_nonneg _ hpq.symm.nonneg, ENNReal.ofReal, ENNReal.ofReal, ←
    @coe_div (Real.toNNReal p) _ (by simp [hpq.pos]), ←
    @coe_div (Real.toNNReal q) _ (by simp [hpq.symm.pos]), ← coe_add, coe_le_coe]
  exact NNReal.young_inequality_real a.toNNReal b.toNNReal hpq
#align ennreal.young_inequality ENNReal.young_inequality

end ENNReal

end Young

section HolderMinkowski

/-! ### Hölder's and Minkowski's inequalities -/


namespace NNReal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bb832774232101bddaad4985ac7ca896646bb97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
