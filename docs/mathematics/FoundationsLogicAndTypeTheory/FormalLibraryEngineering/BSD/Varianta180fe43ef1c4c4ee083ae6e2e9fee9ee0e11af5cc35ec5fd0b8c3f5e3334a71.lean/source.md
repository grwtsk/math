# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BSD.Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0dadeca7276d6c70571070c86897bc1ee3a44867` · SHA-256 `a180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.BSD.RankOrderCompatibility
import Folder.GrandChallenge.BSD.MorleyTrisectorAnalogy
import Folder.GrandChallenge.BSD.TorsionOffset

/-!
# Folder.Theorem.GrandChallenge.BSD

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports BSD branch contract facts.
Ontology: proof.grand_challenge_bsd
Pivot role: arithmetic
Zero typology: rank-order
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem bsd_rank_order_compatible_if_supplied
    (R : Folder.GrandChallenge.BSD.RankOrderCompatibility) :
    R.compatible :=
  Folder.GrandChallenge.BSD.bsd_rank_order_compatible_if_supplied R

theorem bsd_mismatch_obstruction_if_supplied
    (R : Folder.GrandChallenge.BSD.RankOrderCompatibility) :
    R.mismatchObstruction :=
  Folder.GrandChallenge.BSD.bsd_mismatch_obstruction_if_supplied R

theorem morley_analogy_only :
    Folder.GrandChallenge.BSD.morleyAnalogy.analogyOnly :=
  Folder.GrandChallenge.BSD.morley_analogy_only

theorem torsion_offset_no_intersection_with_half_if_supplied
    (N : Folder.GrandChallenge.BSD.TorsionOffsetNonIntersection) :
    N.noIntersectionWithHalf :=
  Folder.GrandChallenge.BSD.torsion_offset_no_intersection_with_half_if_supplied N

theorem torsion_offset_no_intersection_with_one_if_supplied
    (N : Folder.GrandChallenge.BSD.TorsionOffsetNonIntersection) :
    N.noIntersectionWithOne :=
  Folder.GrandChallenge.BSD.torsion_offset_no_intersection_with_one_if_supplied N

theorem torsion_offset_no_intersection_with_composites_if_supplied
    (N : Folder.GrandChallenge.BSD.TorsionOffsetNonIntersection) :
    N.noIntersectionWithComposites :=
  Folder.GrandChallenge.BSD.torsion_offset_no_intersection_with_composites_if_supplied
    N

theorem bsd_obstruction_accounted_for_if_supplied
    (B : Folder.GrandChallenge.BSD.BSDPivotCompatibility) :
    B.obstructionAccountedFor :=
  Folder.GrandChallenge.BSD.bsd_obstruction_accounted_for_if_supplied B

theorem bsd_rank_order_if_compatibility_supplied
    (B : Folder.GrandChallenge.BSD.BSDPivotCompatibility) :
    B.rankEqualsAnalyticOrder :=
  Folder.GrandChallenge.BSD.bsd_rank_order_if_compatibility_supplied B

theorem torsion_offset_obstruction_persistence_if_supplied
    (G : Folder.GrandChallenge.BSD.TorsionOffsetGeometricFortification) :
    G.obstructionPersistence :=
  Folder.GrandChallenge.BSD.torsion_offset_obstruction_persistence_if_supplied G

end GrandChallenge
end Theorem
end Folder
```
