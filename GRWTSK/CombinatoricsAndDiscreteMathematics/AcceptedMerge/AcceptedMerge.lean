import Mathlib.Data.Finset.Basic

/-!
# Whole-family accepted merge

Compatibility is checked on the complete family union.  Pairwise checks are
not substituted for this condition.
-/

namespace Mathematics.Operational

universe u v

structure AcceptedArtifact
    (ArtifactId : Type u)
    (Fact : Type v)
    [DecidableEq Fact] where
  artifactId : ArtifactId
  facts : Finset Fact

def familyFacts
    {ArtifactId : Type u}
    {Fact : Type v}
    [DecidableEq Fact]
    (family : List (AcceptedArtifact ArtifactId Fact)) :
    Finset Fact :=
  family.foldl (fun result artifact => result ∪ artifact.facts) ∅

structure FamilyCompatibilityCertificate
    {ArtifactId : Type u}
    {Fact : Type v}
    [DecidableEq Fact]
    (Consistent : Finset Fact → Prop)
    (family : List (AcceptedArtifact ArtifactId Fact)) : Prop where
  joint : Consistent (familyFacts family)

def canonicalAcceptedMerge
    {ArtifactId : Type u}
    {Fact : Type v}
    [DecidableEq Fact]
    (family : List (AcceptedArtifact ArtifactId Fact)) :
    Finset Fact :=
  familyFacts family

end Mathematics.Operational
