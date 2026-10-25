# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noise.Variant28546ee21b93a1bc019e214bbd1b618bc51047e74ed2fbaf16dbe1b89fda814d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `373e5b9d3f94889a90e758fb04d4a1b1078bfa4a` · SHA-256 `a5389245f3451e2cd8433d5cd7a1803a4547e0533194b218ce079b41cfa245a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoordinateCount.Varianta34b7fe26e5827bdead5549721e1b0f3e5408e323689e5fadf7cd16dce1b440d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a34b7fe26e5827bdead5549721e1b0f3e5408e323689e5fadf7cd16dce1b440d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CoordinateCount.Varianta34b7fe26e5827bdead5549721e1b0f3e5408e323689e5fadf7cd16dce1b440d","mathematical_subject":"Foundations.Unclassified","original_sha256":"a34b7fe26e5827bdead5549721e1b0f3e5408e323689e5fadf7cd16dce1b440d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/Noise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.Hypercube


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoordinateCount.Varianta34b7fe26e5827bdead5549721e1b0f3e5408e323689e5fadf7cd16dce1b440d

namespace Boolean.Cube

namespace Noise

/-- Coordinate sensitivity count for one coordinate. -/
def coordinateCount {n : Nat}
    (f : Hypercube.Function n)
    (i : Fin n) :
    Nat :=
  Hypercube.influenceCount f i

/-- Directed edge sensitivity count across all coordinates. -/
def edgeCount {n : Nat}
    (f : Hypercube.Function n) :
    Nat :=
  Hypercube.directedBoundaryCount f

/-- The vector of coordinate sensitivity counts. -/
def coordinateVector {n : Nat}
    (f : Hypercube.Function n) :
    Fin n → Nat :=
  Hypercube.influenceVector f

@[simp] theorem coordinateCount_eq_influenceCount {n : Nat}
    (f : Hypercube.Function n)
    (i : Fin n) :
    coordinateCount f i = Hypercube.influenceCount f i := rfl

@[simp] theorem edgeCount_eq_directedBoundaryCount {n : Nat}
    (f : Hypercube.Function n) :
    edgeCount f = Hypercube.directedBoundaryCount f := rfl

@[simp] theorem coordinateVector_eq_influenceVector {n : Nat}
    (f : Hypercube.Function n) :
    coordinateVector f = Hypercube.influenceVector f := rfl

end Noise

end Boolean.Cube
```
