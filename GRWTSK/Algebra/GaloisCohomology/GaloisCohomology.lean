import Surface.Arithmetic.GaloisCohomology.Finite
import Surface.Arithmetic.GaloisCohomology.Restriction
import Surface.Arithmetic.GaloisCohomology.Selmer
import Surface.Arithmetic.GaloisCohomology.DependencyInvariant
import Surface.Arithmetic.GaloisCohomology.MathlibAdapter

namespace Surface.Arithmetic
namespace GaloisCohomology

/-!
# GHC-1a: finite H1, restriction, and abstract Selmer substrate

This root exposes the non-placeholder finite abstract layer for degree-one
group cohomology, restriction, and Selmer subgroups. It deliberately does not
bring in Kummer maps, elliptic curves, BSD, analytic ranks, automorphy, global
number-field Galois groups, continuous cochains, or any downstream arithmetic-
descent adapter.
-/

end GaloisCohomology
end Surface.Arithmetic
