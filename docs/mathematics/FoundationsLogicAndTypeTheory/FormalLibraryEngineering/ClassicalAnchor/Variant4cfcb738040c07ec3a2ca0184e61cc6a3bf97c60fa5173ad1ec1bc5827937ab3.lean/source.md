# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClassicalAnchor.Variant4cfcb738040c07ec3a2ca0184e61cc6a3bf97c60fa5173ad1ec1bc5827937ab3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f989cec1434649750e18e923d7fc6b7dcfc06cf` · SHA-256 `4cfcb738040c07ec3a2ca0184e61cc6a3bf97c60fa5173ad1ec1bc5827937ab3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.ProofStatus

/-!
# Folder.Rebuild.ClassicalAnchor

Metadata for exposition references in the rebuild branch. These records are not
proof inputs.
-/

namespace Folder
namespace Rebuild

structure ClassicalAnchor where
  shortName : String
  paperOrBook : String
  theoremLabel : String
  mathematicalContent : String
  formalRole : RebuildProofStatus
  proofDependencyAllowed : formalRole.allowedAsProofDependency = False
  theoremStatus : RebuildProofStatus := formalRole

def euclidInfinitudeAnchor : ClassicalAnchor where
  shortName := "Euclid infinitude"
  paperOrBook := "Euclid, Elements, Book IX"
  theoremLabel := "infinitely many primes"
  mathematicalContent :=
    "There are more primes than any finite list of primes."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl

def eulerProductAnchor : ClassicalAnchor where
  shortName := "Euler product"
  paperOrBook := "Euler product for the zeta series"
  theoremLabel := "finite-to-infinite Euler product route"
  mathematicalContent :=
    "The zeta series factors over primes in the half-plane of absolute convergence."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl

def pntAnchor : ClassicalAnchor where
  shortName := "Hadamard-de la Vallee Poussin"
  paperOrBook := "Classical prime counting theorem literature"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The prime counting function has the classical asymptotic. This branch records it only as a target."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl

def wienerIkeharaAnchor : ClassicalAnchor where
  shortName := "Wiener-Ikehara"
  paperOrBook := "Tauberian theorem references"
  theoremLabel := "Tauberian route target"
  mathematicalContent :=
    "A Tauberian theorem can turn analytic information into asymptotics; here it is only a target."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl

def prismaticTorsionAnchor : ClassicalAnchor where
  shortName := "Bhatt-Scholze prismatic torsion"
  paperOrBook := "Bhatt-Scholze, prismatic cohomology references"
  theoremLabel := "p-adic torsion comparison anchor"
  mathematicalContent :=
    "Bhatt-Scholze define p-adic Tate twists Zp(n) and prove they are discrete and p-torsionfree. This is future torsion-flow exposition, not a proof input."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl

def ricciFlowSurgeryAnchor : ClassicalAnchor where
  shortName := "Hamilton-Perelman-Morgan-Tian surgery analogy"
  paperOrBook := "Morgan-Tian exposition of geometric flow with surgery"
  theoremLabel := "finite torsion-flow analogy anchor"
  mathematicalContent :=
    "The structural analogy is canonical neighborhoods, curvature pinched toward positive, non-collapsing, and inductive extension by surgery. This project uses only the analogy for a discrete torsion-flow formalism."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl

end Rebuild
end Folder
```
