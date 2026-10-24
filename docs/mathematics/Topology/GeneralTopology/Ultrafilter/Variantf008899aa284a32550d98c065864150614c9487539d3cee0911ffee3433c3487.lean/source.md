# Complete source: GRWTSK.Topology.GeneralTopology.Ultrafilter.Variantf008899aa284a32550d98c065864150614c9487539d3cee0911ffee3433c3487

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bbbed484f6dacfad2c7b25d7e64ac55d6dfb534` · SHA-256 `8e1d01305059d64ef28f1cdb70a7022dff4bcbaefb119170d53ef6ad385a1bdc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Ultrafilter.Variant8066eef07e3734e7a157993f8a3d66e7134bd371eeb2ca9453eda09e6b133f8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8066eef07e3734e7a157993f8a3d66e7134bd371eeb2ca9453eda09e6b133f8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Ultrafilter.Variant8066eef07e3734e7a157993f8a3d66e7134bd371eeb2ca9453eda09e6b133f8b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8066eef07e3734e7a157993f8a3d66e7134bd371eeb2ca9453eda09e6b133f8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Defs/Ultrafilter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Jeremy Avigad
-/
module

public import Mathlib.Order.Filter.Ultrafilter.Defs
public import Mathlib.Topology.Defs.Filter

/-!
# Limit of an ultrafilter.

* `Ultrafilter.lim f`: a limit of an ultrafilter `f`,
  defined as the limit of `(f : Filter X)`
  with a proof of `Nonempty X` deduced from existence of an ultrafilter on `X`.

-/


namespace GRWTSK.Topology.GeneralTopology.Ultrafilter.Variant8066eef07e3734e7a157993f8a3d66e7134bd371eeb2ca9453eda09e6b133f8b

@[expose] public section

variable {X : Type*} [TopologicalSpace X]

open Filter

/--
If `F` is an ultrafilter, then `Filter.Ultrafilter.lim F` is a limit of the filter, if it exists.
Note that dot notation `F.lim` can be used for `F : Filter.Ultrafilter X`.
-/
noncomputable nonrec def Ultrafilter.lim (F : Ultrafilter X) : X :=
  @lim X _ (nonempty_of_neBot F) F
```
