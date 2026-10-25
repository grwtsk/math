# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Comparison.Variantd13bc869d80f79992405d38e72c0685a8c357467ee7e5f309a72e4e3f513b06f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0446cd93ba29163cbe1d89dc51651671ed425ba1` · SHA-256 `9a23d088ffdcb5c0a2e95a7b894af6c3e95c3d5f8fd0c825c709887f4f15b826`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuasiIsoChain.Variantaa7271c7a594fdcd2133bd4aacc8e92b8f5926b402120b3d706b21fe3d0c7305","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa7271c7a594fdcd2133bd4aacc8e92b8f5926b402120b3d706b21fe3d0c7305","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.QuasiIsoChain.Variantaa7271c7a594fdcd2133bd4aacc8e92b8f5926b402120b3d706b21fe3d0c7305","mathematical_subject":"Foundations.Unclassified","original_sha256":"aa7271c7a594fdcd2133bd4aacc8e92b8f5926b402120b3d706b21fe3d0c7305","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/PerfectComplex/Comparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.PerfectComplex.Core

/-!
# Composable chains of certified quasi-isomorphisms

The endpoints of `QuasiIsoChain` occur in its type, so adjacent arrows cannot
be mismatched.  A chain contains the certificates supplied by the selected
perfect-complex model; it does not infer chain-level data from state maps.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuasiIsoChain.Variantaa7271c7a594fdcd2133bd4aacc8e92b8f5926b402120b3d706b21fe3d0c7305

namespace DAF.PerfectComplex

universe uObj uHom uIso

variable {M : Model.{uObj, uHom, uIso}}

/-- A typed finite chain of certified quasi-isomorphisms. -/
inductive QuasiIsoChain (M : Model) : M.Object → M.Object → Type _
  | nil (C : M.Object) : QuasiIsoChain M C C
  | cons {C D E : M.Object} :
      CertifiedQuasiIso M C D →
      QuasiIsoChain M D E →
      QuasiIsoChain M C E

namespace QuasiIsoChain

variable {B C D E : M.Object}

/-- The certified composite of every arrow in a typed chain. -/
def composite {C D : M.Object} :
    QuasiIsoChain M C D → CertifiedQuasiIso M C D
  | .nil C => CertifiedQuasiIso.id M C
  | .cons f rest => f.comp (composite rest)

@[simp]
theorem composite_nil (C : M.Object) :
    (QuasiIsoChain.nil C).composite = CertifiedQuasiIso.id M C :=
  rfl

@[simp]
theorem composite_cons
    (f : CertifiedQuasiIso M B C)
    (rest : QuasiIsoChain M C D) :
    (QuasiIsoChain.cons f rest).composite =
      f.comp rest.composite :=
  rfl

/-- Append two composable certified chains. -/
def append {B C D : M.Object} :
    QuasiIsoChain M B C →
      QuasiIsoChain M C D →
      QuasiIsoChain M B D
  | .nil _, ys => ys
  | .cons f xs, ys => .cons f (append xs ys)

@[simp]
theorem nil_append (ys : QuasiIsoChain M C D) :
    (QuasiIsoChain.nil C).append ys = ys :=
  rfl

@[simp]
theorem cons_append
    (f : CertifiedQuasiIso M B C)
    (xs : QuasiIsoChain M C D)
    (ys : QuasiIsoChain M D E) :
    (QuasiIsoChain.cons f xs).append ys =
      QuasiIsoChain.cons f (xs.append ys) :=
  rfl

theorem composite_append
    (xs : QuasiIsoChain M B C)
    (ys : QuasiIsoChain M C D) :
    (xs.append ys).composite = xs.composite.comp ys.composite := by
  induction xs with
  | nil => simp
  | cons f rest ih =>
      simp only [append, composite_cons, ih]
      exact (CertifiedQuasiIso.comp_assoc f rest.composite ys.composite).symm

end QuasiIsoChain

end DAF.PerfectComplex
```
