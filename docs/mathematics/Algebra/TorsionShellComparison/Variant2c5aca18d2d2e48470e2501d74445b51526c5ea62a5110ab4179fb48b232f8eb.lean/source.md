# Complete source: GRWTSK.Algebra.TorsionShellComparison.Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1b6413eef79762e570a974e50f354222c3730f3` · SHA-256 `cb429d855e51c760c4773971098f7c308402735b57c2abbb2d24ae450b691ffe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.EllipticToShellTorsion.Variantec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.EllipticToShellTorsion.Variantec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"ec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Research/TorsionShellComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Arithmetic.Torsion
import Folder.Expansion.ShellTorsion
import Folder.Monodromy.EllipticTorsionAction

/-!
# Folder.Research.TorsionShellComparison

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.torsion_shell_comparison
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.EllipticToShellTorsion.Variantec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8

namespace Folder
namespace Research
namespace TorsionShellComparison

abbrev ShellTwistGroup
    (s : Carrier.GridShape) :=
  Folder.Expansion.ShellTorsion s

structure EllipticToShellTorsion
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    (G : Arithmetic.ECGroupLaw E)
    (s : Carrier.GridShape) where
  map : Arithmetic.ECPoint E → ShellTwistGroup s
  map_zero :
    map (Arithmetic.ECPoint.infinity (E := E)) =
      Folder.Expansion.ShellTorsion.id s
  map_add :
    ∀ P Q,
      map (G.add P Q) =
        Folder.Expansion.ShellTorsion.comp (map P) (map Q)

def UsesTorsionClass
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : EllipticToShellTorsion G s)
    (P : Arithmetic.ECPoint E) : Prop :=
  R.map P ≠ Folder.Expansion.ShellTorsion.id s

theorem shell_twist_of_zero_is_identity
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : EllipticToShellTorsion G s) :
    R.map (Arithmetic.ECPoint.infinity (E := E)) =
      Folder.Expansion.ShellTorsion.id s :=
  R.map_zero

theorem shell_twist_respects_add
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : EllipticToShellTorsion G s)
    (P Q : Arithmetic.ECPoint E) :
    R.map (G.add P Q) =
      Folder.Expansion.ShellTorsion.comp (R.map P) (R.map Q) :=
  R.map_add P Q

end TorsionShellComparison
end Research
end Folder
```
