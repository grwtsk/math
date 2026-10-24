# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteField.Variant22d81f254aca4c5b21d2efcdfcb54259d6c0c417ededb7fc35aec84a80db4c81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9373d550073057ad362629dee496bde84832f313` · SHA-256 `1aec2c4320ff21e5e2d5fd60a1537274cce98037711aa5366e89f452523e68d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.F2Elements.Variant3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.F2Elements.Variant3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08","mathematical_subject":"Computation.DataStructures","original_sha256":"3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/FiniteField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.Field


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.F2Elements.Variant3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08

namespace Surface.Arithmetic

/-!
# Finite fields and explicit enumeration

The definitions here keep finite counting honest: a finite-field interface is not
enough by name alone; counting consumes the supplied enumeration certificate.
-/

def F2Elements : List (Fin 2) :=
  [⟨0, by decide⟩, ⟨1, by decide⟩]

theorem F2Elements_nodup : F2Elements.Nodup := by
  decide

theorem F2Elements_exhaustive : ∀ x : Fin 2, x ∈ F2Elements := by
  intro x
  cases x with
  | mk val isLt =>
    have h : val = 0 ∨ val = 1 := by omega
    cases h with
    | inl h0 =>
        subst val
        simp [F2Elements]
    | inr h1 =>
        subst val
        simp [F2Elements]

def F3Elements : List (Fin 3) :=
  [⟨0, by decide⟩, ⟨1, by decide⟩, ⟨2, by decide⟩]

theorem F3Elements_nodup : F3Elements.Nodup := by
  decide

theorem F3Elements_exhaustive : ∀ x : Fin 3, x ∈ F3Elements := by
  intro x
  cases x with
  | mk val isLt =>
    have h : val = 0 ∨ val = 1 ∨ val = 2 := by omega
    cases h with
    | inl h0 =>
        subst val
        simp [F3Elements]
    | inr hrest =>
        cases hrest with
        | inl h1 =>
            subst val
            simp [F3Elements]
        | inr h2 =>
            subst val
            simp [F3Elements]

def F5Elements : List (Fin 5) :=
  [⟨0, by decide⟩, ⟨1, by decide⟩, ⟨2, by decide⟩,
    ⟨3, by decide⟩, ⟨4, by decide⟩]

theorem F5Elements_nodup : F5Elements.Nodup := by
  decide

theorem F5Elements_exhaustive : ∀ x : Fin 5, x ∈ F5Elements := by
  intro x
  cases x with
  | mk val isLt =>
    have h :
        val = 0 ∨ val = 1 ∨ val = 2 ∨ val = 3 ∨ val = 4 := by
      omega
    cases h with
    | inl h0 =>
        subst val
        simp [F5Elements]
    | inr hrest =>
        cases hrest with
        | inl h1 =>
            subst val
            simp [F5Elements]
        | inr hrest2 =>
            cases hrest2 with
            | inl h2 =>
                subst val
                simp [F5Elements]
            | inr hrest3 =>
                cases hrest3 with
                | inl h3 =>
                    subst val
                    simp [F5Elements]
                | inr h4 =>
                    subst val
                    simp [F5Elements]

/-- The two-element residue field with explicit enumeration. -/
def F2 : FiniteFieldLike.{0} where
  field := residueFieldOps 2 (by decide)
  characteristic := 2
  cardinality := 2
  enumeration := {
    elements := F2Elements
    noDuplicates := F2Elements_nodup
    exhaustive := F2Elements_exhaustive
    cardinality := 2
    length_eq_cardinality := by decide
  }
  enumeration_cardinality := rfl
  finiteFieldBoundary := [
    "F2 is represented by Fin 2 with explicit enumeration.",
    "This file does not derive general field laws from primality."
  ]

/-- The three-element residue field with explicit enumeration. -/
def F3 : FiniteFieldLike.{0} where
  field := residueFieldOps 3 (by decide)
  characteristic := 3
  cardinality := 3
  enumeration := {
    elements := F3Elements
    noDuplicates := F3Elements_nodup
    exhaustive := F3Elements_exhaustive
    cardinality := 3
    length_eq_cardinality := by decide
  }
  enumeration_cardinality := rfl
  finiteFieldBoundary := [
    "F3 is represented by Fin 3 with explicit enumeration.",
    "This file does not derive general field laws from primality."
  ]

/-- The five-element residue field with explicit enumeration. -/
def F5 : FiniteFieldLike.{0} where
  field := residueFieldOps 5 (by decide)
  characteristic := 5
  cardinality := 5
  enumeration := {
    elements := F5Elements
    noDuplicates := F5Elements_nodup
    exhaustive := F5Elements_exhaustive
    cardinality := 5
    length_eq_cardinality := by decide
  }
  enumeration_cardinality := rfl
  finiteFieldBoundary := [
    "F5 is represented by Fin 5 with explicit enumeration.",
    "This file does not derive general field laws from primality."
  ]

/-- A finite sum over an explicitly supplied enumeration. -/
def finiteSumNat
    {α : Type}
    (E : FiniteEnumeration α)
    (weight : α → Nat) :
    Nat :=
  E.elements.foldl (fun acc x => acc + weight x) 0

end Surface.Arithmetic
```
