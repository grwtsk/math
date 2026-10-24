# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Profile.Variant083007e41b2c3d0e3c3f1e3d352d49855b62a6c76fc2c6dc28185ef0a85fd4cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3addf3a100700db269399d1bd217bfc68a151f6` · SHA-256 `083007e41b2c3d0e3c3f1e3d352d49855b62a6c76fc2c6dc28185ef0a85fd4cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic

namespace Noeoueue

/-- The formal epoch is prior to every snapshot it can certify. -/
structure FormalProfile where
  digest : String
  leanVersion : String
  mathlibRevision : String
  projectDigest : String
  exporterDigest : String
  normalizationVersion : Nat
  eligibleDeclarationKinds : List String
  foundationTypeExclusionPolicy : String
  axiomPolicy : String
  proofOpacityPolicy : String
  statementIncidencePolicy : String
  proofDependencyPolicy : String
  primeFrequencyCutoff : Nat
  coverSearchResourceContract : Nat
  canonicalEquivalencePolicy : String
  trustPolicy : String
  deriving DecidableEq, Repr

def pinnedProfile : FormalProfile :=
  { digest := "source-epoch-bound-at-export", leanVersion := "v4.19.0",
    mathlibRevision := "c44e0c8ee63ca166450922a373c7409c5d26b00b",
    projectDigest := "bound-at-gate", exporterDigest := "bound-at-gate",
    normalizationVersion := 1, eligibleDeclarationKinds := ["theorem", "definition", "opaque"],
    foundationTypeExclusionPolicy := "explicit-v1", axiomPolicy := "reject-unlisted-v1",
    proofOpacityPolicy := "opaque-and-transparent-recorded-v1",
    statementIncidencePolicy := "distinct-normalized-types-once-per-statement-v1",
    proofDependencyPolicy := "separate-nonranking-channel-v1", primeFrequencyCutoff := 4096,
    coverSearchResourceContract := 1000000, canonicalEquivalencePolicy := "checked-inverse-groupoid-v1",
    trustPolicy := "lean-kernel-plus-gate-no-browser-authority-v1" }

end Noeoueue
```
