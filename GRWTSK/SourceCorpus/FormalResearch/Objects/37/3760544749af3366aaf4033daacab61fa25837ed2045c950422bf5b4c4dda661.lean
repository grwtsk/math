import DAF.Fabric.Reaction

/-!
# System-level strengths of fabric reactions

Every cell map of a reaction is already a `DAF.System.Hom`.  Surjectivity is
additional proof data, packaged here as `LevelwiseSystemFactor`.  No arbitrary
realization is assumed to preserve these factors; that conclusion belongs to
the separate capability in `DAF.Fabric.Realization`.
-/

namespace DAF.Fabric

/-- A reaction whose state map is surjective at every source cell. -/
structure LevelwiseSystemFactor
    {F G : Fabric}
    (reaction : Reaction F G) : Prop where
  state_surjective :
    ∀ {n : Nat} (x : F.Cell n),
      Function.Surjective (reaction.cellMap x).mapState

namespace LevelwiseSystemFactor

/-- Recover the existing `DAF.System.Factor` at a selected cell. -/
def factor
    {F G : Fabric}
    {reaction : Reaction F G}
    (h : LevelwiseSystemFactor reaction)
    {n : Nat}
    (x : F.Cell n) :
    DAF.System.Factor
      (F.cellSystem x)
      (G.cellSystem (reaction.mapCell x)) where
  toHom := (reaction.cellMap x).toHom
  state_surjective := h.state_surjective x

@[simp]
theorem factor_toHom
    {F G : Fabric}
    {reaction : Reaction F G}
    (h : LevelwiseSystemFactor reaction)
    {n : Nat}
    (x : F.Cell n) :
    (h.factor x).toHom = (reaction.cellMap x).toHom :=
  rfl

/-- The identity reaction is levelwise a system factor. -/
def id (F : Fabric) : LevelwiseSystemFactor (Reaction.id F) where
  state_surjective := by
    intro n x state
    exact ⟨state, rfl⟩

end LevelwiseSystemFactor

end DAF.Fabric
