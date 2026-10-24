# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixRing.Variant0485e8268d2b251b6c61c0ceca90c4d4c0cc87e21f956b40b879f795a0be5b8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e3d6f369e3c0eb109dd151e96ede55e8f7476c3` · SHA-256 `91fa8beb0b245d37d1118a2bb2242389d27122e03dcbafe67a568be0edf016df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FixedMatrixRingState.Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FixedMatrixRingState.Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c","mathematical_subject":"Foundations.Unclassified","original_sha256":"426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Runtime/MatrixRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Runtime.RingState
import BitMatrix.Core.Basic

/-!
# Binary-matrix ring adapter

This module specializes the framework-owned generic ring state to fixed-size
Boolean matrices.  It owns only matrix-specific projections.
-/


namespace GRWTSK.Algebra.LinearAlgebra.FixedMatrixRingState.Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c

namespace BitMatrix.Runtime

/-- Fixed-size Boolean-matrix entries in a generic ring. -/
abbrev FixedMatrixRingState
    (capacity rows cols : Nat) :=
  DAF.Runtime.RingState capacity (BitMatrix rows cols)

/-- Observe selected rows in every matrix-valued slot. -/
def selectedRowsObservation
    (select : Fin outRows → Fin rows)
    (state : FixedMatrixRingState capacity rows cols) :
    Fin capacity → BitMatrix outRows cols :=
  fun slot i j => state.slots slot (select i) j

/-- Observe selected columns in every matrix-valued slot. -/
def selectedColumnsObservation
    (select : Fin outCols → Fin cols)
    (state : FixedMatrixRingState capacity rows cols) :
    Fin capacity → BitMatrix rows outCols :=
  fun slot i j => state.slots slot i (select j)

end BitMatrix.Runtime
```
