# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalIndexNonzero.Variant5fe20eb52beae881eae3baffde72c18d06abc3c6299dc6deceddbebdc6cff27f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8259d66a3025fbee7d4aba2f268f175cf6b8a31` · SHA-256 `359413d967247c71bd51af1afc5ec0bdfb396039c9c120c9d23aaaf41cc4d905`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RelevantArithmeticFamily.Variant9aed678e06b2b167a9c411c806f9468f537d6d675aec8fbeb16400f2e6066cf1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9aed678e06b2b167a9c411c806f9468f537d6d675aec8fbeb16400f2e6066cf1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RelevantArithmeticFamily.Variant9aed678e06b2b167a9c411c806f9468f537d6d675aec8fbeb16400f2e6066cf1","mathematical_subject":"Foundations.Unclassified","original_sha256":"9aed678e06b2b167a9c411c806f9468f537d6d675aec8fbeb16400f2e6066cf1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/GlobalIndexNonzero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.CanonicalPath.GlobalIndexNonzero

Radiation role: research-boundary
BinaryMatrix spine: This module names the global K-index nonvanishing target, not BinaryMatrix data.
Ontology: canonical_path.global_index_nonzero
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RelevantArithmeticFamily.Variant9aed678e06b2b167a9c411c806f9468f537d6d675aec8fbeb16400f2e6066cf1

namespace Folder
namespace CanonicalPath

/--
Arithmetic objects relevant to the canonical path, together with their
contract-level K-theory indices.
-/
structure RelevantArithmeticFamily
    (M : DerivedSheaf.MellKTheory) where
  Object : Type _
  relevant : Object → Prop
  kIndexAt : Object → DerivedSheaf.KTheoryIndex M
  sourceLabel : String

/--
Uniform nonvanishing of the K-index over the relevant arithmetic family.

This is currently a contract surface: it records the theorem target as a field.
-/
structure GlobalKIndexNonzero
    (M : DerivedSheaf.MellKTheory)
    extends RelevantArithmeticFamily M where
  globalNonzero :
    ∀ x : Object, relevant x → (kIndexAt x).indexClass.Nonzero

theorem global_k_index_nonzero
    {M : DerivedSheaf.MellKTheory}
    (G : GlobalKIndexNonzero M)
    {x : G.Object}
    (h : G.relevant x) :
    (G.kIndexAt x).indexClass.Nonzero :=
  G.globalNonzero x h

/--
A named elliptic-family specialization of the same global nonzero target.

The fields are still supplied data; no BSD, modularity, or central L-value
nonvanishing theorem is proved here.
-/
structure CertifiedEllipticCurveFamily
    (M : DerivedSheaf.MellKTheory) where
  Curve : Type _
  relevantForGRHBoundary : Curve → Prop
  kIndex : Curve → DerivedSheaf.KTheoryIndex M
  uniformIndexNonzero :
    ∀ E : Curve, relevantForGRHBoundary E →
      (kIndex E).indexClass.Nonzero
  sourceLabel : String

theorem elliptic_family_global_index_nonzero
    {M : DerivedSheaf.MellKTheory}
    (E : CertifiedEllipticCurveFamily M)
    {x : E.Curve}
    (h : E.relevantForGRHBoundary x) :
    (E.kIndex x).indexClass.Nonzero :=
  E.uniformIndexNonzero x h

end CanonicalPath
end Folder
```
