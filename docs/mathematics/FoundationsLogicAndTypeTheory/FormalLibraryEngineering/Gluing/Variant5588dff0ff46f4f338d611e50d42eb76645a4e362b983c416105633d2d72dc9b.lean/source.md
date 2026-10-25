# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gluing.Variant5588dff0ff46f4f338d611e50d42eb76645a4e362b983c416105633d2d72dc9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1e09deb89b8cca33ff1e3f33e94699cab4fcb86` · SHA-256 `0ff87509033db4ca84011256f7699164d151fede48532bcb727a4bc1d1fcf99c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScaledGluing.Variant71ec0bf494f161dd5e742bbef83ab8f9e83105152f91f4cea64a9a90e04d6c07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71ec0bf494f161dd5e742bbef83ab8f9e83105152f91f4cea64a9a90e04d6c07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ScaledGluing.Variant71ec0bf494f161dd5e742bbef83ab8f9e83105152f91f4cea64a9a90e04d6c07","mathematical_subject":"Foundations.Unclassified","original_sha256":"71ec0bf494f161dd5e742bbef83ab8f9e83105152f91f4cea64a9a90e04d6c07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Epistemology/Induction/Gluing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Epistemology.Induction.Core


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScaledGluing.Variant71ec0bf494f161dd5e742bbef83ab8f9e83105152f91f4cea64a9a90e04d6c07

namespace Think.Epistemology.Induction

/-! Scaling of certified Knowledge sheaf gluing. -/

def ScaledGluing
    {C : Think.Knowledge.Sheaf.FinCat} {V : C.Obj}
    (F : Think.Knowledge.Sheaf.Presheaf C)
    (c : Think.Knowledge.Sheaf.Cover C V)
    (s : (i : c.I) → F.Sec (c.U i))
    (n : Nat) : Prop :=
  StableAtScale (Think.Knowledge.Sheaf.ExistsUniqueGluing F c s) n

theorem gluing_scales
    {C : Think.Knowledge.Sheaf.FinCat} {V : C.Obj}
    (F : Think.Knowledge.Sheaf.Presheaf C)
    (c : Think.Knowledge.Sheaf.Cover C V)
    (s : (i : c.I) → F.Sec (c.U i))
    (cert : Think.Knowledge.Sheaf.GluingCertificate F c s) :
    ∀ n : Nat, ScaledGluing F c s n :=
by
  exact atScale_of_base (Think.Knowledge.Sheaf.gluing_sound F c s cert)

end Think.Epistemology.Induction
```
