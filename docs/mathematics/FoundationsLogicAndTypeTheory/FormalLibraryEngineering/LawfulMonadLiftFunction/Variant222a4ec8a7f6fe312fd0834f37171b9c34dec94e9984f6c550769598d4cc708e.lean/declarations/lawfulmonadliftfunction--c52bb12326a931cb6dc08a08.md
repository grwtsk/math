# LawfulMonadLiftFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:222fbd09db75f49e10c58e17d13284109e5f3da8db5454b28bc36e5591993ca9",
  "kind": "class",
  "lexical_name": "LawfulMonadLiftFunction",
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
  "slug": "lawfulmonadliftfunction--c52bb12326a931cb6dc08a08",
  "source": {
    "blob": "f60c104c189ca6890487c4c0ddc348b547fa7b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLiftFunction/Variant222a4ec8a7f6fe312fd0834f37171b9c34dec94e9984f6c550769598d4cc708e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c52bb12326a931cb6dc08a08daf39d3cb9529a9ab383247d394d6e8bd9df70a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLiftFunction/Variant222a4ec8a7f6fe312fd0834f37171b9c34dec94e9984f6c550769598d4cc708e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:222fbd09db75f49e10c58e17d13284109e5f3da8db5454b28bc36e5591993ca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulMonadLiftFunction {m : Type u → Type v} {n : Type u → Type w}
    [Monad m] [Monad n] (lift : ⦃α : Type u⦄ → m α → n α) where
  lift_pure {α : Type u} (a : α) : lift (pure a) = pure a
  lift_bind {α β : Type u} (ma : m α) (f : α → m β) :
    lift (ma >>= f) = lift ma >>= (fun x => lift (f x))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLiftFunction/Variant222a4ec8a7f6fe312fd0834f37171b9c34dec94e9984f6c550769598d4cc708e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLiftFunction/Variant222a4ec8a7f6fe312fd0834f37171b9c34dec94e9984f6c550769598d4cc708e.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f60c104c189ca6890487c4c0ddc348b547fa7b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
