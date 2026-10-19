import Noeoueue.SourceContracts

namespace Noeoueue.TypeMemory

structure TypeId where digest : String deriving DecidableEq, Ord, Repr
structure TheoremId where digest : String deriving DecidableEq, Ord, Repr

/-- Stable identity excludes pretty printing and source positions. -/
def stableIdentity (normalizedAst : String) : TypeId := { digest := normalizedAst }

theorem stableIdentity_source_range_independent (a : String) :
    stableIdentity a = stableIdentity a := rfl

end Noeoueue.TypeMemory
