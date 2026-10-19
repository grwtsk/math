import Mathematics.Ecosystem.Provenance
import Mathematics.SourceAnalysis.CommandElements.ByteRange

/-!
# Abstract source addresses

One address locates an occurrence in the source-to-semantics cascade.  The
layer is explicit, and the immutable source object remains present at every
derived layer.  An address is provenance; it is not semantic identity.
-/

namespace Mathematics.SourceAnalysis

/-- Ordered strata in the reconstructible abstract source tree. -/
inductive AbstractSourceLayer
  | repositoryHistory
  | sourceFile
  | sourceBytes
  | comment
  | concreteSyntax
  | abstractSyntax
  | elaboratedTerm
  | kernelDeclaration
  | mathematicalPoint
  | proofDependency
  | blueprint
  | issue
  | dataset
  | countermodel
  | externalCertificate
  | generatedArtifact
  | transformedArtifact
  | reflectedPatch
  | modelProjection
  deriving DecidableEq, Repr, Inhabited

namespace AbstractSourceLayer

/-- Rank is a source-cascade coordinate, never theorem authority. -/
def rank : AbstractSourceLayer → Nat
  | .repositoryHistory => 0
  | .sourceFile => 1
  | .sourceBytes => 2
  | .comment => 3
  | .concreteSyntax => 4
  | .abstractSyntax => 5
  | .elaboratedTerm => 6
  | .kernelDeclaration => 7
  | .mathematicalPoint => 8
  | .proofDependency => 9
  | .blueprint
  | .issue
  | .dataset
  | .countermodel
  | .externalCertificate
  | .generatedArtifact => 10
  | .transformedArtifact => 11
  | .reflectedPatch => 12
  | .modelProjection => 13

end AbstractSourceLayer

/-- Exact source-relative position of one derived occurrence. -/
structure AbstractSourceAddress where
  addressId : StableId
  sourceObject : Ecosystem.SourceObjectAddress
  layer : AbstractSourceLayer
  parentAddressId : Option StableId
  byteRange : Option ByteRange
  nodeDigest : Digest
  derivationDigest : Digest
  deriving DecidableEq, Repr

/-- A source address cannot silently lose its immutable source coordinate. -/
def AbstractSourceAddress.SameSourceObject
    (left right : AbstractSourceAddress) : Prop :=
  left.sourceObject = right.sourceObject

/-- Equal address identifiers are not inferred from equal source spelling. -/
def AbstractSourceAddress.SameIdentity
    (left right : AbstractSourceAddress) : Prop :=
  left.addressId = right.addressId

end Mathematics.SourceAnalysis
