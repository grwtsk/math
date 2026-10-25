import Think.SourceTree.Legacy.Compression.Core

set_option autoImplicit false

namespace Think.Compression.Syntax

def ExistsUniqueCore {β : Type} (P : β → Prop) : Prop :=
  ∃ witness : β, P witness ∧ ∀ other : β, P other → other = witness

syntax "∃! " ident " : " term ", " term : term

macro_rules
  | `(∃! $x:ident : $ty, $p) =>
      `(ExistsUniqueCore (fun $x : $ty => $p))

inductive RawCompressedString (α : Type) : Type
  | nil : RawCompressedString α
  | atom : α → RawCompressedString α
  | concat :
      RawCompressedString α →
      RawCompressedString α →
      RawCompressedString α
  | macroPlaceholder :
      Nat →
      List (RawCompressedString α) →
      RawCompressedString α
deriving Repr

def BoundaryCompatible {α : Type}
    (_left _right : RawCompressedString α) : Prop :=
  True

def MacroPlaceholderAdmissible {α : Type}
    (_label : Nat) (_parts : List (RawCompressedString α)) : Prop :=
  True

def MacroPlaceholderCompressionAuthority {α : Type}
    (_label : Nat) (_parts : List (RawCompressedString α)) : Prop :=
  False

theorem macroPlaceholder_has_no_compression_authority {α : Type}
    (label : Nat) (parts : List (RawCompressedString α)) :
    ¬ MacroPlaceholderCompressionAuthority label parts := by
  intro h
  exact h

inductive WellFormed {α : Type} : RawCompressedString α → Prop
  | nil :
      WellFormed .nil
  | atom :
      ∀ x, WellFormed (.atom x)
  | concat :
      ∀ {left right},
        WellFormed left →
        WellFormed right →
        BoundaryCompatible left right →
        WellFormed (.concat left right)
  | macroPlaceholder :
      ∀ {label parts},
        MacroPlaceholderAdmissible label parts →
        (∀ part, part ∈ parts → WellFormed part) →
        WellFormed (.macroPlaceholder label parts)

theorem wellFormed_concat {α : Type}
    {left right : RawCompressedString α}
    (hleft : WellFormed left)
    (hright : WellFormed right)
    (hboundary : BoundaryCompatible left right) :
    WellFormed (.concat left right) :=
  WellFormed.concat hleft hright hboundary

end Think.Compression.Syntax
