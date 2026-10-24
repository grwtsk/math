# Complete source: GRWTSK.Algebra.TorsionShellComparison.Variant8cd88c14ceeed36328937fa2126c466b18ac70bb195b918698f0ba663b4eb4eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `198e0494bca4771717fc6807ae805994ef06513e` · SHA-256 `13c4fdd38490da3ee7b048722af4a656cfe9ff043fad2246a8ec548348589064`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ShellTwistOfZeroIsIdentity.Variant63ab1c327d255ce3e4013974f5ef032c42633397dbf4af23bd774cee98e6e5e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63ab1c327d255ce3e4013974f5ef032c42633397dbf4af23bd774cee98e6e5e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ShellTwistOfZeroIsIdentity.Variant63ab1c327d255ce3e4013974f5ef032c42633397dbf4af23bd774cee98e6e5e0","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"63ab1c327d255ce3e4013974f5ef032c42633397dbf4af23bd774cee98e6e5e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Research/TorsionShellComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Research.TorsionShellComparison

/-!
# Folder.Theorem.Research.TorsionShellComparison

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.torsion_shell_comparison
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.ShellTwistOfZeroIsIdentity.Variant63ab1c327d255ce3e4013974f5ef032c42633397dbf4af23bd774cee98e6e5e0

namespace Folder
namespace Theorem
namespace Research
namespace TorsionShellComparison

theorem shell_twist_of_zero_is_identity
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : Folder.Research.TorsionShellComparison.EllipticToShellTorsion G s) :
    R.map (Arithmetic.ECPoint.infinity (E := E)) =
      Folder.Expansion.ShellTorsion.id s :=
  Folder.Research.TorsionShellComparison.shell_twist_of_zero_is_identity R

theorem shell_twist_respects_add
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : Folder.Research.TorsionShellComparison.EllipticToShellTorsion G s)
    (P Q : Arithmetic.ECPoint E) :
    R.map (G.add P Q) =
      Folder.Expansion.ShellTorsion.comp (R.map P) (R.map Q) :=
  Folder.Research.TorsionShellComparison.shell_twist_respects_add R P Q

end TorsionShellComparison
end Research
end Theorem
end Folder
```
