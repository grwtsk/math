# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sigma.Variant3c5426e9b2819e03ca6190a0646049280c8836afb9df84979fa22592ffba070b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87f73a7b08fb7f063126cfaf73cc628916d9844d` · SHA-256 `d6257ed684200e8a611e0f3e13e09abbee2feede84c7eb64e106e9fb024ee229`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSigma.Variant52657323261cd38b6acac5cbf326e50c7e9c635a68280bf275abc315889e538e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52657323261cd38b6acac5cbf326e50c7e9c635a68280bf275abc315889e538e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.FiniteSigma.Variant52657323261cd38b6acac5cbf326e50c7e9c635a68280bf275abc315889e538e","mathematical_subject":"Logic.Foundations","original_sha256":"52657323261cd38b6acac5cbf326e50c7e9c635a68280bf275abc315889e538e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/Finite/Sigma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

public import Mathlib.Data.Fintype.EquivFin
public import Mathlib.Data.Fintype.Sigma
public import Mathlib.Logic.Equiv.Sigma

/-!
# Finiteness of sigma types
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSigma.Variant52657323261cd38b6acac5cbf326e50c7e9c635a68280bf275abc315889e538e

public section

variable {α : Type*} {β : α → Type*}

namespace Finite

instance [Finite α] [∀ a, Finite (β a)] : Finite (Σ a, β a) := by
  let := Fintype.ofFinite α
  let := fun a => Fintype.ofFinite (β a)
  infer_instance

instance {ι : Sort*} {π : ι → Sort*} [Finite ι] [∀ i, Finite (π i)] : Finite (Σ' i, π i) :=
  of_equiv _ (Equiv.psigmaEquivSigmaPLift π).symm

instance Set.finite_sigma (s : Set α) (t : (i : α) → Set (β i)) [Finite s] [∀ i, Finite (t i)] :
    Finite (s.sigma t) :=
  .of_equiv _ (Equiv.Set.sigma s t).symm

end Finite

namespace Set

/-- A finite sum of finite sets is finite -/
lemma Finite.sigma {s : Set α} {t : ∀ i, Set (β i)} (hs : s.Finite) (ht : ∀ i ∈ s, (t i).Finite) :
    (s.sigma t).Finite := by
  have := hs.to_subtype
  have : ∀ i : s, Finite (t i) := fun i ↦ (ht i i.2).to_subtype
  exact (Set.univ.sigma fun i : s ↦ t i).toFinite.of_equiv _ {
    toFun := fun x ↦ ⟨⟨x.1.1, x.1.2⟩, ⟨x.1.1.2, x.2.2⟩⟩
    invFun := fun x ↦ ⟨⟨⟨x.1.1, x.2.1⟩, x.1.2⟩, ⟨Set.mem_univ _, x.2.2⟩⟩
  }

end Set
```
