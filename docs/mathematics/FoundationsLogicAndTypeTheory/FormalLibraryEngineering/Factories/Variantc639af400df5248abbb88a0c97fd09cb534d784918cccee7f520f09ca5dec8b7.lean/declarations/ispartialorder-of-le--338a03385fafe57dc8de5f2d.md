# IsPartialOrder.of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22edd7d7-58d4-0dd7-cd12-89f16c2f3108",
  "kind": "theorem",
  "lexical_name": "IsPartialOrder.of_le",
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
  "slug": "ispartialorder-of-le--338a03385fafe57dc8de5f2d",
  "source": {
    "blob": "9291420dd9ecaa478c82feb007a7dba9e95d4c67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Factories/Variantc639af400df5248abbb88a0c97fd09cb534d784918cccee7f520f09ca5dec8b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:338a03385fafe57dc8de5f2d1428a62d8f459f8c9e8608d03f70865567120fd8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Factories/Variantc639af400df5248abbb88a0c97fd09cb534d784918cccee7f520f09ca5dec8b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22edd7d7-58d4-0dd7-cd12-89f16c2f3108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem IsPartialOrder.of_le {α : Type u} [LE α]
    (le_refl : Std.Refl (α := α) (· ≤ ·) := by exact inferInstance)
    (le_antisymm : Std.Antisymm (α := α) (· ≤ ·) := by exact inferInstance)
    (le_trans : Trans (α := α) (· ≤ ·) (· ≤ ·) (· ≤ ·) := by exact inferInstance) :
    IsPartialOrder α where
  toIsPreorder := .of_le
  le_antisymm := le_antisymm.antisymm

/--
If an `LE α` instance is antisymmetric, transitive and total, then it represents a linear order.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Factories/Variantc639af400df5248abbb88a0c97fd09cb534d784918cccee7f520f09ca5dec8b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Factories/Variantc639af400df5248abbb88a0c97fd09cb534d784918cccee7f520f09ca5dec8b7.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9291420dd9ecaa478c82feb007a7dba9e95d4c67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
