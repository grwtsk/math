import Mathematics.StratifiedBoundary.OrdinalTally.FundamentalSequence

/-!
# Limit-stratum admission

The stage sequence consists only of executable normal forms.  Its supremum is
the target of a separate registered countable limit; the target is never
reinserted into executable syntax.
-/

namespace Mathematics.StratifiedBoundary.OrdinalTally

structure LimitIndexCertificate
    (registered : RegisteredCountableLimit) where
  stageIndex :
    Nat → ExecutableNormalForm
  stageMatchesFundamentalSequence :
    ∀ stage,
      (stageIndex stage).value =
        (registered.approximation stage).value
  monotone :
    Monotone
      (fun stage => (stageIndex stage).value)
  cofinal :
    ∀ {candidate},
      candidate < registered.target →
      ∃ stage,
        candidate ≤ (stageIndex stage).value

theorem limitIndex_has_declared_boundary
    {registered : RegisteredCountableLimit}
    (certificate :
      LimitIndexCertificate registered) :
    (⨆ stage : Nat,
      (certificate.stageIndex stage).value) =
        registered.target := by
  apply le_antisymm
  · apply Ordinal.iSup_le
    intro stage
    rw [certificate.stageMatchesFundamentalSequence]
    exact (registered.belowTarget stage).le
  · apply le_of_forall_lt
    intro candidate candidate_lt
    obtain ⟨stage, stage_ge⟩ :=
      certificate.cofinal candidate_lt
    exact stage_ge.trans
      (Ordinal.le_iSup
        (fun n : Nat =>
          (certificate.stageIndex n).value)
        stage)

end Mathematics.StratifiedBoundary.OrdinalTally
