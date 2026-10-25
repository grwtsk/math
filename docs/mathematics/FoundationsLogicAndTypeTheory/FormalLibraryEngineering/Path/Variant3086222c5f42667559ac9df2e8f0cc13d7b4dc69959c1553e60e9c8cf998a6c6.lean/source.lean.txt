import Folder.Basic

/-!
# Folder.Monodromy.Path

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: monodromy.path
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: torsion
-/


namespace Folder
namespace Monodromy

universe u

inductive Path {Base : Type u}
    (Step : Base → Base → Prop) :
    Base → Base → Type u where
  | nil : Path Step b b
  | cons : Step a b → Path Step b c → Path Step a c

namespace Path

def append {Base : Type u}
    {Step : Base → Base → Prop}
    {a b c : Base}
    (p : Path Step a b)
    (q : Path Step b c) :
    Path Step a c :=
  match p with
  | nil => q
  | cons e rest => cons e (append rest q)

@[simp]
theorem append_nil {Base : Type u}
    {Step : Base → Base → Prop}
    {a b : Base}
    (p : Path Step a b) :
    p.append Path.nil = p := by
  induction p with
  | nil => rfl
  | cons e rest ih =>
      simp [append, ih]

@[simp]
theorem nil_append {Base : Type u}
    {Step : Base → Base → Prop}
    {a b : Base}
    (p : Path Step a b) :
    (Path.nil : Path Step a a).append p = p :=
  rfl

end Path
end Monodromy
end Folder
