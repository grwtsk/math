# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirichletInverse.Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad1096fbeef7dbf8f9a39f7870048c735c18e24a` · SHA-256 `4c99edc5b87d1f93f2b5c3092b6d06514d72a83c0f1f1d2a214e9e39f7900c6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasDirichletInverse.Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HasDirichletInverse.Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6","mathematical_subject":"Foundations.Unclassified","original_sha256":"5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/DirichletInverse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.DirichletCauchyProductGeneric

/-!
# Folder.Rebuild.AnalyticNumberTheory.DirichletInverse

Dirichlet inverse API for absolutely convergent complex Dirichlet series.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasDirichletInverse.Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory

def HasDirichletInverse
    (f g : ArithFn Complex) : Prop :=
  dirichletConv f g = epsilonComplex

theorem one_has_mobius_inverse :
    HasDirichletInverse oneArithFnComplex mobiusComplex :=
  one_conv_mobius_eq_epsilon_complex

theorem dirichletSeries_mul_inverse_eq_one
    (f g : ArithFn Complex)
    {s : Complex}
    (hf : ComplexDirichletAbsSummable f s)
    (hg : ComplexDirichletAbsSummable g s)
    (hinv : HasDirichletInverse f g) :
    complexDirichletSeries f s * complexDirichletSeries g s = 1 := by
  rw [complexDirichletSeries_mul_of_absSummable f g s hf hg]
  rw [hinv]
  exact complexDirichletSeries_epsilon s

theorem dirichletSeries_ne_zero_of_has_absSummable_inverse
    (f g : ArithFn Complex)
    {s : Complex}
    (hf : ComplexDirichletAbsSummable f s)
    (hg : ComplexDirichletAbsSummable g s)
    (hinv : HasDirichletInverse f g) :
    complexDirichletSeries f s ≠ 0 := by
  intro hzero
  have hmul :=
    dirichletSeries_mul_inverse_eq_one f g hf hg hinv
  rw [hzero, zero_mul] at hmul
  norm_num at hmul

end AnalyticNumberTheory
end Rebuild
end Folder
```
