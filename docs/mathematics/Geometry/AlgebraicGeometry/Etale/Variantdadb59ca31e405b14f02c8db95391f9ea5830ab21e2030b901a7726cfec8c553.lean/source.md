# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Etale.Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `940dfe3ad8f0186914bc6609435e200f9db27e8a` · SHA-256 `dadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.AlgebraicGeometry.Morphisms.Etale
import Mathlib.AlgebraicGeometry.PullbackCarrier
import Mathlib.AlgebraicGeometry.Sites.BigZariski
import Mathlib.AlgebraicGeometry.Sites.Small

/-!

# The étale site

In this file we define the big étale site, i.e. the étale topology as a Grothendieck topology
on the category of schemes.

-/

universe v u

open CategoryTheory MorphismProperty Limits

namespace AlgebraicGeometry.Scheme

/-- Big étale site: the étale pretopology on the category of schemes. -/
def etalePretopology : Pretopology Scheme.{u} :=
  pretopology @IsEtale

/-- Big étale site: the étale topology on the category of schemes. -/
abbrev etaleTopology : GrothendieckTopology Scheme.{u} :=
  etalePretopology.toGrothendieck

lemma zariskiTopology_le_etaleTopology : zariskiTopology ≤ etaleTopology := by
  apply grothendieckTopology_le_grothendieckTopology
  intro X Y f hf
  infer_instance

/-- The small étale site of a scheme is the Grothendieck topology on the
category of schemes étale over `X` induced from the étale topology on `Scheme.{u}`. -/
def smallEtaleTopology (X : Scheme.{u}) : GrothendieckTopology X.Etale :=
  X.smallGrothendieckTopology (P := @IsEtale)

/-- The pretopology generating the small étale site. -/
def smallEtalePretopology (X : Scheme.{u}) : Pretopology X.Etale :=
  X.smallPretopology (Q := @IsEtale) (P := @IsEtale)

end AlgebraicGeometry.Scheme
```
