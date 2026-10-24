# ratio_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1890e9185c034383282ffa84639c6da12d433f65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5bbf66a5-4abc-ab8c-4dc3-ae813282c169",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8269ab1a-4b2c-2e1d-ba09-a7cdcb32e1c1",
  "kind": "theorem",
  "lexical_name": "ratio_zpow",
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
  "slug": "ratio-zpow--8dab2345f5b8cb0982a92a67",
  "source": {
    "blob": "1890e9185c034383282ffa84639c6da12d433f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 166,
    "path": "GRWTSK/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dab2345f5b8cb0982a92a67636ee62f9c9cd0f2fd906172d297da79c08cd935",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8269ab1a-4b2c-2e1d-ba09-a7cdcb32e1c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ratio_zpow (e : X ≃ᵈ X) (n : ℤ) : ratio (e ^ n) = ratio e ^ n :=
  ratioHom.map_zpow _ _

/-- `DilationEquiv.toEquiv` as a monoid homomorphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1890e9185c034383282ffa84639c6da12d433f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
