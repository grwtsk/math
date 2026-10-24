# Complete source: GRWTSK.Algebra.GroupTheory.GroupTransportDiagnostic.Variant918b80f740bc60938ea1c760380e602cbd729562cd302ecd8bd12d5874978c60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40c52c412ecbf1dbc03e14dcfa82f47fea61148a` · SHA-256 `918b80f740bc60938ea1c760380e602cbd729562cd302ecd8bd12d5874978c60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Group.TransferInstance

noncomputable def transportDiagnostic {G : Type} [Group G] (e : G ≃ G) :
    @MulEquiv G G e.group.toMul inferInstance := e.mulEquiv
```
