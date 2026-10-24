# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Main.Variant5aae7cbdd05bbaa472b07e249afd6759fcd898e15e46bb93ee79bd953f56f5ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cd7bae8fb5c276e5ddc3459e14614be9edf4a1f` · SHA-256 `1e40e971a6784a5dd875a8275ff8277f5222c35fba42349db282652d5b1e79dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.Main.Variantabad31645a85c7a4054427fb4a1c103bd8d774ebc6da0c86bec8bb8e4a288bf5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abad31645a85c7a4054427fb4a1c103bd8d774ebc6da0c86bec8bb8e4a288bf5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Main.Variantabad31645a85c7a4054427fb4a1c103bd8d774ebc6da0c86bec8bb8e4a288bf5","mathematical_subject":"Foundations.Unclassified","original_sha256":"abad31645a85c7a4054427fb4a1c103bd8d774ebc6da0c86bec8bb8e4a288bf5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/SpectralProof/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SpectralProof.DAGIndex
import SpectralProof.Determinants.ZetaDet
import SpectralProof.Determinants.SpectralMap
import SpectralProof.Equivalences.FinalClosure


namespace GRWTSK.Analysis.FunctionalAnalysis.Main.Variantabad31645a85c7a4054427fb4a1c103bd8d774ebc6da0c86bec8bb8e4a288bf5

open SpectralProof

/-- 
Formal CLI entry point for the canonical spectral determinant project.
Run with `lake exe spectralProof`.
-/
def main : IO Unit := do
  IO.println "=== Spectral Proof Diagnostic ===\n"

  IO.println s!"dagIndex size: {dagIndex.length}"
  IO.println "Known DAG nodes:"
  for (label, thm) in dagIndex do
    IO.println s!"  {label} ↦ {thm}"

  IO.println "\nChecking key definitions..."
  IO.println "spectralMap(ρ) := (ρ - 1/2)/i"
  IO.println "zetaDet T λ := exp(-∑ₙ λⁿ / n · Tr(Tⁿ))"

  IO.println "\n✅ SpectralProof.Main loaded successfully."
```
