# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeilCorrespondence.Variant04cd047402616db41fc8ffcee002b3edd76b39c03a593744e08f582bd516d1bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a961202119d7e0be521b2610a97f95e1ffb0a3c3` · SHA-256 `1ad79c986db8da936f8cb162126da452c09112c6258166258ad828f1608b5736`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeilBoundaryIdentification.Variant3a603cfcef2842a1504516985019eeac2e5e17dd29021789278f1845909bf094","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a603cfcef2842a1504516985019eeac2e5e17dd29021789278f1845909bf094","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WeilBoundaryIdentification.Variant3a603cfcef2842a1504516985019eeac2e5e17dd29021789278f1845909bf094","mathematical_subject":"Foundations.Unclassified","original_sha256":"3a603cfcef2842a1504516985019eeac2e5e17dd29021789278f1845909bf094","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Trace/WeilCorrespondence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Trace.OperatorBridge

/-!
# Weil boundary correspondence

Arithmetic truncation and operator realization defects remain visible in the
exact decomposition.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeilBoundaryIdentification.Variant3a603cfcef2842a1504516985019eeac2e5e17dd29021789278f1845909bf094

namespace Mathematics.SemiLocalDefect.Trace

universe uPrime uTest

structure WeilBoundaryIdentification
    (Prime : Type uPrime)
    [DecidableEq Prime]
    (Test : Type uTest) where
  arithmetic :
    SemiLocalArithmeticTail Prime Test
  operator :
    SemiLocalOperatorBridge Prime Test
  truncatedSidesAgree :
    ∀ cut test,
      arithmetic.truncatedWeil cut test =
        operator.truncatedArithmetic cut test
  exactDecomposition :
    ∀ cut test,
      arithmetic.globalWeil test =
        operator.packetEnergy cut test +
          arithmetic.tail cut test +
          operator.residual cut test
  localGlobalCompatibility : Prop
  localGlobalCompatibilityProof :
    localGlobalCompatibility

end Mathematics.SemiLocalDefect.Trace
```
