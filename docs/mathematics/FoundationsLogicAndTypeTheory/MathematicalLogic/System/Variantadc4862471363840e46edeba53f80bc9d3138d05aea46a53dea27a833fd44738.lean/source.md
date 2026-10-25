# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.System.Variantadc4862471363840e46edeba53f80bc9d3138d05aea46a53dea27a833fd44738

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b536cd1e2dc5993b5258173959b183bb23b34be` · SHA-256 `a688a2df81738ebe1049a54132f4bc772506095ef421640afe1ff9a68ac2f389`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LevelwiseSystemFactor.Variant3760544749af3366aaf4033daacab61fa25837ed2045c950422bf5b4c4dda661","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3760544749af3366aaf4033daacab61fa25837ed2045c950422bf5b4c4dda661","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.LevelwiseSystemFactor.Variant3760544749af3366aaf4033daacab61fa25837ed2045c950422bf5b4c4dda661","mathematical_subject":"Logic.Foundations","original_sha256":"3760544749af3366aaf4033daacab61fa25837ed2045c950422bf5b4c4dda661","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fabric/System.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Fabric.Reaction

/-!
# System-level strengths of fabric reactions

Every cell map of a reaction is already a `DAF.System.Hom`.  Surjectivity is
additional proof data, packaged here as `LevelwiseSystemFactor`.  No arbitrary
realization is assumed to preserve these factors; that conclusion belongs to
the separate capability in `DAF.Fabric.Realization`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LevelwiseSystemFactor.Variant3760544749af3366aaf4033daacab61fa25837ed2045c950422bf5b4c4dda661

namespace DAF.Fabric

/-- A reaction whose state map is surjective at every source cell. -/
structure LevelwiseSystemFactor
    {F G : Fabric}
    (reaction : Reaction F G) : Prop where
  state_surjective :
    ∀ {n : Nat} (x : F.Cell n),
      Function.Surjective (reaction.cellMap x).mapState

namespace LevelwiseSystemFactor

/-- Recover the existing `DAF.System.Factor` at a selected cell. -/
def factor
    {F G : Fabric}
    {reaction : Reaction F G}
    (h : LevelwiseSystemFactor reaction)
    {n : Nat}
    (x : F.Cell n) :
    DAF.System.Factor
      (F.cellSystem x)
      (G.cellSystem (reaction.mapCell x)) where
  toHom := (reaction.cellMap x).toHom
  state_surjective := h.state_surjective x

@[simp]
theorem factor_toHom
    {F G : Fabric}
    {reaction : Reaction F G}
    (h : LevelwiseSystemFactor reaction)
    {n : Nat}
    (x : F.Cell n) :
    (h.factor x).toHom = (reaction.cellMap x).toHom :=
  rfl

/-- The identity reaction is levelwise a system factor. -/
def id (F : Fabric) : LevelwiseSystemFactor (Reaction.id F) where
  state_surjective := by
    intro n x state
    exact ⟨state, rfl⟩

end LevelwiseSystemFactor

end DAF.Fabric
```
