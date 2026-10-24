# noncommCoprod_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cbed43a-f70a-39fd-6171-7a7527a6a120",
  "kind": "theorem",
  "lexical_name": "noncommCoprod_unique",
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
  "slug": "noncommcoprod-unique--1930c3d6f2bb6b2f259602bd",
  "source": {
    "blob": "2e029c0b9e087062e5d102c6030d3941f57dba40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 115,
    "path": "GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1930c3d6f2bb6b2f259602bd938dece11d3c5efc48314ad4e488cb3762c72705",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cbed43a-f70a-39fd-6171-7a7527a6a120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noncommCoprod_unique (f : M × N →* P) :
    (f.comp (inl M N)).noncommCoprod (f.comp (inr M N)) (fun _ _ => (commute_inl_inr _ _).map f)
      = f :=
  ext fun x => by simp [inl_apply, inr_apply, ← map_mul]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e029c0b9e087062e5d102c6030d3941f57dba40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
