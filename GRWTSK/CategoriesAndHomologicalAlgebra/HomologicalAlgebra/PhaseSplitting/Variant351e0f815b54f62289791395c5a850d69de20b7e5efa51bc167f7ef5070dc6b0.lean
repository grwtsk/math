import Mathematics.Homology.OrdinaryBockstein

/-!
# Chosen phase splitting

An abstract splitting may exist, but it is never canonical.  Product
coordinates require this separate certificate and cannot be obtained from
the unsplit Bockstein record alone.
-/

namespace Mathematics.Homology

universe u v w

/-- A chosen homomorphic section of one Bockstein quotient. -/
structure BocksteinSplitting
    {Torus : Type u} {Phase : Type v} {Torsion : Type w}
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion]
    (extension : BocksteinExtension Torus Phase Torsion) where
  lift : Torsion →+ Phase
  rightInverse :
    Function.RightInverse lift extension.bockstein
  choiceDigest : Digest
  splittingCertificate : ObjectAddress

namespace BocksteinSplitting

variable
    {Torus : Type u} {Phase : Type v} {Torsion : Type w}
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion]
    {extension : BocksteinExtension Torus Phase Torsion}
    (splitting : BocksteinSplitting extension)

/-- The selected torsion lift has exactly the requested finite phase. -/
theorem section_phase (torsion : Torsion) :
    extension.bockstein (splitting.lift torsion) = torsion :=
  splitting.rightInverse torsion

end BocksteinSplitting

end Mathematics.Homology
