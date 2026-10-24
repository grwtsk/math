# referenceMetric_eq_globalReference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:002b32da-d44f-fc7d-de5f-a86be4e7dcdc",
  "kind": "theorem",
  "lexical_name": "referenceMetric_eq_globalReference",
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
  "slug": "referencemetric-eq-globalreference--28e1b97bbc42ab6b98fe6c78",
  "source": {
    "blob": "7ab9f19667fd227990cc20cd89c55030c4933179",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variante8a880e024977c70f2c9468a90efe3810acf1bd4d7d749aeaf6110484999e209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28e1b97bbc42ab6b98fe6c7841e2a381d533059103322f1aba264e2a14cdc863",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variante8a880e024977c70f2c9468a90efe3810acf1bd4d7d749aeaf6110484999e209.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:002b32da-d44f-fc7d-de5f-a86be4e7dcdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem referenceMetric_eq_globalReference
    (round : LegalBoundedPrismaticDiffusion G V terrain boundary flow windows) :
    flow.referenceMetric =
      round.referenceAnchor.metricFromVertexState
        (fun v ↦ G.reference (round.vertexGlobal v)) :=
  round.referenceAnchor.referenceMetric_eq

/-- Every numerical neighbor has passed the full conjunctive gate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variante8a880e024977c70f2c9468a90efe3810acf1bd4d7d749aeaf6110484999e209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variante8a880e024977c70f2c9468a90efe3810acf1bd4d7d749aeaf6110484999e209.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ab9f19667fd227990cc20cd89c55030c4933179` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
