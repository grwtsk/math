import Folder.GrandChallenge.Complexity.CompressionGrowth

/-!
# Folder.GrandChallenge.Complexity.GlitchObstruction

Radiation role: research-boundary
BinaryMatrix spine: This module records complexity glitch-obstruction contracts.
Ontology: complexity_compression_growth
Pivot role: complexity
Zero typology: reconstruction-obstruction
Contract boundary: speculative-scaffold
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace Complexity

structure GlitchObstruction where
  profile : CompressionGrowthProfile
  missingFrameLabel : String
  obstructionToPolynomialReconstruction : Prop
  obstructionToPolynomialReconstruction_certified :
    obstructionToPolynomialReconstruction
  ellipticTorsionAnalogyOnly : Prop
  ellipticTorsionAnalogyOnly_certified : ellipticTorsionAnalogyOnly
  sourceLabel : String

theorem complexity_glitch_obstruction_if_supplied
    (G : GlitchObstruction) :
    G.obstructionToPolynomialReconstruction :=
  G.obstructionToPolynomialReconstruction_certified

theorem elliptic_torsion_is_analogy_only
    (G : GlitchObstruction) :
    G.ellipticTorsionAnalogyOnly :=
  G.ellipticTorsionAnalogyOnly_certified

end Complexity
end GrandChallenge
end Folder
