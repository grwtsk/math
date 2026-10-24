# Complete source: GRWTSK.Analysis.SpecialFunctions.Coverage.Variant33a71e6833ec0d62e076d8490a5d51be667186cb17a70adeaaf0d469eff6eedf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `226357abb133fe7d052df6e272b821aa293cbc2c` · SHA-256 `33a71e6833ec0d62e076d8490a5d51be667186cb17a70adeaaf0d469eff6eedf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Oracle.UniversalOracle
import Surface.Legacy.BinaryLogicMatrix.Coverage

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.

What is formalized:
A historical eliminator saying oracle coverage follows from the explicit oracle
foundation in the old Surface coverage scaffold.

What is not claimed:
This module does not make oracle access constructive and does not make an
external oracle a theorem-producing authority.
-/

namespace Surface
namespace Legacy

theorem oracleCoverage_requires_foundation
    (Γ : Gamma) :
    LogicalFoundation.oracle ≤ Γ.logicalFoundation ->
      ∀ f : OracleRepresentableFunction,
        CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.oracle f) := by
  intro h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ trivial (DeclaredSurfaceObject.oracle f) h

end Legacy
end Surface
```
