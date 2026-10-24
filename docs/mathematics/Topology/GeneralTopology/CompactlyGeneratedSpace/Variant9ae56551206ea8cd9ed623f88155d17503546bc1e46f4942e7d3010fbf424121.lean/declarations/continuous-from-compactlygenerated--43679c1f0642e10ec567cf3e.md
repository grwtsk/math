# continuous_from_compactlyGenerated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6937be976453441d26c55e790be5352ece73834b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4633d7cb-0c42-298a-3263-1c527f4ca017",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07be5a31-d74e-4cb7-d875-788d4962e85d",
  "kind": "lemma",
  "lexical_name": "continuous_from_compactlyGenerated",
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
  "slug": "continuous-from-compactlygenerated--43679c1f0642e10ec567cf3e",
  "source": {
    "blob": "6937be976453441d26c55e790be5352ece73834b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43679c1f0642e10ec567cf3e0ea410f44d6667da0c7220368266c3c673850f3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07be5a31-d74e-4cb7-d875-788d4962e85d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_from_compactlyGenerated [TopologicalSpace X] [t : TopologicalSpace Y] (f : X → Y)
    (h : ∀ (S : CompHaus.{u}) (g : C(S, X)), Continuous (f ∘ g)) :
        Continuous[compactlyGenerated.{u} X, t] f := by
  rw [continuous_coinduced_dom]
  continuity

/--
A topological space `X` is compactly generated if its topology is finer than (and thus equal to)
the compactly generated topology, i.e. it is coinduced by the continuous maps from compact
Hausdorff spaces to `X`.

This version includes an explicit universe parameter `u` which should always be specified. It is
intended for categorical purposes. See `CompactlyGeneratedSpace` for the version without this
parameter, intended for topological purposes.
-/
-- After https://github.com/leanprover/lean4/pull/12286 and
-- https://github.com/leanprover/lean4/pull/12423, the compact space universe `u` would default
-- to a universe output parameter. See Note [universe output parameters and typeclass caching].
@[univ_out_params]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6937be976453441d26c55e790be5352ece73834b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
