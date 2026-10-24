# uniform_continuity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44372ea4077fd0b88ed63fdb6296bc228aab8e6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c4103e8-9d8c-2eca-9592-4052d2daeb48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55fdcd38-beda-cf49-c7f8-865f96962559",
  "kind": "theorem",
  "lexical_name": "uniform_continuity",
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
  "slug": "uniform-continuity--5de02d40547efc92219c69c0",
  "source": {
    "blob": "44372ea4077fd0b88ed63fdb6296bc228aab8e6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 359,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5de02d40547efc92219c69c03e485acfc40a74c0a725b46027d8e9f0db792dc7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55fdcd38-beda-cf49-c7f8-865f96962559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_continuity (f : C(α, β)) (ε : ℝ) (h : 0 < ε) :
    ∃ δ > 0, ∀ {x y}, dist x y < δ → dist (f x) (f y) < ε :=
  Metric.uniformContinuous_iff.mp (CompactSpace.uniformContinuous_of_continuous f.continuous) ε h
#align continuous_map.uniform_continuity ContinuousMap.uniform_continuity

-- This definition allows us to separate the choice of some `δ`,
-- and the corresponding use of `dist a b < δ → dist (f a) (f b) < ε`,
-- even across different declarations.
/-- An arbitrarily chosen modulus of uniform continuity for a given function `f` and `ε > 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44372ea4077fd0b88ed63fdb6296bc228aab8e6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
