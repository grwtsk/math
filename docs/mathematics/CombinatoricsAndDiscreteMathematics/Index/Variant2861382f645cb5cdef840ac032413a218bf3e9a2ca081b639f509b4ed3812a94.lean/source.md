# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Index.Variant2861382f645cb5cdef840ac032413a218bf3e9a2ca081b639f509b4ed3812a94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3393989195a7e4ccd74df5042192bbba300c50b` · SHA-256 `77fed7764e98fc0a796b39f7a1dee627e4951c4ccbdb914da65c59f47d999a2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BondProfile.Variant61ddd674c4a185bd8c2369c52e856d523fd19b8d77537cab2b20d474480411f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61ddd674c4a185bd8c2369c52e856d523fd19b8d77537cab2b20d474480411f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BondProfile.Variant61ddd674c4a185bd8c2369c52e856d523fd19b8d77537cab2b20d474480411f1","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"61ddd674c4a185bd8c2369c52e856d523fd19b8d77537cab2b20d474480411f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/TensorNetwork/Index.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Fintype.BigOperators

/-!
# Finite tensor-network indices

The physical configuration space and the virtual bond profile are distinct.
The basis cardinality is `D ^ N`; the qubit specialization is a separate
theorem rather than a silent replacement of `D` by two.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BondProfile.Variant61ddd674c4a185bd8c2369c52e856d523fd19b8d77537cab2b20d474480411f1

namespace Mathematics.TensorNetwork

/-- One physical basis configuration for `N` sites of local dimension `D`. -/
abbrev PhysicalConfiguration (N D : Nat) :=
  Fin N → Fin D

/-- The exact number of physical basis configurations. -/
theorem physicalConfiguration_card (N D : Nat) :
    Fintype.card (PhysicalConfiguration N D) = D ^ N := by
  simp [PhysicalConfiguration]

/-- The binary specialization is valid only after fixing local dimension two. -/
theorem qubitConfiguration_card (N : Nat) :
    Fintype.card (PhysicalConfiguration N 2) = 2 ^ N := by
  simp [PhysicalConfiguration]

/-- Open-boundary virtual dimensions, including both one-dimensional ends. -/
structure BondProfile (sites : Nat) where
  dimension : Fin (sites + 1) → Nat
  positive : ∀ index, 0 < dimension index
  leftBoundary :
    dimension ⟨0, Nat.zero_lt_succ sites⟩ = 1
  rightBoundary :
    dimension ⟨sites, Nat.lt_succ_self sites⟩ = 1

/-- A uniform bond bound is additional supplied data. -/
def BondProfile.UniformlyBounded
    {sites : Nat}
    (profile : BondProfile sites)
    (bound : Nat) : Prop :=
  ∀ index, profile.dimension index ≤ bound

/-- Virtual indices for one complete contraction path. -/
abbrev VirtualConfiguration
    {sites : Nat}
    (profile : BondProfile sites) :=
  ∀ index, Fin (profile.dimension index)

end Mathematics.TensorNetwork
```
