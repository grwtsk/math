# Complete source: GRWTSK.Algebra.GroupTheory.LocalSystem.Variantf0ac6e9572bc95e6f9c19617e6c31f35f1034c57a27827240d857180f2188f43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a70ff6cd76a0ca93bda04563276bce9610fe9be7` · SHA-256 `e47bae92e7897ad618acd554c75c5ca425974c4785701f42dcf2a78078e5e6c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.IntegralLocalSystem.Variant583a04b0fe5173b75d9c40f81f120446cdbe4df856adbca7f40bf5d9503761d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"583a04b0fe5173b75d9c40f81f120446cdbe4df856adbca7f40bf5d9503761d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.IntegralLocalSystem.Variant583a04b0fe5173b75d9c40f81f120446cdbe4df856adbca7f40bf5d9503761d3","mathematical_subject":"Algebra.Groups","original_sha256":"583a04b0fe5173b75d9c40f81f120446cdbe4df856adbca7f40bf5d9503761d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/LocalSystem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.GramField

/-!
# Integral local systems and scalar extension

The monodromy acts on an integral lattice and on its real scalar extension.
Their compatibility is exact data.  No cover or metric is inferred from the
monodromy alone.
-/


namespace GRWTSK.Algebra.GroupTheory.IntegralLocalSystem.Variant583a04b0fe5173b75d9c40f81f120446cdbe4df856adbca7f40bf5d9503761d3

namespace Mathematics.Homology

abbrev IntegralFiber (rank : Nat) := Fin rank → ℤ
abbrev RealFiber (rank : Nat) := Fin rank → ℝ

/-- Coordinatewise scalar extension from an integral fiber to a real fiber. -/
def integralFiberToReal
    {rank : Nat} (vector : IntegralFiber rank) :
    RealFiber rank :=
  fun index ↦ (vector index : ℝ)

/-- A fixed-rank certified integral local system over a loop group. -/
structure IntegralLocalSystem
    (Loop : Type*) [Group Loop] (rank : Nat) where
  integralMonodromy :
    Loop →* (IntegralFiber rank ≃ₗ[ℤ] IntegralFiber rank)
  realMonodromy :
    Loop →* (RealFiber rank ≃ₗ[ℝ] RealFiber rank)
  scalarExtensionCompatible :
    ∀ loop vector,
      realMonodromy loop (integralFiberToReal vector) =
        integralFiberToReal (integralMonodromy loop vector)
  monodromyDigest : Digest
  localSystemCertificate : ObjectAddress

end Mathematics.Homology
```
