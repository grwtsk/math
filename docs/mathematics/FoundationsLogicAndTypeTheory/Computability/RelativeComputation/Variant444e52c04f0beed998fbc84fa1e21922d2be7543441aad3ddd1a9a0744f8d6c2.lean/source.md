# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.RelativeComputation.Variant444e52c04f0beed998fbc84fa1e21922d2be7543441aad3ddd1a9a0744f8d6c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63fa517117dd5bcb64448a93db6407041cd04e78` · SHA-256 `9687560f000bd84523b0cf4d933f202155c7c76bcba216690adf3e46b1849f91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.Computability
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Computability.EveryFunctionIsComputableRelativeToItsEvaluationOracle.Variant28fd6c61bcc6a8d890e567e0cb50fe1da12853b96e25ad86f45e0cdd1ef1dafa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28fd6c61bcc6a8d890e567e0cb50fe1da12853b96e25ad86f45e0cdd1ef1dafa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Computability.SourceCorpus.EveryFunctionIsComputableRelativeToItsEvaluationOracle.Variant28fd6c61bcc6a8d890e567e0cb50fe1da12853b96e25ad86f45e0cdd1ef1dafa","mathematical_subject":"Computation.Computability","original_sha256":"28fd6c61bcc6a8d890e567e0cb50fe1da12853b96e25ad86f45e0cdd1ef1dafa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/Oracle/RelativeComputation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.Oracle.ArithmeticHierarchy

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.Computability.EveryFunctionIsComputableRelativeToItsEvaluationOracle.Variant28fd6c61bcc6a8d890e567e0cb50fe1da12853b96e25ad86f45e0cdd1ef1dafa

namespace Surface
namespace Legacy

theorem every_function_is_computable_relative_to_its_evaluation_oracle
    {α β : Type} (f : α -> β) :
    ∃ O : EvaluationOracle α β f,
      OracleComputableRelativeTo O.oracle f := by
  let O : EvaluationOracle α β f :=
    { oracle := { answer := f }, evaluates := by intro x; rfl }
  exact ⟨O, True.intro⟩

end Legacy
end Surface
```
