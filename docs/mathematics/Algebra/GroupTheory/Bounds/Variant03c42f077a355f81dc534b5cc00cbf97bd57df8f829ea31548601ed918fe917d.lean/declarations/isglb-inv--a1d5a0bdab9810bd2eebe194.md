# isGLB_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:319bbddb-05a0-2b71-4ec9-86cc9d6c03af",
  "kind": "theorem",
  "lexical_name": "isGLB_inv",
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
  "slug": "isglb-inv--a1d5a0bdab9810bd2eebe194",
  "source": {
    "blob": "b2a3a0a20d655908cdfd15c0ac62b97eda0e8033",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 112,
    "path": "GRWTSK/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1d5a0bdab9810bd2eebe194a9082bce5147666b754fd50402ba4157c0a4660d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:319bbddb-05a0-2b71-4ec9-86cc9d6c03af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isGLB_inv : IsGLB s⁻¹ a ↔ IsLUB s a⁻¹ :=
  (OrderIso.inv G).isGLB_preimage

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2a3a0a20d655908cdfd15c0ac62b97eda0e8033` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
