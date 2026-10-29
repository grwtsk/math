import DAF.Assembly.Interface
import DAF.Arithmetic.Interface
import DAF.Arithmetic.Comparison
import DAF.Arithmetic.SpecialValueClaim
import DAF.Arithmetic.DirichletCharacterProfile
import DAF.Arithmetic.CharacterProjector
import DAF.Arithmetic.CharacterTwist
import DAF.Arithmetic.GammaSpindle
import DAF.Arithmetic.FunctionalEquation
import DAF.Arithmetic.PrimeSpokes
import DAF.Arithmetic.ConnesBoundary

/-!
# Conditional assembly and arithmetic comparison interfaces

This declaration-free umbrella records supplied maps and hypotheses rather
than asserting global arithmetic theorems.  Ordinary homology is not in
general algebraic K-theory, and the existence of an assembly map does not make
it an isomorphism.  A representation into number-ring units is additional
data.  Arithmetic K-theory comparisons can require a selected degree,
localization or completion, and explicit hypotheses.

Special-value claims live on distinguished determinant-line elements; they
may involve regulators, torsion, local factors, and leading terms.  Such a
claim is not silently replaced by an unsupported same-degree group
isomorphism or promoted to a certificate.

The finite Gamma/Dirichlet layer includes exact character projectors,
unitary-gauge twists, the real digamma spindle, the bounded complex Gamma
symbol, and a fixed finite functional-equation real structure.  Its analytic
`L²` promotion remains an explicit capability boundary.
-/
