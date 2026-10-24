# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanTransport.Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `274b9f769f4e2edc60b7284f4333cd2636b96e63` · SHA-256 `2257fb6ea6dbc847cc39e0b054461ede1f36706888bdaf68e45ff23effa59e2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanExpansionSystem.Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.CatalanExpansionSystem.Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"a9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Monodromy/CatalanTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Catalan.ExpansionIndex
import Folder.Fiber.Coherence
import Folder.Monodromy.EllipticTorsionAction

/-!
# Folder.Monodromy.CatalanTransport

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: monodromy.catalan_transport
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: torsion
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanExpansionSystem.Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8

namespace Folder
namespace Monodromy

def ExpandStep (T U : Catalan.CTree) : Prop :=
  ∃ a : Catalan.Address, T.expandAt? a = some U

structure CatalanExpansionSystem
    (k : Nat) where
  bundle : Fiber.Bundle Catalan.CTree
  Step : Catalan.CTree → Catalan.CTree → Prop
  transport : Fiber.TransportSystem bundle Step

def contractPath
    {k : Nat}
    (C : CatalanExpansionSystem k)
    {T U : Catalan.CTree}
    (p : Path C.Step T U) :
    C.bundle.Fiber U ≃ C.bundle.Fiber T :=
  (Fiber.transportPath C.transport p).symm

theorem expand_contract_roundtrip
    {k : Nat}
    (C : CatalanExpansionSystem k)
    {T U : Catalan.CTree}
    (p : Path C.Step T U)
    (x : C.bundle.Fiber T) :
    (Fiber.transportPath C.transport p).symm
      ((Fiber.transportPath C.transport p) x) = x :=
  Equiv.symm_apply_apply _ x

theorem contract_expand_roundtrip
    {k : Nat}
    (C : CatalanExpansionSystem k)
    {T U : Catalan.CTree}
    (p : Path C.Step T U)
    (y : C.bundle.Fiber U) :
    (Fiber.transportPath C.transport p)
      ((Fiber.transportPath C.transport p).symm y) = y :=
  Equiv.apply_symm_apply _ y

structure CatalanMonodromySystem
    {K : Type _} [Field K]
    (k : Nat)
    (E : Arithmetic.ShortWeierstrass K)
    (G : Arithmetic.ECGroupLaw E) where
  expansion : CatalanExpansionSystem k
  torsionAction :
    ∀ T : Catalan.CTree,
      TorsionAction G (expansion.bundle.Fiber T)
  compatible :
    ∀ {T U} (e : expansion.Step T U)
      (P : Arithmetic.ECPoint E)
      (x : expansion.bundle.Fiber T),
        expansion.transport.transportStep e
          ((torsionAction T).act P x)
        =
        (torsionAction U).act P
          (expansion.transport.transportStep e x)

theorem torsion_transportPath_commutes
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    (M : CatalanMonodromySystem k E G)
    {T U : Catalan.CTree}
    (p : Path M.expansion.Step T U)
    (P : Arithmetic.ECPoint E)
    (x : M.expansion.bundle.Fiber T) :
    Fiber.transportPath M.expansion.transport p
      ((M.torsionAction T).act P x)
    =
    (M.torsionAction U).act P
      (Fiber.transportPath M.expansion.transport p x) := by
  induction p with
  | nil =>
      rfl
  | cons e rest ih =>
      simp [Fiber.transportPath, M.compatible e P x, ih]

theorem catalan_elliptic_monodromy_roundtrip
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    (M : CatalanMonodromySystem k E G)
    {T U : Catalan.CTree}
    (p : Path M.expansion.Step T U)
    (P : Arithmetic.ECPoint E)
    (x : M.expansion.bundle.Fiber T) :
    (Fiber.transportPath M.expansion.transport p).symm
      ((M.torsionAction U).act (G.neg P)
        ((M.torsionAction U).act P
          (Fiber.transportPath M.expansion.transport p x)))
    = x := by
  rw [torsion_action_roundtrip]
  exact Equiv.symm_apply_apply _ x

end Monodromy
end Folder
```
