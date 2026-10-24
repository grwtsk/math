# Complete source: GRWTSK.Analysis.FunctionalAnalysis.EuclideanSpace.Variant656d690d7d38859e86481691c0ea9bc694cb8b839904d6c21230a4b88aed6304

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `662b91d2a025199f3dfc3a6e74d9fba2ac6c86ea` · SHA-256 `656d690d7d38859e86481691c0ea9bc694cb8b839904d6c21230a4b88aed6304`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.PiL2

#guard_expr !₂[] = (WithLp.equiv 2 (∀ _ : Fin 0, _)).symm ![]
#guard_expr !₂[1, 2, 3] = (WithLp.equiv 2 (∀ _ : Fin 3, ℕ)).symm ![1, 2, 3]
#guard_expr !₁[1, 2, (3 : ℝ)] = (WithLp.equiv 1 (∀ _ : Fin 3, ℝ)).symm ![1, 2, 3]

section delaborator

/-- info: !₂[1, 2, 3] : WithLp 2 (Fin 3 → ℕ) -/
#guard_msgs in
#check !₂[1, 2, 3]

set_option pp.mvars false in
/-- info: !₀[] : WithLp 0 (Fin 0 → ?_) -/
#guard_msgs in
#check !₀[]

section var
variable {p : ENNReal}
/-- info: (WithLp.equiv p (Fin 3 → ℕ)).symm ![1, 2, 3] : WithLp p (Fin 3 → ℕ) -/
#guard_msgs in#check !ₚ[1, 2, 3]
end var

section tombstoned_var
/- Here the `p` in the subscript is shadowed by a later p; so even if we do
make the delaborator less conservative, it should not fire here since `✝` cannot
be subscripted. -/
variable {p : ENNReal} {x} (hx : x = !ₚ[1, 2, 3]) (p : True)
/-- info: hx : x = (WithLp.equiv p✝ (Fin 3 → ℕ)).symm ![1, 2, 3] -/
#guard_msgs in #check hx
end tombstoned_var

end delaborator
```
