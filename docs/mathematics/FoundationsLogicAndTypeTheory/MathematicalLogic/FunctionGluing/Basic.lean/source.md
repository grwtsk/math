# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FunctionGluing.Basic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f4f8bf3a1c6b28644200e9dcae47c775653291a` · SHA-256 `9c6a2d9b3d365555af6bf660784aeb23c2bb71a8003d4c8b990fadbb3103d3f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
