# edist_vsub_vsub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24a2367a-662e-5548-9e5b-f582bf0a8c18",
  "kind": "theorem",
  "lexical_name": "edist_vsub_vsub_le",
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
  "slug": "edist-vsub-vsub-le--857894082f785453ecb14b93",
  "source": {
    "blob": "bd902453c068c852d2df93d8da7c67478d369afd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 184,
    "path": "GRWTSK/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:857894082f785453ecb14b937f886d4415300b7511925c13731093cc07360a0c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24a2367a-662e-5548-9e5b-f582bf0a8c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edist_vsub_vsub_le (p₁ p₂ p₃ p₄ : P) :
    edist (p₁ -ᵥ p₂) (p₃ -ᵥ p₄) ≤ edist p₁ p₃ + edist p₂ p₄ := by
  simp only [edist_nndist]
  norm_cast
  apply dist_vsub_vsub_le

/-- The pseudodistance defines a pseudometric space structure on the torsor. This
is not an instance because it depends on `V` to define a `MetricSpace P`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd902453c068c852d2df93d8da7c67478d369afd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
