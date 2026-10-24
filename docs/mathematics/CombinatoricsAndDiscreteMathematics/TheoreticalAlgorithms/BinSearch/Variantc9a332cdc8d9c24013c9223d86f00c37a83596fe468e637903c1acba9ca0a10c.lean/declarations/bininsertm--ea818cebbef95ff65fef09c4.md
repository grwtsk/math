# binInsertM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46eccf47c05c50b2e408a3749a922ca67d1c4b1f5cca364bae841b6d2771c839",
  "kind": "def",
  "lexical_name": "binInsertM",
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
  "slug": "bininsertm--ea818cebbef95ff65fef09c4",
  "source": {
    "blob": "17d037bc1004a9b0ad3026bf64acc34fb6224528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea818cebbef95ff65fef09c4a56487a42f2894e17a896f2afed28b83eaf30044",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46eccf47c05c50b2e408a3749a922ca67d1c4b1f5cca364bae841b6d2771c839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] def binInsertM {α : Type u} {m : Type u → Type v} [Monad m]
    (lt : α → α → Bool)
    (merge : α → m α)
    (add : Unit → m α)
    (as : Array α)
    (k : α) : m (Array α) :=
  if h : as.size = 0 then do let v ← add (); pure <| as.push v
  else if lt k as[0] then do let v ← add (); pure <| as.insertIdx 0 v
  else if h' : !lt as[0] k then as.modifyM 0 <| merge
  else if lt as[as.size - 1] k then do let v ← add (); pure <| as.push v
  else if !lt k as[as.size - 1] then as.modifyM (as.size - 1) <| merge
  else binInsertAux lt merge add as k ⟨0, by omega⟩ ⟨as.size - 1, by omega⟩ (by simp) (by simpa using h')

/--
Inserts an element into a sorted array such that the resulting array is sorted. If the element is
already present in the array, it is not inserted.

The ordering predicate `lt` should be a total order on elements, and the array `as` should be sorted
with respect to `lt`.

`Array.binInsertM` is a more general operator that provides greater control over the handling of
duplicate elements in addition to running in a monad.

Examples:
* `#[0, 1, 3, 5].binInsert (· < ·) 2 = #[0, 1, 2, 3, 5]`
* `#[0, 1, 3, 5].binInsert (· < ·) 1 = #[0, 1, 3, 5]`
* `#[].binInsert (· < ·) 1 = #[1]`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17d037bc1004a9b0ad3026bf64acc34fb6224528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
