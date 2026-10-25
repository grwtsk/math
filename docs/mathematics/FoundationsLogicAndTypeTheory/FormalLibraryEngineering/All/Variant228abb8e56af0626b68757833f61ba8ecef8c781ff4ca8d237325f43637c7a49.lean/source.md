# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.All.Variant228abb8e56af0626b68757833f61ba8ecef8c781ff4ca8d237325f43637c7a49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61187ab018bb24e06a05eda379c718a49863bccd` · SHA-256 `228abb8e56af0626b68757833f61ba8ecef8c781ff4ca8d237325f43637c7a49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.PartialBitfield.Order
import Mathematics.BinaryFrontier.Completion.Core
import Mathematics.BinaryFrontier.Completion.Bitfield
import Mathematics.BinaryFrontier.Completion.ContinuationCover
import Mathematics.BinaryFrontier.Obstruction.MUS
import Mathematics.BinaryFrontier.Obstruction.Factorization
import Mathematics.BinaryFrontier.Obstruction.Provenance
import Mathematics.BinaryFrontier.Symmetry.Canonical
import Mathematics.BinaryFrontier.Symmetry.CompletionEquivariance
import Mathematics.BinaryFrontier.Symmetry.ObstructionAction
import Mathematics.BinaryFrontier.Symmetry.OrientationEquivariance
import Mathematics.BinaryFrontier.Refinement.Tree
import Mathematics.BinaryFrontier.Refinement.Address
import Mathematics.BinaryFrontier.Refinement.Boundary
import Mathematics.BinaryFrontier.Refinement.CanonicalObstruction
import Mathematics.BinaryFrontier.Refinement.Resolver

/-!
# Binary frontier

The aggregate exposes four independent mathematical roots--partial order,
completion semantics, primitive cores, and finite-orbit canonicalization--and
then combines them through explicit tree, boundary, symmetry, and total
resolver certificates.  Missing evidence remains a named unknown; malformed
structure alone is rejected.
-/
```
