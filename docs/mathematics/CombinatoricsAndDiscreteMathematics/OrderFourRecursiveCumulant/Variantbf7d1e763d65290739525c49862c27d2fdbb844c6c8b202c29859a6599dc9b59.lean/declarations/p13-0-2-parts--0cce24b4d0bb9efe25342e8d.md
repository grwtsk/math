# p13_0_2_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dd4f8d1-f1eb-cdaa-e070-1db70f002ca8",
  "kind": "theorem",
  "lexical_name": "p13_0_2_parts",
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
  "slug": "p13-0-2-parts--0cce24b4d0bb9efe25342e8d",
  "source": {
    "blob": "e4103f0d53ec4d8d5c19a2808fd322afcc89fcc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variantbf7d1e763d65290739525c49862c27d2fdbb844c6c8b202c29859a6599dc9b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cce24b4d0bb9efe25342e8deb8a10f2a4cee3e2f1a7a3af80c4e1ec9ae59c9c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variantbf7d1e763d65290739525c49862c27d2fdbb844c6c8b202c29859a6599dc9b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dd4f8d1-f1eb-cdaa-e070-1db70f002ca8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem p13_0_2_parts :
    p13_0_2.parts =
      {{(1 : Fin 4), (3 : Fin 4)}, {(0 : Fin 4)}, {(2 : Fin 4)}} := rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variantbf7d1e763d65290739525c49862c27d2fdbb844c6c8b202c29859a6599dc9b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variantbf7d1e763d65290739525c49862c27d2fdbb844c6c8b202c29859a6599dc9b59.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4103f0d53ec4d8d5c19a2808fd322afcc89fcc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
