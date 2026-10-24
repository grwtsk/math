-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SeqCompactSpace.Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SeqCompactSpace.Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8","mathematical_subject":"Topology.GeneralTopology","original_sha256":"bbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Defs/Sequences.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Jan-David Salchow. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jan-David Salchow, Patrick Massot, Yury Kudryashov
-/
import Mathlib.Order.Filter.AtTopBot.Defs
import Mathlib.Topology.Defs.Filter

/-!
# Sequences in topological spaces

In this file we define sequential closure, continuity, compactness etc.

## Main definitions

### Set operation
* `seqClosure s`: sequential closure of a set, the set of limits of sequences of points of `s`;

### Predicates

* `IsSeqClosed s`: predicate saying that a set is sequentially closed, i.e., `seqClosure s ⊆ s`;
* `SeqContinuous f`: predicate saying that a function is sequentially continuous, i.e.,
  for any sequence `u : ℕ → X` that converges to a point `x`, the sequence `f ∘ u` converges to
  `f x`;
* `IsSeqCompact s`: predicate saying that a set is sequentially compact, i.e., every sequence
  taking values in `s` has a converging subsequence.

### Type classes

* `FrechetUrysohnSpace X`: a typeclass saying that a topological space is a *Fréchet-Urysohn
  space*, i.e., the sequential closure of any set is equal to its closure.
* `SequentialSpace X`: a typeclass saying that a topological space is a *sequential space*, i.e.,
  any sequentially closed set in this space is closed. This condition is weaker than being a
  Fréchet-Urysohn space.
* `SeqCompactSpace X`: a typeclass saying that a topological space is sequentially compact, i.e.,
  every sequence in `X` has a converging subsequence.

## Tags

sequentially closed, sequentially compact, sequential space
-/


namespace GRWTSK.Topology.GeneralTopology.SeqCompactSpace.Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8

open Set Filter
open scoped Topology

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- The sequential closure of a set `s : Set X` in a topological space `X` is the set of all `a : X`
which arise as limit of sequences in `s`. Note that the sequential closure of a set is not
guaranteed to be sequentially closed. -/
def seqClosure (s : Set X) : Set X :=
  { a | ∃ x : ℕ → X, (∀ n : ℕ, x n ∈ s) ∧ Tendsto x atTop (𝓝 a) }

/-- A set `s` is sequentially closed if for any converging sequence `x n` of elements of `s`, the
limit belongs to `s` as well. Note that the sequential closure of a set is not guaranteed to be
sequentially closed. -/
def IsSeqClosed (s : Set X) : Prop :=
  ∀ ⦃x : ℕ → X⦄ ⦃p : X⦄, (∀ n, x n ∈ s) → Tendsto x atTop (𝓝 p) → p ∈ s

/-- A function between topological spaces is sequentially continuous if it commutes with limit of
convergent sequences. -/
def SeqContinuous (f : X → Y) : Prop :=
  ∀ ⦃x : ℕ → X⦄ ⦃p : X⦄, Tendsto x atTop (𝓝 p) → Tendsto (f ∘ x) atTop (𝓝 (f p))

/-- A set `s` is sequentially compact if every sequence taking values in `s` has a
converging subsequence. -/
def IsSeqCompact (s : Set X) :=
  ∀ ⦃x : ℕ → X⦄, (∀ n, x n ∈ s) → ∃ a ∈ s, ∃ φ : ℕ → ℕ, StrictMono φ ∧ Tendsto (x ∘ φ) atTop (𝓝 a)

variable (X)

/-- A space `X` is sequentially compact if every sequence in `X` has a
converging subsequence. -/
@[mk_iff]
class SeqCompactSpace : Prop where
  isSeqCompact_univ : IsSeqCompact (univ : Set X)

export SeqCompactSpace (isSeqCompact_univ)

/-- A topological space is called a *Fréchet-Urysohn space*, if the sequential closure of any set
is equal to its closure. Since one of the inclusions is trivial, we require only the non-trivial one
in the definition. -/
class FrechetUrysohnSpace : Prop where
  closure_subset_seqClosure : ∀ s : Set X, closure s ⊆ seqClosure s

/-- A topological space is said to be a *sequential space* if any sequentially closed set in this
space is closed. This condition is weaker than being a Fréchet-Urysohn space. -/
class SequentialSpace : Prop where
  isClosed_of_seq : ∀ s : Set X, IsSeqClosed s → IsClosed s

variable {X}

/-- In a sequential space, a sequentially closed set is closed. -/
protected theorem IsSeqClosed.isClosed [SequentialSpace X] {s : Set X} (hs : IsSeqClosed s) :
    IsClosed s :=
  SequentialSpace.isClosed_of_seq s hs
