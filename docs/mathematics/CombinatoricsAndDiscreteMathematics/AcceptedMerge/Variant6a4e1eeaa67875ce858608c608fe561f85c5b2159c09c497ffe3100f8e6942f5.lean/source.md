# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.AcceptedMerge.Variant6a4e1eeaa67875ce858608c608fe561f85c5b2159c09c497ffe3100f8e6942f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3f3fdb822459c6fa111d9b740d501d6b0a24dd4` · SHA-256 `6a4e1eeaa67875ce858608c608fe561f85c5b2159c09c497ffe3100f8e6942f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
