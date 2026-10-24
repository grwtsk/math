# Complete source: GRWTSK.Algebra.EllipticShellBridge.Variant5ac897b39715cbde1218a4e83e4685606bcfc7edc482f3658d00799e0ae65cde

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc4db6c7a737e2db6edd79d047b35bcf2e17b988` · SHA-256 `e9bc97fd539fd98304e2f8762fffc8aaa198389b7b6ad708858e57d77a457ab5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ShellWeilCompatible.Variantecadd7920cb7ee9ece887eca026bf8dedde0444dff5be8cfef5b0281d0f34498","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecadd7920cb7ee9ece887eca026bf8dedde0444dff5be8cfef5b0281d0f34498","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ShellWeilCompatible.Variantecadd7920cb7ee9ece887eca026bf8dedde0444dff5be8cfef5b0281d0f34498","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"ecadd7920cb7ee9ece887eca026bf8dedde0444dff5be8cfef5b0281d0f34498","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Monodromy/EllipticShellBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Monodromy.EllipticShellBridge

/-!
# Folder.Theorem.Monodromy.EllipticShellBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.monodromy.elliptic_shell_bridge
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.ShellWeilCompatible.Variantecadd7920cb7ee9ece887eca026bf8dedde0444dff5be8cfef5b0281d0f34498

namespace Folder
namespace Theorem
namespace Monodromy
namespace EllipticShellBridge

theorem shell_weil_compatible
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {m d k : Nat}
    {W : Arithmetic.WeilPairingContract G m}
    (C : Folder.Monodromy.ShellWeilCompatibility G m d k W) :
    Folder.Monodromy.LoopPhaseMatchesWeil
      W C.shell C.P C.Q C.exponent C.distinguishedLoop.2 :=
  Folder.Monodromy.shell_weil_compatible C

theorem selected_shell_twist_has_preimage
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {m d k : Nat}
    {R : Arithmetic.MTorsionPoint G m → Folder.Cellular.Cochain1 d k m}
    {T : Folder.Monodromy.SelectedShellTwistGroup d k m}
    (h : Folder.Monodromy.SurjectiveOntoSelectedShellTwists R T)
    {τ : Folder.Cellular.Cochain1 d k m}
    (hτ : τ ∈ T.Twist) :
    ∃ P, R P = τ :=
  Folder.Monodromy.selected_shell_twist_has_preimage h hτ

end EllipticShellBridge
end Monodromy
end Theorem
end Folder
```
