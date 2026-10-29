-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.OfAssociative.Variant2c9d2ee602987da89bbbe621149fad2b4a2476699f60535706a12b2fe9833f8e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c9d2ee602987da89bbbe621149fad2b4a2476699f60535706a12b2fe9833f8e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.OfAssociative.Variant2c9d2ee602987da89bbbe621149fad2b4a2476699f60535706a12b2fe9833f8e","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"2c9d2ee602987da89bbbe621149fad2b4a2476699f60535706a12b2fe9833f8e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/Prelude/InstancePriorities.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/Prelude/InstancePriorities.lean — instance-search hygiene shared by the RvM / PNT⁺ layer.

THE PROBLEM (diagnosed with `set_option trace.Meta.synthInstance true`): once
`Mathlib.Algebra.Lie.OfAssociative` is in scope together with the RCLike normed-algebra instances (as happens in
the import closure of Zeta23.RvM.LocalCount / ReZeroCount / Unconditional), the goal `Module ℝ ℂ` that arises
while resolving `IsBoundedSMul ℝ ℂ` is answered first by
  LieAlgebra.toModule ← LieAlgebra.ofAssociativeAlgebra ← RCLike.toNormedAlgebra,
and that `Module ℝ ℂ` term is not definitionally equal, at instance transparency, to the one carried by
`NormedSpace ℝ ℂ` (InnerProductSpace path).  Consequently `NormedSpace.toIsBoundedSMul` and
`NormedSpace.toNormSMulClass` fail to unify, `ContinuousSMul ℝ ℂ` cannot be synthesized, and every statement of
the form `HasDerivAt (f : ℝ → ℂ) _ _` fails to elaborate downstream (deterministically — not a timeout).
A file-local workaround is `attribute [-instance] LieAlgebra.ofAssociativeAlgebra`.

THE FIX: demote `LieAlgebra.toModule` to low priority, so `Complex.instModule` / the NormedSpace path is tried
first.  This is an instance-search-order change only: no definition or theorem statement changes, the Lie
instance remains available, and the re-prioritisation persists to every importer of this file (a
module importing this + Zeta23.RvM.LocalCount, in either order, elaborates the HasDerivAt probe that fails without
it).  Imported by Zeta23/RvM/LocalCount.lean, Zeta23/RvM/BacklundDefs.lean and Zeta23/FromPNTPlus/StrongPNTPrefix.lean.
If a future Mathlib demotes/removes `LieAlgebra.ofAssociativeAlgebra` as a global instance, this file can be
deleted.
-/
import Mathlib.Algebra.Lie.OfAssociative


namespace GRWTSK.Algebra.UniversalAlgebra.OfAssociative.Variant2c9d2ee602987da89bbbe621149fad2b4a2476699f60535706a12b2fe9833f8e

attribute [instance 10] LieAlgebra.toModule
