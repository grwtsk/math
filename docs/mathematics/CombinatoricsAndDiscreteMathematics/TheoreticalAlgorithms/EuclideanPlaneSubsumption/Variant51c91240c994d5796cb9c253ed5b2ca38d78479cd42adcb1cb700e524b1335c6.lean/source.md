# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EuclideanPlaneSubsumption.Variant51c91240c994d5796cb9c253ed5b2ca38d78479cd42adcb1cb700e524b1335c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0033b84d0526a4803e057ebf3566943df0ed2dd` · SHA-256 `51c91240c994d5796cb9c253ed5b2ca38d78479cd42adcb1cb700e524b1335c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.Circumcircle
import Mathematics.Geometry.DirectedArc
import Mathematics.Geometry.EuclideanPlaneCorpus
import Mathematics.Geometry.HalfTurn

/-!
# Euclidean-plane subsumption

All eleven declarations in corpus module 195 route to the canonical Euclidean
plane or to exact derived geometry.  The links are proposal-only evidence; the
target declarations stand on their compiled Lean definitions and proofs.
-/

namespace Mathematics.Geometry.EuclideanPlaneSubsumption

open Mathematics
open Mathematics.Discovery

private def link
    (ordinal : Nat)
    (sourceName : String)
    (sourceName_nonempty : sourceName ≠ "")
    (kind : CorpusDeclarationKind)
    (digest : Digest)
    (digest_valid : digest.Valid)
    (target : String)
    (target_nonempty : target ≠ "")
    (relation : CorpusSubsumptionRelation)
    (rationale : String) :
    CorpusSubsumptionLink :=
  EuclideanPlaneCorpus.sourceModule.subsumption
    { value := "ideas:euclidean-plane:" ++ toString ordinal }
    (by simp [StableId.Valid])
    ordinal
    sourceName
    sourceName_nonempty
    kind
    digest
    digest_valid
    target
    target_nonempty
    relation
    rationale

def point := link 0 "Point" (by decide) .structure
  { value := "1bca17c8a9571d25ed817f79fbd877914296e7d514d8b700a8f54b9286c90a1d" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.PlanePoint" (by decide)
  .carrierReconstruction
  "Replace a duplicate Cartesian record by Mathlib's canonical Euclidean plane."

def squaredDistance := link 1 "squaredDistance" (by decide) .definition
  { value := "00b692f8b61ffcfa52cedb3649b5cab5438287e35ad0e85854fa5eb8522b9a85" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.planeSquaredDistance" (by decide)
  .definitionReconstruction
  "Define squared distance from the canonical Euclidean norm."

def circle := link 2 "Circle" (by decide) .structure
  { value := "b50221f3a5e8093d18e9576772ff3204b6ed9f566b4f2a80461b1d4325142539" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.PlaneCircle" (by decide)
  .carrierReconstruction
  "Retain exactly a center, a radius, and its positivity witness."

def circleContains := link 3 "Circle.Contains" (by decide) .definition
  { value := "a19470a3e6206645e43087441a0bab5bb254bd4ab726d9629768a796689e5677" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.PlaneCircle.Contains" (by decide)
  .definitionReconstruction
  "Use the exact squared-distance equation without runtime tolerance."

def circumcircleDatum := link 4 "CircumcircleDatum" (by decide) .structure
  { value := "7d6e7ecfb4e3533c09654f08b93ed4030cfd99c5a8f9cd9a1887268f929c146d" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.CircumcircleDatum" (by decide)
  .carrierReconstruction
  "Reuse the canonical triangle and circle carriers with three membership proofs."

def yAxisDirection := link 5 "YAxisDirection" (by decide) .inductive
  { value := "96525409191256b995400e2e54e657f49557ef5a430f834822ce40a156b73a14" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.YAxisDirection" (by decide)
  .carrierReconstruction
  "Keep display-axis direction separate from intrinsic geometry."

def arcOrientation := link 6 "ArcOrientation" (by decide) .inductive
  { value := "a533729a78c0fa5cc2558a52024e2c771a5dda68d9821462b618446f6fae4ef7" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.ArcOrientation" (by decide)
  .carrierReconstruction
  "Represent directed circular orientation independently of display coordinates."

def directedArc := link 7 "DirectedArc" (by decide) .structure
  { value := "a416f0d2fead0003a0c5fe46cb219c4da230745fed27fa658a66e58c0161e38f" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.DirectedArc" (by decide)
  .carrierReconstruction
  "Retain the circle, endpoints, exact membership, and orientation."

def windingNumber := link 8 "WindingNumber" (by decide) .abbrev
  { value := "0b4295e8d86d8f06381b1da3dfa940ad39208363662ba5d5df629f87f23cc4e6" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.WindingNumber" (by decide)
  .carrierReconstruction
  "Use the kernel integer carrier rather than floating-point angle accumulation."

def halfTurn := link 9 "halfTurn" (by decide) .definition
  { value := "cc855e3a8547fe53ac831ea1f0d804e614381de76db947015300c37ae5cac3c6" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.halfTurn" (by decide)
  .definitionReconstruction
  "Express the affine half-turn through canonical vector-space operations."

def halfTurnInvolutive := link 10 "halfTurn_involutive" (by decide) .theorem
  { value := "6f852cc3e067e67c8fb207a1542e263657408bac4a54f3a5ab295cccbe30959e" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.halfTurn_involutive" (by decide)
  .theoremReconstruction
  "Kernel-check involutivity on the canonical Euclidean carrier."

def links : List CorpusSubsumptionLink := [
  point,
  squaredDistance,
  circle,
  circleContains,
  circumcircleDatum,
  yAxisDirection,
  arcOrientation,
  directedArc,
  windingNumber,
  halfTurn,
  halfTurnInvolutive
]

@[simp] theorem links_length : links.length = 11 := by decide

end Mathematics.Geometry.EuclideanPlaneSubsumption
```
