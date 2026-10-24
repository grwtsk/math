# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Hom.Variantec18809db4206573de9b6326adfe3348af5ac33916586cbb26b18aedd13cde75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aaceca5fd2c80e7d8d8a2b134382c086b987abba` · SHA-256 `ec18809db4206573de9b6326adfe3348af5ac33916586cbb26b18aedd13cde75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies, Sara Rousta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Order.Hom.CompleteLattice
public import Mathlib.Order.UpperLower.Principal

/-!
# `UpperSet.Ici` etc. as `Sup`/`sSup`/`Inf`/`sInf`-homomorphisms

In this file we define `UpperSet.iciSupHom` etc. These functions are `UpperSet.Ici` and
`LowerSet.Iic` bundled as `SupHom`s, `InfHom`s, `sSupHom`s, or `sInfHom`s.
-/

@[expose] public section


variable {α : Type*}

namespace UpperSet

section SemilatticeSup

variable [SemilatticeSup α]

/-- `UpperSet.Ici` as a `SupHom`. -/
def iciSupHom : SupHom α (UpperSet α) :=
  ⟨Ici, Ici_sup⟩

@[simp]
theorem coe_iciSupHom : (iciSupHom : α → UpperSet α) = Ici :=
  rfl

@[simp]
theorem iciSupHom_apply (a : α) : iciSupHom a = Ici a :=
  rfl

end SemilatticeSup

variable [CompleteLattice α]

/-- `UpperSet.Ici` as a `sSupHom`. -/
def icisSupHom : sSupHom α (UpperSet α) :=
  ⟨Ici, fun s => (Ici_sSup s).trans sSup_image.symm⟩

@[simp]
theorem coe_icisSupHom : (icisSupHom : α → UpperSet α) = Ici :=
  rfl

@[simp]
theorem icisSupHom_apply (a : α) : icisSupHom a = Ici a :=
  rfl

end UpperSet

namespace LowerSet

section SemilatticeInf

variable [SemilatticeInf α]

/-- `LowerSet.Iic` as an `InfHom`. -/
def iicInfHom : InfHom α (LowerSet α) :=
  ⟨Iic, Iic_inf⟩

@[simp]
theorem coe_iicInfHom : (iicInfHom : α → LowerSet α) = Iic :=
  rfl

@[simp]
theorem iicInfHom_apply (a : α) : iicInfHom a = Iic a :=
  rfl

end SemilatticeInf

variable [CompleteLattice α]

/-- `LowerSet.Iic` as an `sInfHom`. -/
def iicsInfHom : sInfHom α (LowerSet α) :=
  ⟨Iic, fun s => (Iic_sInf s).trans sInf_image.symm⟩

@[simp]
theorem coe_iicsInfHom : (iicsInfHom : α → LowerSet α) = Iic :=
  rfl

@[simp]
theorem iicsInfHom_apply (a : α) : iicsInfHom a = Iic a :=
  rfl

end LowerSet
```
