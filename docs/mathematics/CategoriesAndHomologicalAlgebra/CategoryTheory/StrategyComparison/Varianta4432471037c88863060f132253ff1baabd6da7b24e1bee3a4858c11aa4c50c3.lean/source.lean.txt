import Folder.AdelicInfinityTopos.StrategyComparison

/-!
# Folder.Theorem.AdelicInfinityTopos.StrategyComparison

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports the recommended adelic route fact.
Ontology: proof.adelic.strategy_comparison
Pivot role: dual
Zero typology: mixed
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace StrategyComparison

theorem recommended_route_is_adelic :
    Folder.AdelicInfinityTopos.recommendedRoute =
      Folder.AdelicInfinityTopos.FormalizationRoute.adelic :=
  Folder.AdelicInfinityTopos.recommended_route_is_adelic

end StrategyComparison
end AdelicInfinityTopos
end Theorem
end Folder
