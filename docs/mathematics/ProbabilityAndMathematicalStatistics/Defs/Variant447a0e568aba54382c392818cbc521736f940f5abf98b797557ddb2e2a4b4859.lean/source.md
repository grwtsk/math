# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.Defs.Variant447a0e568aba54382c392818cbc521736f940f5abf98b797557ddb2e2a4b4859

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78813ba78f0ee25c22b402d15c713621262843db` · SHA-256 `300bb13b2f915dbeaa8c72e4cde1086f0e8ef1739759325d1294a10b5f7926ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.BinomialRandom.Variant0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.BinomialRandom.Variant0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Probability/Combinatorics/BinomialRandomGraph/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Data.Sym.Card
public import Mathlib.MeasureTheory.Constructions.SimpleGraph
public import Mathlib.Probability.Distributions.SetBernoulli

/-!
# Binomial random graphs

This file constructs the binomial distribution with parameter `p` on simple graphs with
vertices `V`. This is the law `G(V, p)` of binomial random graphs with probability `p`.

## TODO

Add the characteristic predicate for a random graph to follow the binomial random distribution.

## Historical note

This is usually called the Erdős–Rényi model, but this name is historically inaccurate as Erdős and
Rényi introduced a closely related but different model. We therefore choose the name
"binomial random graph" to avoid confusion with this other model and because it is a more
descriptive name.

## Tags

Erdős-Rényi graph, Erdős-Renyi graph, Erdös-Rényi graph, Erdös-Renyi graph, Erdos-Rényi graph,
Erdos-Renyi graph
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.BinomialRandom.Variant0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e

public section

open MeasureTheory Measure ProbabilityTheory unitInterval
open scoped Finset

namespace SimpleGraph
variable {V : Type*} {p : I}

variable (V p) in
/-- The binomial distribution with parameter `p` on simple graphs with vertices `V`. -/
@[expose]
noncomputable def binomialRandom : Measure (SimpleGraph V) :=
  setBer(Sym2.diagSetᶜ, p).comap edgeSet

@[inherit_doc] scoped notation "G(" V ", " p ")" => binomialRandom V p

section Countable
variable [Countable V]

variable (V p) in
lemma binomialRandom_eq_map : G(V, p) = map fromEdgeSet setBer(Sym2.diagSetᶜ, p) := by
  refine (map_eq_comap measurable_fromEdgeSet measurableEmbedding_edgeSet ?_
    fromEdgeSet_edgeSet).symm
  filter_upwards [setBernoulli_ae_subset] with S hS
  exact ⟨fromEdgeSet S, by simpa [← Set.compl_ofPred, Set.subset_compl_iff_disjoint_right] using hS⟩

variable (p) in
lemma binomialRandom_apply' (S : Set (SimpleGraph V)) :
    G(V, p) S = setBer(Sym2.diagSetᶜ, p) (edgeSet '' S) := by
  rw [binomialRandom, measurableEmbedding_edgeSet.comap_apply]

variable (p) in
lemma binomialRandom_apply (S : Set (SimpleGraph V)) :
    G(V, p) S = infinitePi (fun e : Sym2 V ↦ Ber(¬ e.IsDiag, False, p))
      ((fun G e ↦ e ∈ G.edgeSet) '' S) := by
  simp [binomialRandom_apply', setBernoulli_apply, ← Set.image_comp]

instance : IsProbabilityMeasure G(V, p) := by
  refine measurableEmbedding_edgeSet.isProbabilityMeasure_comap ?_
  filter_upwards [setBernoulli_ae_subset] with s hs
  refine ⟨.fromEdgeSet s, ?_⟩
  simpa [← Set.disjoint_compl_right_iff_subset, ← Set.compl_ofPred] using hs

variable (V) in
@[simp] lemma binomialRandom_zero : G(V, 0) = dirac ⊥ := by simp [binomialRandom_eq_map]

variable (V) in
@[simp] lemma binomialRandom_one : G(V, 1) = dirac ⊤ := by simp [binomialRandom_eq_map]

end Countable

variable (p) in
@[simp] lemma binomialRandom_singleton [Finite V] (G : SimpleGraph V) :
    G(V, p) {G} = toNNReal p ^ G.edgeSet.ncard *
      toNNReal (σ p) ^ ((Nat.card V).choose 2 - G.edgeSet.ncard) := by
  classical
  cases nonempty_fintype V
  simp only [binomialRandom, measurableEmbedding_edgeSet.comap_apply, Set.image_singleton,
    edgeSet_subset_compl_diagSet, setBernoulli_singleton, Set.toFinite]
  rw [Set.ncard_sdiff (by simp)]
  congr!
  rw [Nat.card_eq_fintype_card, ← Sym2.card_diagSet_compl, Fintype.card_eq_nat_card,
    ← Nat.card_coe_set_eq]

end SimpleGraph
```
