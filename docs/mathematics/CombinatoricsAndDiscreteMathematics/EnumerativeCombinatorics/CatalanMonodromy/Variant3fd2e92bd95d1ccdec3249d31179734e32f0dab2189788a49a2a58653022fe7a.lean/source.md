# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanMonodromy.Variant3fd2e92bd95d1ccdec3249d31179734e32f0dab2189788a49a2a58653022fe7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4542b51acf3cc64e23baea759c7c97445b19c532` · SHA-256 `e1f75f8d16f9df2f72b55e7984b91de00bd4d64351341b1da5ddbf198830c524`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanTorsionTransportPathCommutes.Variant89b37f3a5497862c049b6205eeec65b1f3cd0db097925c4b73f92fa496e2b9cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"89b37f3a5497862c049b6205eeec65b1f3cd0db097925c4b73f92fa496e2b9cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.CatalanTorsionTransportPathCommutes.Variant89b37f3a5497862c049b6205eeec65b1f3cd0db097925c4b73f92fa496e2b9cd","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"89b37f3a5497862c049b6205eeec65b1f3cd0db097925c4b73f92fa496e2b9cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Monodromy/CatalanMonodromy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Monodromy.CatalanTransport

/-!
# Folder.Theorem.Monodromy.CatalanMonodromy

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.monodromy.catalan_monodromy
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanTorsionTransportPathCommutes.Variant89b37f3a5497862c049b6205eeec65b1f3cd0db097925c4b73f92fa496e2b9cd

namespace Folder
namespace Monodromy

theorem catalan_torsion_transportPath_commutes
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
      (Fiber.transportPath M.expansion.transport p x) :=
  torsion_transportPath_commutes M p P x

theorem catalan_torsion_monodromy_roundtrip
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
    = x :=
  catalan_elliptic_monodromy_roundtrip M p P x

end Monodromy
end Folder
```
