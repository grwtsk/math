# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ecosystem.Variant49c398a77115afe93eef2c06e9258ef35a31bb1d32d2ce8f52deeab1997c5c1a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08e919c30870692a7b77c21f835880ff6f6784c1` · SHA-256 `49c398a77115afe93eef2c06e9258ef35a31bb1d32d2ce8f52deeab1997c5c1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Logic.Mathlib.GeometricMorphism

namespace Think.Logic.MathlibEcosystem

structure ThinkMathlibEcosystem where
  Log : Type u
  Inf : Type u
  Site : Type u
  Kn : Type u

  logCategory : CategoryTheory.Category.{v} Log
  infCategory : CategoryTheory.Category.{v} Inf
  siteCategory : CategoryTheory.Category.{v} Site
  knCategory : CategoryTheory.Category.{v} Kn

  infMonoidal : CategoryTheory.MonoidalCategory Inf

  logicLayer : @LogicLayer Log logCategory
  informationLayer : @InformationLayer Inf infCategory infMonoidal
  epistemology : @EpistemicArchitecture Log Inf logCategory infCategory
  knowledgeTopology : @KnowledgeTopology Site siteCategory
  wisdom : @WisdomMonad Kn knCategory

  ecosystemHash : String
  mathlibBoundaryHash : String
  claimBearing : Bool

def ThinkMathlibEcosystem.noVisualAuthority
    (E : ThinkMathlibEcosystem) : Prop :=
  E.claimBearing = true

end Think.Logic.MathlibEcosystem
```
