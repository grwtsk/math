import Init

/-!
An authored local access ramp, not a theorem quoted from the imported paper.
Explicit coordinate coverage plus agreement yields reconstruction of values.
This supplies neither a topology nor positivity, and is not topological surgery.
-/
namespace PaperLocalGlobal

def glue {I X V : Type} (owner : X → I) (pieces : I → X → V) : X → V :=
  fun x => pieces (owner x) x

theorem restrict_glue {I X V : Type} (covers : I → X → Prop)
    (owner : X → I) (pieces : I → X → V)
    (covered : ∀ x, covers (owner x) x)
    (agree : ∀ i j x, covers i x → covers j x → pieces i x = pieces j x)
    (i : I) (x : X) (hx : covers i x) :
    glue owner pieces x = pieces i x := by
  exact agree (owner x) i x (covered x) hx

theorem unique_glue {I X V : Type} (covers : I → X → Prop)
    (owner : X → I) (pieces : I → X → V)
    (covered : ∀ x, covers (owner x) x)
    (candidate : X → V) (restricts : ∀ i x, covers i x → candidate x = pieces i x) :
    candidate = glue owner pieces := by
  funext x
  exact restricts (owner x) x (covered x)

end PaperLocalGlobal
#print axioms PaperLocalGlobal.restrict_glue
#print axioms PaperLocalGlobal.unique_glue
