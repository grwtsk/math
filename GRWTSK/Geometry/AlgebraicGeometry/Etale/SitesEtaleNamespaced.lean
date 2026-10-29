-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.EtalePretopology.Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.EtalePretopology.Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"dadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/Sites/Etale.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Geometry.AlgebraicGeometry.EtalePretopology.Variantdadb59ca31e405b14f02c8db95391f9ea5830ab21e2030b901a7726cfec8c553

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
