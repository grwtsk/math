# Complete source: GRWTSK.Algebra.LinearAlgebra.AxiomAudit.Variant8b8761503ef9102a0acc6995ef090c3fa48a1a04fff182383895304e1ed18122

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `043b7dc9a95e105cfd8fdc3895331f9e75620bfc` · SHA-256 `8b8761503ef9102a0acc6995ef090c3fa48a1a04fff182383895304e1ed18122`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix

/-! Kernel dependency witnesses for the public BitMatrix correspondence core. -/

#print axioms BitMatrix.ArrayBacked.mapInPlace_refines
#print axioms BitMatrix.Carrier.baselineEquiv
#print axioms BitMatrix.Carrier.distinguishedInterpreter_eq_baseline_iff
#print axioms BitMatrix.Codec.SourceCodec.encode_injective
#print axioms BitMatrix.Configuration.Schema003.policy_valid
#print axioms BitMatrix.Configuration.Schema003.generated_entries_required
#print axioms BitMatrix.Configuration.Schema003.generated_entry_count_matches
#print axioms BitMatrix.Rhetorical.four_mode_coverage
#print axioms BitMatrix.Rhetorical.source_relative_scalar_exists_unique
#print axioms BitMatrix.Runtime.Semantics.mem_fixedSet_iff_graphPoint_liesOnDiagonal
#print axioms BitMatrix.Runtime.Semantics.triangleSuccessor_third_power
```
