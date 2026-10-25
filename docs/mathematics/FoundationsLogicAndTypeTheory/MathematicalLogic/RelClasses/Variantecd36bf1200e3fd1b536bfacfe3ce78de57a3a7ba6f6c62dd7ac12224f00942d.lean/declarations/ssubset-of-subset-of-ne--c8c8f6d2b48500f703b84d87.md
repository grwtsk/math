# ssubset_of_subset_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc8bdc4c-01a5-d8c0-0587-964f324ae186",
  "kind": "theorem",
  "lexical_name": "ssubset_of_subset_of_ne",
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
  "slug": "ssubset-of-subset-of-ne--c8c8f6d2b48500f703b84d87",
  "source": {
    "blob": "46732298c348e80a0d8d93e7c84cae6cd0d7d7cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 787,
    "line": 784,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantecd36bf1200e3fd1b536bfacfe3ce78de57a3a7ba6f6c62dd7ac12224f00942d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8c8f6d2b48500f703b84d873b7564bdf39b7c1173411ff61a483edb8b464550",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantecd36bf1200e3fd1b536bfacfe3ce78de57a3a7ba6f6c62dd7ac12224f00942d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc8bdc4c-01a5-d8c0-0587-964f324ae186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 784–787.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ssubset_of_subset_of_ne [IsAntisymm α (· ⊆ ·)] (h₁ : a ⊆ b) (h₂ : a ≠ b) : a ⊂ b :=
  h₁.ssubset_of_not_subset <| mt h₁.antisymm h₂
#align ssubset_of_subset_of_ne ssubset_of_subset_of_ne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantecd36bf1200e3fd1b536bfacfe3ce78de57a3a7ba6f6c62dd7ac12224f00942d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantecd36bf1200e3fd1b536bfacfe3ce78de57a3a7ba6f6c62dd7ac12224f00942d.lean#L784).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46732298c348e80a0d8d93e7c84cae6cd0d7d7cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
