# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Influence.Variant73ce9a738d95149e7707421c7293b214d23797168568495907fb13a6ac718088

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00d47d268423754f2e88fd4d5d81fd0433bc9050` · SHA-256 `cae1de72bd98f2489af0784f27aa73bf4070574c6b19c6e552fffdc83b3488b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.InfluenceEnergyCertificate.Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.InfluenceEnergyCertificate.Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/Influence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.TraceStability
import Mathlib.Data.Finset.Lattice.Fold

/-!
# Exact finite bit influence

Influence is the maximum single-flip observable change over the finite admitted
bitfield.  It is sensitivity data, not a concentration theorem.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.InfluenceEnergyCertificate.Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba

namespace Mathematics.SpectralClosure

theorem allBitfieldsNonempty
    (width : Nat) :
    (Finset.univ : Finset (Bitfield width)).Nonempty :=
  ⟨fun _ => false, Finset.mem_univ _⟩

noncomputable def bitInfluence
    {width : Nat}
    (observable : Bitfield width → ℝ)
    (coordinate : Fin width) : ℝ :=
  (Finset.univ : Finset (Bitfield width)).sup'
    (allBitfieldsNonempty width)
    (fun field =>
      |observable field -
        observable (flipAt field coordinate)|)

noncomputable def influenceEnergy
    {width : Nat}
    (observable : Bitfield width → ℝ) : ℝ :=
  ∑ coordinate, (bitInfluence observable coordinate) ^ 2

theorem observable_flip_change_le_influence
    {width : Nat}
    (observable : Bitfield width → ℝ)
    (coordinate : Fin width)
    (field : Bitfield width) :
    |observable field -
        observable (flipAt field coordinate)| ≤
      bitInfluence observable coordinate := by
  unfold bitInfluence
  exact Finset.le_sup'
    (fun candidate =>
      |observable candidate -
        observable (flipAt candidate coordinate)|)
    (Finset.mem_univ field)

structure InfluenceEnergyCertificate
    {width : Nat}
    (observable : Bitfield width → ℝ) where
  bound : ℝ
  boundNonnegative : 0 ≤ bound
  certified : influenceEnergy observable ≤ bound
  proofRef : SpectralId

end Mathematics.SpectralClosure
```
