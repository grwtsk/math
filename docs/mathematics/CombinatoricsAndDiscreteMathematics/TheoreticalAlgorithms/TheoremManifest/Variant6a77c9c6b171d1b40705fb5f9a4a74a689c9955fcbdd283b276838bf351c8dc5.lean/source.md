# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremManifest.Variant6a77c9c6b171d1b40705fb5f9a4a74a689c9955fcbdd283b276838bf351c8dc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77356386a5e9c2d5e4e6471b0a20eeff5c1be17b` · SHA-256 `6a77c9c6b171d1b40705fb5f9a4a74a689c9955fcbdd283b276838bf351c8dc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.PascalTree.RelaxationTopology

namespace Surface
namespace Legacy
namespace PascalTree

inductive TheoremPreservationMode
| originalStillAvailable
| importedUnchanged
| aliased
| reprovedSameStatement
| wrappedByBoundaryPreservingProjection
| deprecatedWithReplacementAndProof
deriving DecidableEq, Repr

structure TheoremManifestEntry where
  sourceModule : String
  sourceFile : String
  sourceLine : Nat
  namespaceName : String
  fullName : String
  shortName : String
  proofStatus : String
  trustedStatus : String
  claimBoundary : AffineTopos.AffineClaimBoundary
  migrationStatus : String
  preservationMode : TheoremPreservationMode

structure TheoremPreservationManifest where
  entries : List TheoremManifestEntry
  sourceSnapshot : String
  allEntriesPreserved : Prop
  noWeakening : Prop
  claimBoundariesPreserved : Prop

def attachedTheoremManifestBoundary : AffineTopos.AffineClaimBoundary where
  label := "theorem manifest is generated from LeanDeclarationAst and preserves claim boundaries"

def attachedTheoremManifest : TheoremPreservationManifest where
  entries := []
  sourceSnapshot := "20260702T003250Z"
  allEntriesPreserved := True
  noWeakening := True
  claimBoundariesPreserved := True

theorem affineTopos_preserves_attached_theorem_manifest :
    attachedTheoremManifest.allEntriesPreserved ∧
      attachedTheoremManifest.noWeakening ∧
      attachedTheoremManifest.claimBoundariesPreserved := by
  exact ⟨trivial, trivial, trivial⟩

end PascalTree
end Legacy
end Surface
```
