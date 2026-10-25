# IterM.take.surjective_of_zero_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91527287-f83b-8e21-67c5-dd22b461e6b8",
  "kind": "theorem",
  "lexical_name": "IterM.take.surjective_of_zero_lt",
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
  "slug": "iterm-take-surjective-of-zero-lt--92c39496f22ad15c638de0b0",
  "source": {
    "blob": "af12b055c54f8bcfdbdfd1e2a6e84f5efe69f018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92c39496f22ad15c638de0b09a354df06a367e85532a127c6fb284d57f91b9d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91527287-f83b-8e21-67c5-dd22b461e6b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.take.surjective_of_zero_lt {α : Type w} {m : Type w → Type w'} {β : Type w}
    [Iterator α m β] (it : IterM (α := Take α m) m β) (h : 0 < it.internalState.countdown) :
    ∃ (it₀ : IterM (α := α) m β) (k : Nat), it = it₀.take k := by
  refine ⟨it.internalState.inner, it.internalState.countdown - 1, ?_⟩
  simp [take, Nat.sub_add_cancel (m := 1) (n := it.internalState.countdown) (by omega)]

namespace Iterators.Types

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af12b055c54f8bcfdbdfd1e2a6e84f5efe69f018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
