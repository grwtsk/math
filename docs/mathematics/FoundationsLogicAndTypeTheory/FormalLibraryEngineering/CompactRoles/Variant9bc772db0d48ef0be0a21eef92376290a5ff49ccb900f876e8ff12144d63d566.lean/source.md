# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactRoles.Variant9bc772db0d48ef0be0a21eef92376290a5ff49ccb900f876e8ff12144d63d566

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `036b31513a44cbfab40703c9cdfc0d83bc7638be` · SHA-256 `9bc772db0d48ef0be0a21eef92376290a5ff49ccb900f876e8ff12144d63d566`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit false

namespace Think.Compact

inductive RadoProjectedRole where
  | graph
  | projection
  | orbit
  | witness
  | heat
  | centroid
  | modularWeight
  | formShadow
  | pairCorrelation
  | residue
  | prune
  | canonical
  | memory
  | boundary
  | compact
deriving DecidableEq, Repr

def RadoProjectedRole.importsRadoTheorem :
    RadoProjectedRole → Bool
  | _ => false

def RadoProjectedRole.pairCorrelationIsAuthority :
    RadoProjectedRole → Bool
  | _ => false

theorem radoProjected_imports_no_rado_theorem
    (r : RadoProjectedRole) :
    r.importsRadoTheorem = false := by
  cases r <;> rfl

theorem radoProjected_pairCorrelation_regularizerOnly
    (r : RadoProjectedRole) :
    r.pairCorrelationIsAuthority = false := by
  cases r <;> rfl

end Think.Compact
```
