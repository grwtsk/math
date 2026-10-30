/- Copyright (c) 2026 grwtsk contributors. MIT.
OpenAI and its dependencies retain upstream attribution and licenses. -/
import OAI.Analysis.TraceCone.IdealTransport

/-!
# Exact upstream import surface: TraceIdealTransportSupport

Source: openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a.
Comparator: lean/ComparatorChallenges/TraceIdealTransportSupport.json.
This exposes the exact upstream declarations with their original types. It is
not a new GRWTSK theorem bridge or acceptance of the imported mathematics.
Compilation, comparator execution, independent kernel replay, and complete
transitive axiom auditing: NOT_RUN. See the provider catalogue and source pins.
-/

namespace GRWTSK.Analysis.OpenAIMath.TraceIdealTransportSupport

namespace OAI.TraceConeClassification
export _root_.OAI.TraceConeClassification (closed_ideal_weight_exists closedIdealEquivOfAdditive_weight)
end OAI.TraceConeClassification

namespace OAI.TraceConeClassification.ClosedIdeal
export _root_.OAI.TraceConeClassification.ClosedIdeal (weight_idempotent finiteIdeal_weight le_iff_add_weight)
end OAI.TraceConeClassification.ClosedIdeal

namespace OAI.TraceConeClassification.ExtendedTrace
export _root_.OAI.TraceConeClassification.ExtendedTrace (zero_mem_finiteSquareSet star_mem_finiteSquareSet smul_mem_finiteSquareSet add_mem_finiteSquareSet mul_mem_finiteSquareSet_left isClosed_finiteIdeal mul_mem_finiteIdeal_left mul_mem_finiteIdeal_right lowerSemicontinuous_supportWeight idempotent_eq_weight)
end OAI.TraceConeClassification.ExtendedTrace

namespace OAI.TraceConeClassification.TraceConeEquiv
export _root_.OAI.TraceConeClassification.TraceConeEquiv (idealOrderIso_finIdeal idealOrderIso_zeroIdeal)
end OAI.TraceConeClassification.TraceConeEquiv

end GRWTSK.Analysis.OpenAIMath.TraceIdealTransportSupport
