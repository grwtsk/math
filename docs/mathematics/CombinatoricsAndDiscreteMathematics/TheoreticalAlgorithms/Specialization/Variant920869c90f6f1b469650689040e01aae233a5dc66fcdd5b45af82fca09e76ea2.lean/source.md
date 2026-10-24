# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Specialization.Variant920869c90f6f1b469650689040e01aae233a5dc66fcdd5b45af82fca09e76ea2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91184e90050ee1d34d1af6a0cc0f44eb1c8fa869` · SHA-256 `7949ee261bc7912c07819a50bcdaff42a39c2fb6062be82d5b58c9714f856f0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ClassPrimeFactorization.Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ClassPrimeFactorization.Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd","mathematical_subject":"Computation.DataStructures","original_sha256":"81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/Specialization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.Template

/-!
# Class--prime factorization

Class binding and prime specialization are distinct total maps.  A bound class
template may retain typed prime holes, but its class values cannot depend on a
prime environment.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ClassPrimeFactorization.Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd

namespace Mathematics.AbelReynolds

universe u v

structure ClassPrimeFactorization
    (ClassEnvironment : Type u)
    (PrimeEnvironment : Type v)
    (BoundClass Output : Type*) where
  bindClass : ClassEnvironment → BoundClass
  bindPrime : BoundClass → PrimeEnvironment → Output
  evalTemplate : ClassEnvironment → PrimeEnvironment → Output
  factors :
    ∀ classEnvironment primeEnvironment,
      evalTemplate classEnvironment primeEnvironment =
        bindPrime (bindClass classEnvironment) primeEnvironment

theorem ClassPrimeFactorization.class_binding_deterministic
    {ClassEnvironment : Type u}
    {PrimeEnvironment : Type v}
    {BoundClass Output : Type*}
    (factorization :
      ClassPrimeFactorization
        ClassEnvironment PrimeEnvironment BoundClass Output)
    (classEnvironment : ClassEnvironment) :
    factorization.bindClass classEnvironment =
      factorization.bindClass classEnvironment :=
  rfl

structure PrimeBinding where
  hole : PrimeHole
  value : Value
  validationCertificateId : String

def PrimeBinding.SortCorrect (binding : PrimeBinding) : Prop :=
  binding.value.sort = binding.hole.sort

def PrimeBinding.BoundaryCorrect
    (binding : PrimeBinding)
    (target : BoundaryKey)
    (transports : List BoundaryTransport) : Prop :=
  MayConsume binding.hole.boundary target transports

end Mathematics.AbelReynolds
```
