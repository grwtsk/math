# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Orbit.Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81c3230a7364f35c41b2ecb0d0e5d4e223122e50` · SHA-256 `75b2abd389c1fdfba311d55f64dcb1aad41fa4c4498e4858af16c9d423c0db83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RelationLatticeCertificate.Variant01d98519feaf53da6e7bae9e601637790154ea676fc27cde505568e9d198e582","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01d98519feaf53da6e7bae9e601637790154ea676fc27cde505568e9d198e582","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RelationLatticeCertificate.Variant01d98519feaf53da6e7bae9e601637790154ea676fc27cde505568e9d198e582","mathematical_subject":"Computation.DataStructures","original_sha256":"01d98519feaf53da6e7bae9e601637790154ea676fc27cde505568e9d198e582","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/Orbit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.List.Basic

/-!
# Exact orbit-character coverage

An orbit certificate decides precisely the supplied arithmetic relation
lattice.  Character projection retains every finite weight component rather
than treating the invariant average as a complete decomposition.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RelationLatticeCertificate.Variant01d98519feaf53da6e7bae9e601637790154ea676fc27cde505568e9d198e582

namespace Mathematics.AbelReynolds

abbrev Weight := List Int

def Weight.difference (left right : Weight) : Weight :=
  List.zipWith (· - ·) left right

structure RelationLatticeCertificate where
  basis : List Weight
  inRelation : Weight → Bool
  arithmeticRelation : Weight → Prop
  soundComplete :
    ∀ weight, inRelation weight = true ↔ arithmeticRelation weight
  reflexive :
    ∀ weight, inRelation (Weight.difference weight weight) = true

structure WeightedComponent (Value : Type*) where
  weight : Weight
  value : Value
  deriving DecidableEq, Repr

def sameCharacter
    (certificate : RelationLatticeCertificate)
    (left right : Weight) : Bool :=
  certificate.inRelation (Weight.difference left right)

def characterProjection
    (certificate : RelationLatticeCertificate)
    (representative : Weight)
    (components : List (WeightedComponent Value)) :
    List (WeightedComponent Value) :=
  components.filter
    (fun component =>
      sameCharacter certificate component.weight representative)

theorem component_mem_own_projection
    (certificate : RelationLatticeCertificate)
    (component : WeightedComponent Value)
    (components : List (WeightedComponent Value))
    (member : component ∈ components) :
    component ∈
      characterProjection certificate component.weight components := by
  simp only [characterProjection, List.mem_filter]
  exact ⟨member, certificate.reflexive component.weight⟩

structure CharacterCoverageCertificate (Value : Type*) where
  relation : RelationLatticeCertificate
  components : List (WeightedComponent Value)
  representatives : List Weight
  retained :
    ∀ component ∈ components,
      ∃ representative ∈ representatives,
        component ∈
          characterProjection relation representative components

structure AbelReynoldsAgreement (Value : Type*) where
  projector : Weight → Value → Value
  abelBoundary : Weight → Value → Value
  agreement :
    ∀ weight value,
      projector weight value = abelBoundary weight value

def invariantWeight (weight : Weight) : Bool :=
  weight.all (· = 0)

def invariantProjection
    (components : List (WeightedComponent Value)) :
    List (WeightedComponent Value) :=
  components.filter (fun component => invariantWeight component.weight)

theorem nontrivial_component_is_not_detected_by_invariant_projection
    (value : Value) :
    invariantProjection
        [{ weight := [1], value := value }] = [] ∧
      ([{ weight := [1], value := value }] :
        List (WeightedComponent Value)) ≠ [] := by
  simp [invariantProjection, invariantWeight]

end Mathematics.AbelReynolds
```
