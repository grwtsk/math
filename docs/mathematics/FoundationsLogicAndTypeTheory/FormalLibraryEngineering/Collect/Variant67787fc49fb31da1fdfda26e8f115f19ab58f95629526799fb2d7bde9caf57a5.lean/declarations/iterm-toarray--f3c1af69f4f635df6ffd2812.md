# IterM.toArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f13adbe8eb1a4c0bea693221d4c1f2a4e07faebd5406dbc53cd99a1380039bd9",
  "kind": "def",
  "lexical_name": "IterM.toArray",
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
  "slug": "iterm-toarray--f3c1af69f4f635df6ffd2812",
  "source": {
    "blob": "69464b868de82b6d6db45c0bb11889900931997b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Collect/Variant67787fc49fb31da1fdfda26e8f115f19ab58f95629526799fb2d7bde9caf57a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3c1af69f4f635df6ffd28128d30efcac99ccbbbe7998120f86226a5fc003460",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Collect/Variant67787fc49fb31da1fdfda26e8f115f19ab58f95629526799fb2d7bde9caf57a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f13adbe8eb1a4c0bea693221d4c1f2a4e07faebd5406dbc53cd99a1380039bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IterM.toArray {α β : Type w} {m : Type w → Type w'} [Monad m] [Iterator α m β]
    (it : IterM (α := α) m β) : m (Array β) :=
  go it #[]
where
  @[always_inline]
  go it (acc : Array β) : m (Array β) :=
    WellFounded.extrinsicFix₂ (C₂ := fun _ _ => m (Array β)) (InvImage TerminationMeasures.Finite.Rel (·.1.finitelyManySteps!))
    (fun (it : IterM (α := α) m β) acc recur => do
      match (← it.step).inflate with
      | .yield it' out h =>
        recur it' (acc.push out) (by exact TerminationMeasures.Finite.rel_of_yield ‹_›)
      | .skip it' h => recur it' acc (by exact TerminationMeasures.Finite.rel_of_skip ‹_›)
      | .done _ => return acc) it acc

/--
Traverses the given iterator and stores the emitted values in an array.

This function is deprecated. Instead of `it.allowNontermination.toArray`, use `it.toArray`.
-/
@[always_inline, inline, deprecated IterM.toArray (since := "2025-10-23")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Collect/Variant67787fc49fb31da1fdfda26e8f115f19ab58f95629526799fb2d7bde9caf57a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Collect/Variant67787fc49fb31da1fdfda26e8f115f19ab58f95629526799fb2d7bde9caf57a5.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69464b868de82b6d6db45c0bb11889900931997b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
