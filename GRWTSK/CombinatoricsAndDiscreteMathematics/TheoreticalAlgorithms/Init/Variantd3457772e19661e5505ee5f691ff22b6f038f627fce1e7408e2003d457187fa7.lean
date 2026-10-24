-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Rename.Variant984d91a83e2e563a8363fb9421fa8a29378e4332bf18e68647e5d700fdef940c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"984d91a83e2e563a8363fb9421fa8a29378e4332bf18e68647e5d700fdef940c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Rename.Variant984d91a83e2e563a8363fb9421fa8a29378e4332bf18e68647e5d700fdef940c","mathematical_subject":"Computation.DataStructures","original_sha256":"984d91a83e2e563a8363fb9421fa8a29378e4332bf18e68647e5d700fdef940c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Rat/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Mathport.Rename
import Std.Data.Rat


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Rename.Variant984d91a83e2e563a8363fb9421fa8a29378e4332bf18e68647e5d700fdef940c

#align_import data.rat.init from "leanprover-community/mathlib"@"f340f229b1f461aa1c8ee11e0a172d0a3b301a4a"

/-!
# Notation for the rational numbers -/

namespace Rat

@[inherit_doc] notation "ℚ" => Rat

#align rat.denom Rat.den
