-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DHashMap.Variant63866efb9e243672b97e1c9de4d323bbd320d1bdbdd355b76f904cbfdc890370","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63866efb9e243672b97e1c9de4d323bbd320d1bdbdd355b76f904cbfdc890370","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DHashMap.Variant63866efb9e243672b97e1c9de4d323bbd320d1bdbdd355b76f904cbfdc890370","mathematical_subject":"Computation.DataStructures","original_sha256":"63866efb9e243672b97e1c9de4d323bbd320d1bdbdd355b76f904cbfdc890370","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Std.Data.DHashMap
public import Std.Data.HashMap
public import Std.Data.HashSet
public import Std.Data.DTreeMap
public import Std.Data.TreeMap
public import Std.Data.TreeSet
public import Std.Data.ExtDHashMap
public import Std.Data.ExtHashMap
public import Std.Data.ExtHashSet
public import Std.Data.ExtDTreeMap
public import Std.Data.ExtTreeMap
public import Std.Data.ExtTreeSet

-- The imports above only import the modules needed to work with the version which bundles
-- the well-formedness invariant, so we need to additionally import the files that deal with the
-- unbundled version
public import Std.Data.DHashMap.RawLemmas
public import Std.Data.DHashMap.RawDecidableEquiv
public import Std.Data.HashMap.RawLemmas
public import Std.Data.HashMap.RawDecidableEquiv
public import Std.Data.HashSet.RawLemmas
public import Std.Data.HashSet.RawDecidableEquiv
public import Std.Data.DTreeMap.Raw
public import Std.Data.TreeMap.Raw
public import Std.Data.TreeSet.Raw

public import Std.Data.Iterators
public import Std.Data.ByteSlice
public import Std.Data.String

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DHashMap.Variant63866efb9e243672b97e1c9de4d323bbd320d1bdbdd355b76f904cbfdc890370

