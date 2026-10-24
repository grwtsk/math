# Complete source: GRWTSK.Topology.GeneralTopology.NameMap.Variantc33ba19807f85a96d9ef1227041a53a0bad78d5c93c9a459604fb6f4f7a658f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07098ce026775adb5a6be6be86c0e01bf3a915ae` · SHA-256 `af2187bf8a5896a690c1ece5f8e1e6993205af8b65f27bc7e89d6f051a60ef49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Filter.Variant709e4b2678d24c700547d4b139facf51d8d0722e22faf8296a1d0a52ff0310a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"709e4b2678d24c700547d4b139facf51d8d0722e22faf8296a1d0a52ff0310a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Filter.Variant709e4b2678d24c700547d4b139facf51d8d0722e22faf8296a1d0a52ff0310a9","mathematical_subject":"Topology.GeneralTopology","original_sha256":"709e4b2678d24c700547d4b139facf51d8d0722e22faf8296a1d0a52ff0310a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Lean/Data/NameMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jon Eugster
-/
import Lean.Data.NameMap
import Std.Data.RBMap

/-!
# Additional functions on `Lean.NameMap`.

We provide `NameMap.filter` and `NameMap.filterMap`.
-/


namespace GRWTSK.Topology.GeneralTopology.Filter.Variant709e4b2678d24c700547d4b139facf51d8d0722e22faf8296a1d0a52ff0310a9

set_option autoImplicit true

namespace Lean.NameMap

instance : ForIn m (NameMap β) (Name × β) :=
  inferInstanceAs <| ForIn m (RBMap Name β _) _

/--
`filter f m` returns the `NameMap` consisting of all
"`key`/`val`"-pairs in `m` where `f key val` returns `true`.
-/
def filter (f : Name → α → Bool) (m : NameMap α) : NameMap α :=
  m.fold process {}
where
  process (r : NameMap α) (n : Name) (i : α) :=
    if f n i then r.insert n i else r

/--
`filterMap f m` allows to filter a `NameMap` and simultaneously modify the filtered values.

It takes a function `f : Name → α → Option β` and applies `f name` to the value with key `name`.
The resulting entries with non-`none` value are collected to form the output `NameMap`.
-/
def filterMap (f : Name → α → Option β) (m : NameMap α) : NameMap β :=
  m.fold process {}
where
  process (r : NameMap β) (n : Name) (i : α) :=
    match f n i with
    | none => r
    | some b => r.insert n b
```
