# affineCombination_touchpointWeights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a2cd4a1-fb16-18d7-568b-ee85c9073453",
  "kind": "lemma",
  "lexical_name": "affineCombination_touchpointWeights",
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
  "slug": "affinecombination-touchpointweights--f6b5ea68aa0c31293516f13b",
  "source": {
    "blob": "1d7b5902c403049b85d9ff01a8f82d74ea7abe4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1106,
    "line": 1101,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6b5ea68aa0c31293516f13b30b65a95a7d3b166a8fb10f5cf57139365e41dbc",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a2cd4a1-fb16-18d7-568b-ee85c9073453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1101–1106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma affineCombination_touchpointWeights (signs : Finset (Fin (n + 1))) (i : Fin (n + 1)) :
    Finset.univ.affineCombination ℝ s.points (s.touchpointWeights signs i) = s.touchpoint signs i :=
  (eq_affineCombination_of_mem_affineSpan_of_fintype
    (s.touchpoint_mem_affineSpan_simplex signs i)).choose_spec.2.symm

variable {s} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean#L1101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d7b5902c403049b85d9ff01a8f82d74ea7abe4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
