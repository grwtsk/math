import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm
import Mathematics.StratifiedBoundary.Frontier.MajorityCrossing

/-!
# Injective finite frontier ranks

Ranks are local presentation coordinates.  They do not identify orbit
quotients unless a separate automorphism canonicalizer is supplied.
-/

namespace Mathematics.StratifiedBoundary.Frontier

universe uFrontier

structure LocalRankCertificate
    (Frontier : Type uFrontier) where
  rank : Frontier → Nat
  injective :
    Function.Injective rank

def LocalRankCertificate.tallyCode
    {Frontier : Type uFrontier}
    (certificate :
      LocalRankCertificate Frontier)
    (frontier : Frontier) :
    OrdinalTally.RawCode :=
  .tall (certificate.rank frontier)

theorem localRank_equal_iff
    {Frontier : Type uFrontier}
    (certificate :
      LocalRankCertificate Frontier)
    {left right : Frontier} :
    certificate.rank left =
        certificate.rank right ↔
      left = right :=
  ⟨certificate.injective, congrArg certificate.rank⟩

end Mathematics.StratifiedBoundary.Frontier
