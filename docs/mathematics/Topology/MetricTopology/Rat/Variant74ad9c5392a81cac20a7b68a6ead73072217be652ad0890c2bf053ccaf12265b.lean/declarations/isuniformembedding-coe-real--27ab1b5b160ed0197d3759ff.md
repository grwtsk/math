# isUniformEmbedding_coe_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85dc5916-433e-86aa-78a6-a1cf14cb1dab",
  "kind": "theorem",
  "lexical_name": "isUniformEmbedding_coe_real",
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
  "slug": "isuniformembedding-coe-real--27ab1b5b160ed0197d3759ff",
  "source": {
    "blob": "62070975ca4e6e5fff210f46baef48783cf3cce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 41,
    "path": "GRWTSK/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27ab1b5b160ed0197d3759ffa860578adb8df77cfd69b40f0322bb4f5bf402af",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85dc5916-433e-86aa-78a6-a1cf14cb1dab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUniformEmbedding_coe_real : IsUniformEmbedding ((↑) : ℚ → ℝ) :=
  isUniformEmbedding_comap Rat.cast_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62070975ca4e6e5fff210f46baef48783cf3cce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
