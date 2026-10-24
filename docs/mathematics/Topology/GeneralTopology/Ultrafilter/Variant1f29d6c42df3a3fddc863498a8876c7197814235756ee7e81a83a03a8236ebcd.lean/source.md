# Complete source: GRWTSK.Topology.GeneralTopology.Ultrafilter.Variant1f29d6c42df3a3fddc863498a8876c7197814235756ee7e81a83a03a8236ebcd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e196f83ff6a085eff33b9efdb4f7ce038c6904d1` · SHA-256 `2caa16f1759c1c161ebd607f8c6373aeeb55b918a6828b2739212a39118a1dd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Lattice.Variant31ccf7270146f6a68e8958f9a55ca00affafcc476035ff14d57fe02642d3539d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31ccf7270146f6a68e8958f9a55ca00affafcc476035ff14d57fe02642d3539d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Lattice.Variant31ccf7270146f6a68e8958f9a55ca00affafcc476035ff14d57fe02642d3539d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"31ccf7270146f6a68e8958f9a55ca00affafcc476035ff14d57fe02642d3539d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Defs/Ultrafilter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Jeremy Avigad
-/
import Mathlib.Data.Set.Lattice
import Mathlib.Order.Filter.Ultrafilter.Defs
import Mathlib.Topology.Defs.Basic
import Mathlib.Topology.Defs.Filter

/-!
# Limit of an ultrafilter.

* `Ultrafilter.lim f`: a limit of an ultrafilter `f`,
  defined as the limit of `(f : Filter X)`
  with a proof of `Nonempty X` deduced from existence of an ultrafilter on `X`.

-/


namespace GRWTSK.Topology.GeneralTopology.Lattice.Variant31ccf7270146f6a68e8958f9a55ca00affafcc476035ff14d57fe02642d3539d

variable {X : Type*} [TopologicalSpace X]

open Filter

/--
If `F` is an ultrafilter, then `Filter.Ultrafilter.lim F` is a limit of the filter, if it exists.
Note that dot notation `F.lim` can be used for `F : Filter.Ultrafilter X`.
-/
noncomputable nonrec def Ultrafilter.lim (F : Ultrafilter X) : X :=
  @lim X _ (nonempty_of_neBot F) F
```
