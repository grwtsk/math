# Complete source: GRWTSK.Topology.SlowSimp.Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08d1c8a284d07137776e55d0fa1e3254b1aa2495` · SHA-256 `f4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib
import Mathlib.Topology.Category.TopCat.Basic

/-!
This test file serves as a sentinel against bad simp lemmas.

When this test file was first setup,
the final declaration of this file took 12,000 heartbeats
with the minimal import of `Mathlib/Topology/Category/TopCat/Basic.lean`,
but took over 260,000 heartbeats with `import Mathlib`.

After deleting some bad simp lemmas that were being tried everywhere
(discovered using `set_option diagnostics true`):
* Mathlib.MeasureTheory.coeFn_comp_toFiniteMeasure_eq_coeFn
* LightProfinite.hasForget_forget_obj
* CategoryTheory.sum_comp_inl
* CategoryTheory.sum_comp_inr
it is back down to 19,000 heartbeats even with `import Mathlib`.
-/

open CategoryTheory

structure PointedSpace where
  carrier : Type
  [inst : TopologicalSpace carrier]
  base : carrier

attribute [instance] PointedSpace.inst

namespace PointedSpace

structure Hom (X Y : PointedSpace) where
  map : ContinuousMap X.carrier Y.carrier
  base : map X.base = Y.base

attribute [simp] Hom.base

namespace Hom

def id (X : PointedSpace) : Hom X X := ⟨ContinuousMap.id _, rfl⟩

def comp {X Y Z : PointedSpace} (f : Hom X Y) (g : Hom Y Z) : Hom X Z :=
   ⟨g.map.comp f.map, by simp⟩

end Hom

instance : Category PointedSpace where
  Hom := Hom
  id := Hom.id
  comp := Hom.comp

end PointedSpace

set_option maxHeartbeats 20000 in
def PointedSpaceEquiv_inverse : Under (TopCat.of Unit) ⥤ PointedSpace where
  obj := fun X =>
  { carrier := X.right
    base := X.hom () }
  map := fun f =>
  { map := f.right.hom
    base := by
      have := f.w
      replace this := CategoryTheory.congr_fun this ()
      simp [-Under.w] at this
      simp
      exact this.symm }
  map_comp := by intros; simp_all; rfl -- This is the slow step.
```
