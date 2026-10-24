# lipschitz_with_lipschitz_const_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43ca2c9bf5cb4b9197b552ee55a8c556fd77e38d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:769e319f-2943-c399-d478-3f35e81e758e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:108c41a7-a653-a855-ee1c-229e10559bc7",
  "kind": "theorem",
  "lexical_name": "lipschitz_with_lipschitz_const_mul",
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
  "slug": "lipschitz-with-lipschitz-const-mul--0bd8436ffcd1dba81c29dabe",
  "source": {
    "blob": "43ca2c9bf5cb4b9197b552ee55a8c556fd77e38d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 75,
    "path": "GRWTSK/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bd8436ffcd1dba81c29dabee255774e4de5e44ff303b99e42e2462a5b51797e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:108c41a7-a653-a855-ee1c-229e10559bc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lipschitz_with_lipschitz_const_mul :
    ∀ p q : β × β, dist (p.1 * p.2) (q.1 * q.2) ≤ LipschitzMul.C β * dist p q := by
  rw [← lipschitzWith_iff_dist_le_mul]
  exact lipschitzWith_lipschitz_const_mul_edist
#align lipschitz_with_lipschitz_const_mul lipschitz_with_lipschitz_const_mul
#align lipschitz_with_lipschitz_const_add lipschitz_with_lipschitz_const_add

-- see Note [lower instance priority]
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43ca2c9bf5cb4b9197b552ee55a8c556fd77e38d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
