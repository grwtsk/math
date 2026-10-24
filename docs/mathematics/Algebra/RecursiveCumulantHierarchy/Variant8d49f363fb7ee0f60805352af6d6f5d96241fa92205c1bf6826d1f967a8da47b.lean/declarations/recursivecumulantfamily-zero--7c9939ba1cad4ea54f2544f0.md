# recursiveCumulantFamily_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1677e362fa4f4bac4296aace5e4aa94af66f3dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03f07fac-bc78-16c5-40ab-79a25d6e4b59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7607bc5f-e850-e74a-733d-497eb5a08d67",
  "kind": "theorem",
  "lexical_name": "recursiveCumulantFamily_zero",
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
  "slug": "recursivecumulantfamily-zero--7c9939ba1cad4ea54f2544f0",
  "source": {
    "blob": "f1677e362fa4f4bac4296aace5e4aa94af66f3dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 92,
    "path": "GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c9939ba1cad4ea54f2544f0d14d56f512414760abbcf1e2e8e647424d29eaf5",
  "verification": {
    "reference": "docs/verification/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7607bc5f-e850-e74a-733d-497eb5a08d67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recursiveCumulantFamily_zero
    (moments : DirectionMomentFamily E R)
    (directions : Fin 0 → E) :
    recursiveCumulantFamily moments 0 directions = 0 := by
  change recursiveCumulantAux moments 0 directions = 0
  rw [recursiveCumulantAux_eq_step]
  rfl

/-- The successor-order defining equation.  The n+1 cumulant is the n+1 moment
minus the proper-partition contribution computed from the already constructed
lower orders. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1677e362fa4f4bac4296aace5e4aa94af66f3dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
