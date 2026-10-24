# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Hom.Variantc74631811842d0c853d9fa2663c007aa88884b3dd220009673a015eab3bf7b2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `daad7f2fb097ec4609908d188a2ac143ea258620` · SHA-256 `f4051e7dd14817ae35d084860f34b9b48bc3bd4db6dc7da88ea8b242fc5f8ad8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IciSupHom.Variant57fbf33e0efdcef0390732ab96a715126c13240814d61a11a12f6f59aedc0e42","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57fbf33e0efdcef0390732ab96a715126c13240814d61a11a12f6f59aedc0e42","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.IciSupHom.Variant57fbf33e0efdcef0390732ab96a715126c13240814d61a11a12f6f59aedc0e42","mathematical_subject":"Algebra.OrderTheory","original_sha256":"57fbf33e0efdcef0390732ab96a715126c13240814d61a11a12f6f59aedc0e42","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/UpperLower/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies, Sara Rousta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Hom.CompleteLattice
import Mathlib.Order.UpperLower.Principal

/-!
# `UpperSet.Ici` etc as `Sup`/`sSup`/`Inf`/`sInf`-homomorphisms

In this file we define `UpperSet.iciSupHom` etc. These functions are `UpperSet.Ici` and
`LowerSet.Iic` bundled as `SupHom`s, `InfHom`s, `sSupHom`s, or `sInfHom`s.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IciSupHom.Variant57fbf33e0efdcef0390732ab96a715126c13240814d61a11a12f6f59aedc0e42

variable {α : Type*}

open OrderDual

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
