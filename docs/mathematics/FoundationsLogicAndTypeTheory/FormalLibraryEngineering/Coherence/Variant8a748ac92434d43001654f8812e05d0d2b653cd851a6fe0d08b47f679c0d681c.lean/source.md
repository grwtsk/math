# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coherence.Variant8a748ac92434d43001654f8812e05d0d2b653cd851a6fe0d08b47f679c0d681c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f25aee75eda95cac3d76523bd18ceabcb43b44cb` · SHA-256 `8a748ac92434d43001654f8812e05d0d2b653cd851a6fe0d08b47f679c0d681c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Fiber.Section
import Folder.Fiber.Transport

/-!
# Folder.Fiber.Coherence

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: fiber.coherence
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Fiber

universe u v

structure CoherentSection
    {Base : Type u}
    {B : Bundle.{u, v} Base}
    {Step : Base → Base → Prop}
    (T : TransportSystem B Step) where
  sec : Section B
  coherent :
    ∀ {a b} (e : Step a b),
      T.transportStep e (sec.value a) = sec.value b

theorem coherent_transportPath
    {Base : Type u}
    {B : Bundle.{u, v} Base}
    {Step : Base → Base → Prop}
    {T : TransportSystem B Step}
    (S : CoherentSection T)
    {a b : Base}
    (p : Monodromy.Path Step a b) :
    transportPath T p (S.sec.value a) =
      S.sec.value b := by
  induction p with
  | nil =>
      rfl
  | cons e rest ih =>
      simp [transportPath, S.coherent e, ih]

end Fiber
end Folder
```
