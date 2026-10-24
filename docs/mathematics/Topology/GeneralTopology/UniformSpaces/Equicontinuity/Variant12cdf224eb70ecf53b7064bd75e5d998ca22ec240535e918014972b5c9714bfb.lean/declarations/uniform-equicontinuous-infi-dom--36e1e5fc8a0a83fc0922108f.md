# uniform_equicontinuous_infi_dom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60a2468370e4f1a1f108a196c7cbfd52a43d4cb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e589afcc-9da9-f6b5-f8cf-a0f6873f84a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9151d1ca-ab57-c7ce-ce57-33e14e79c3c7",
  "kind": "theorem",
  "lexical_name": "uniform_equicontinuous_infi_dom",
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
  "slug": "uniform-equicontinuous-infi-dom--36e1e5fc8a0a83fc0922108f",
  "source": {
    "blob": "60a2468370e4f1a1f108a196c7cbfd52a43d4cb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 313,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36e1e5fc8a0a83fc0922108f0d8865ad2fe385d0a3a76f4dbb1a2797231bf2f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9151d1ca-ab57-c7ce-ce57-33e14e79c3c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_equicontinuous_infi_dom {β' : Type*} {u : κ → UniformSpace β'} {F : ι → β' → α}
    {k : κ} (hk : @UniformEquicontinuous _ _ _ _ (u k) F) :
    @UniformEquicontinuous _ _ _ _ (⨅ k, u k) F := by
  simp_rw [@uniformEquicontinuous_iff_uniformContinuous _ _ _ _ _] at hk ⊢
  exact uniformContinuous_iInf_dom hk

-- Porting note: changed from `∃ k (_ : p k), _` to `∃ k, p k ∧ _` since Lean 4 generates the
-- second one when parsing expressions like `∃ δ > 0, _`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60a2468370e4f1a1f108a196c7cbfd52a43d4cb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
