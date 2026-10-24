import Surface.Arithmetic.GaloisCohomology.Finite

namespace Surface.Arithmetic
namespace GaloisCohomology

/-!
# Restriction for finite degree-one cohomology

What is formalized:
The restriction API for finite abstract `H1`.  The definitions and checked
theorems are implemented in `Finite`: `resC1`, `resZ1`, `resFiniteH1`,
`restriction_preserves_oneCocycle`, `restriction_preserves_oneCoboundary`,
`resFiniteH1_id`, and `resFiniteH1_comp`.

What is certificate-gated:
Only action compatibility of the finite group homomorphism is an input.

What is not claimed:
This module does not introduce local fields, absolute Galois groups, continuous
cochains, arithmetic-descent maps, Selmer exact sequences, Sha, or BSD.

Dependency invariant:
Weak descent, Sha, and BSD-facing interfaces must use this finite restriction
substrate before any later continuous or absolute-Galois adapter.
-/

end GaloisCohomology
end Surface.Arithmetic
