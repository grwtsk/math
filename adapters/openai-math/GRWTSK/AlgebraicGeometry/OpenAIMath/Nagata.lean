/- Copyright (c) 2026 grwtsk contributors. MIT.
OpenAI and its dependencies retain upstream attribution and licenses. -/
import OAI.AlgebraicGeometry.PlaneCurves.Nagata

/-!
# Exact upstream import surface: Nagata

Source: openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a.
Comparator: lean/ComparatorChallenges/Nagata.json.
This exposes the exact upstream declarations with their original types. It is
not a new GRWTSK theorem bridge or acceptance of the imported mathematics.
Compilation, comparator execution, independent kernel replay, and complete
transitive axiom auditing: NOT_RUN. See the provider catalogue and source pins.
-/

namespace GRWTSK.AlgebraicGeometry.OpenAIMath.Nagata

namespace OAI.Nagata
export _root_.OAI.Nagata (nagata_conjecture nagata_conjecture_coordinates)
end OAI.Nagata

namespace OAI.Nagata.Workers.W30
export _root_.OAI.Nagata.Workers.W30 (exists_positive_degree_equation_of_homogeneous_cycle)
end OAI.Nagata.Workers.W30

end GRWTSK.AlgebraicGeometry.OpenAIMath.Nagata
