# Complete source: GRWTSK.Topology.GeneralTopology.TransferInstance.Variant6f42f3d3a7599dcd82606b8417abc160732b4c468bb749c939e796586afde145

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff544257c77baa1b39be3216c10b8284e7e7c481` · SHA-256 `085950b96e2745976157ad517d26cf3df453839864ee8fee0ce6423b4437d73f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TopologicalSpace.Variant2ec00e45bfb083c6e55a3ec1a67f867adf45340752bfaf9e56614cc84e916844","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ec00e45bfb083c6e55a3ec1a67f867adf45340752bfaf9e56614cc84e916844","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TopologicalSpace.Variant2ec00e45bfb083c6e55a3ec1a67f867adf45340752bfaf9e56614cc84e916844","mathematical_subject":"Topology.GeneralTopology","original_sha256":"2ec00e45bfb083c6e55a3ec1a67f867adf45340752bfaf9e56614cc84e916844","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Homeomorph/TransferInstance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
module

public import Mathlib.Topology.Homeomorph.Defs

/-!
# Transfer topological structure across `Equiv`s

We show how to transport a topological space structure across an `Equiv` and prove that this
make the equivalence a homeomorphism between the original space and the transported topology.

-/


namespace GRWTSK.Topology.GeneralTopology.TopologicalSpace.Variant2ec00e45bfb083c6e55a3ec1a67f867adf45340752bfaf9e56614cc84e916844

@[expose] public section

variable {α β : Type*}

namespace Equiv

-- See note [instance transfer via equivalence]
/-- Transfer a `TopologicalSpace` across an `Equiv` -/
protected abbrev topologicalSpace [TopologicalSpace β] (e : α ≃ β) :
    TopologicalSpace α :=
  .induced e.toFun ‹_›

/-- An equivalence `e : α ≃ β` gives a homeomorphism `α ≃ₜ β` where the topological space structure
on `α` is the one obtained by transporting the topological space structure on `β` back along `e`. -/
def homeomorph [TopologicalSpace β] (e : α ≃ β) :
    letI := e.topologicalSpace
    α ≃ₜ β :=
  letI := e.topologicalSpace
  { e with
    continuous_toFun := continuous_induced_dom
    continuous_invFun := by
      simp only [Equiv.invFun_as_coe]
      convert! continuous_coinduced_rng
      rw [e.coinduced_symm]
      rfl }

end Equiv
```
