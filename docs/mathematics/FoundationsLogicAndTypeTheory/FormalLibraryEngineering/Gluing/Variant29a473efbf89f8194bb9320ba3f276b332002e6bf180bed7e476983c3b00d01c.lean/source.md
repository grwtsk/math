# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gluing.Variant29a473efbf89f8194bb9320ba3f276b332002e6bf180bed7e476983c3b00d01c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc1e72fa7ca8a3787afff396b79dcee191f44e8b` · SHA-256 `78d693816077f2b4c56c29e33de94204d1766f5dc474593063bf9a16905a9e93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GluingCertificate.Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GluingCertificate.Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0","mathematical_subject":"Foundations.Unclassified","original_sha256":"3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Knowledge/Sheaf/Gluing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Knowledge.Sheaf.Presheaf


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GluingCertificate.Variant3e123975f32d604d2ba7ef442d62a5862dff5c70cd52ff6e6731fc645eeefcc0

namespace Think.Knowledge.Sheaf

/-! Equalizer-style knowledge gluing theorem boundary. -/

def Matching
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i)) : Prop :=
  ∀ i j,
    F.res ((c.overlap i j).p₁) (s i) =
    F.res ((c.overlap i j).p₂) (s j)

def Glues
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i))
  (g : F.Sec V) : Prop :=
  ∀ i, F.res (c.map i) g = s i

structure GluingCertificate
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i)) where
  glued : F.Sec V
  matching : Matching F c s
  restricts : Glues F c s glued
  unique : ∀ h : F.Sec V, Glues F c s h → h = glued

def ExistsUniqueGluing
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i)) : Prop :=
  ∃ g : F.Sec V,
    Glues F c s g ∧ ∀ h : F.Sec V, Glues F c s h → h = g

theorem gluing_sound
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i))
  (cert : GluingCertificate F c s) :
  ExistsUniqueGluing F c s :=
by
  exact ⟨cert.glued, cert.restricts, cert.unique⟩

end Think.Knowledge.Sheaf
```
