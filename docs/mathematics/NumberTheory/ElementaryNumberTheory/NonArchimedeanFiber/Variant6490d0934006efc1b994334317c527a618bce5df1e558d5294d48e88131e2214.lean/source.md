# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.NonArchimedeanFiber.Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a66fce3f5a3b6edb7aea8127abef7e3a1aae523` · SHA-256 `e2585fed082bb44a75312ff4bc273d25c67c7d81824336e41b4dd363b9680730`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.MoravaLocalContract.Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.MoravaLocalContract.Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/AdelicInfinityTopos/NonArchimedeanFiber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.ResearchTopos.TMFFraming
import Folder.AdelicInfinityTopos.BadPrimeLocalization
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.AdelicInfinityTopos.NonArchimedeanFiber

Radiation role: research-boundary
BinaryMatrix spine: This module records finite-prime TMF/Morava placeholder fibers.
Ontology: adelic.nonarchimedean_fiber
Pivot role: arithmetic
Zero typology: none
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.MoravaLocalContract.Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4

namespace Folder
namespace AdelicInfinityTopos

structure MoravaLocalContract where
  p : Nat
  prime : Nat.Prime p
  height : Nat
  moravaK : SpectrumObject
  localization : Prop

structure NonArchimedeanTMFFiber where
  place : Place
  finitePrime : IsFinitePrimePlace place
  tmfLocalization? : Option BadPrimeTMFLocalization
  moravaLocal? : Option MoravaLocalContract
  spectrumObject : SpectrumObject
  localTorsionData : Prop
  localModularCompatibility : Prop
  localModularCompatibility_certified : localModularCompatibility

theorem nonarchimedean_fiber_is_finite
    (F : NonArchimedeanTMFFiber) :
    IsFinitePrimePlace F.place :=
  F.finitePrime

theorem nonarchimedean_local_modular_compatible
    (F : NonArchimedeanTMFFiber) :
    F.localModularCompatibility :=
  F.localModularCompatibility_certified

end AdelicInfinityTopos
end Folder
```
