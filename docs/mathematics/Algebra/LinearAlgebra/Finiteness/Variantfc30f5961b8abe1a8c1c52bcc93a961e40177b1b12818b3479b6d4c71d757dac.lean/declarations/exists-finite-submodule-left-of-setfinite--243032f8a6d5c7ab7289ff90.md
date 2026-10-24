# exists_finite_submodule_left_of_setFinite'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc71221ee5a2116843fcc9c9c45f604dca6d399c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a84fc47-2b52-6d38-dcd2-f1ccc3860a24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:309ddf88-b812-7d5a-1e28-ed59b059e236",
  "kind": "theorem",
  "lexical_name": "exists_finite_submodule_left_of_setFinite'",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "exists-finite-submodule-left-of-setfinite--243032f8a6d5c7ab7289ff90",
  "source": {
    "blob": "bc71221ee5a2116843fcc9c9c45f604dca6d399c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 163,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:243032f8a6d5c7ab7289ff90410e6fe9048446fa536b7a2c8f94c4413832baed",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:309ddf88-b812-7d5a-1e28-ed59b059e236`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finite_submodule_left_of_setFinite' (s : Set (M₁ ⊗[R] N₁)) (hs : s.Finite) :
    ∃ (M' : Submodule R M) (hM : M' ≤ M₁), Module.Finite R M' ∧
      s ⊆ LinearMap.range ((inclusion hM).rTensor N₁) := by
  obtain ⟨M', _, hM, _, hfin, _, h⟩ := exists_finite_submodule_of_setFinite' s hs
  refine ⟨M', hM, hfin, ?_⟩
  rw [← LinearMap.rTensor_comp_lTensor] at h
  exact h.trans (LinearMap.range_comp_le_range _ _)

/-- Variation of `TensorProduct.exists_finite_submodule_right_of_setFinite` where `M` and `N` are
already submodules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc71221ee5a2116843fcc9c9c45f604dca6d399c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
