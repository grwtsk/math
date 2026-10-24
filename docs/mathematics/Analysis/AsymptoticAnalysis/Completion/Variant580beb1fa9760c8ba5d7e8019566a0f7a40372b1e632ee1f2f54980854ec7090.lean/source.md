# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Completion.Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7cd89cfe38ee15d4ceb73000e95a9f90ee53137b` · SHA-256 `65a1c741e8a5522a904401ad8c624b5f548902e8c3c94ec3706e2dd9a450fcd4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.IsBigOCompletionLeft.Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.IsBigOCompletionLeft.Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Asymptotics/Completion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Asymptotics.Theta
import Mathlib.Analysis.Normed.Group.Completion

/-!
# Asymptotics in the completion of a normed space

In this file we prove lemmas relating `f = O(g)` etc
for composition of functions with coercion of a seminormed group to its completion.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.IsBigOCompletionLeft.Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed

variable {α E F : Type*} [Norm E] [SeminormedAddCommGroup F]
  {f : α → E} {g : α → F} {l : Filter α}

local postfix:100 "̂" => UniformSpace.Completion

open UniformSpace.Completion

namespace Asymptotics

@[simp, norm_cast]
lemma isBigO_completion_left : (fun x ↦ g x : α → F̂) =O[l] f ↔ g =O[l] f := by
  simp only [isBigO_iff, norm_coe]

@[simp, norm_cast]
lemma isBigO_completion_right : f =O[l] (fun x ↦ g x : α → F̂) ↔ f =O[l] g := by
  simp only [isBigO_iff, norm_coe]

@[simp, norm_cast]
lemma isTheta_completion_left : (fun x ↦ g x : α → F̂) =Θ[l] f ↔ g =Θ[l] f :=
  and_congr isBigO_completion_left isBigO_completion_right

@[simp, norm_cast]
lemma isTheta_completion_right : f =Θ[l] (fun x ↦ g x : α → F̂) ↔ f =Θ[l] g :=
  and_congr isBigO_completion_right isBigO_completion_left

@[simp, norm_cast]
lemma isLittleO_completion_left : (fun x ↦ g x : α → F̂) =o[l] f ↔ g =o[l] f := by
  simp only [isLittleO_iff, norm_coe]

@[simp, norm_cast]
lemma isLittleO_completion_right : f =o[l] (fun x ↦ g x : α → F̂) ↔ f =o[l] g := by
  simp only [isLittleO_iff, norm_coe]

end Asymptotics
```
