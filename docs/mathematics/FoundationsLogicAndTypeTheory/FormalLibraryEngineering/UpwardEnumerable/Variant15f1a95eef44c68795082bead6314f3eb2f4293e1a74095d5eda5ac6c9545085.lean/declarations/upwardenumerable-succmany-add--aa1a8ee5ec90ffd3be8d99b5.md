# UpwardEnumerable.succMany_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f1e90a0-ae74-382f-bef3-43af39df408e",
  "kind": "theorem",
  "lexical_name": "UpwardEnumerable.succMany_add",
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
  "slug": "upwardenumerable-succmany-add--aa1a8ee5ec90ffd3be8d99b5",
  "source": {
    "blob": "36147f909a29d4e63a906871eacd52e0cfa7d6ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 383,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpwardEnumerable/Variant15f1a95eef44c68795082bead6314f3eb2f4293e1a74095d5eda5ac6c9545085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa1a8ee5ec90ffd3be8d99b5c6cfaaa0a8f85617a198bd765291940a1088b705",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpwardEnumerable/Variant15f1a95eef44c68795082bead6314f3eb2f4293e1a74095d5eda5ac6c9545085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f1e90a0-ae74-382f-bef3-43af39df408e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UpwardEnumerable.succMany_add {α : Type u} [UpwardEnumerable α]
    [LawfulUpwardEnumerable α] [InfinitelyUpwardEnumerable α]
    {m n : Nat} {a : α} : succMany (m + n) a = succMany n (succMany m a) := by
  simp [succMany, succMany?_add]

export UpwardEnumerable (isSome_succ? succ?_inj succ succ_eq_get succ?_eq_some succ_inj
                         succ_eq_succ_iff isSome_succMany? succMany succMany_eq_get
                         succMany?_eq_some succMany?_eq_some_iff_succMany succMany_one succMany_zero
                         succMany_add)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpwardEnumerable/Variant15f1a95eef44c68795082bead6314f3eb2f4293e1a74095d5eda5ac6c9545085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpwardEnumerable/Variant15f1a95eef44c68795082bead6314f3eb2f4293e1a74095d5eda5ac6c9545085.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36147f909a29d4e63a906871eacd52e0cfa7d6ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
