# adaptDown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53acfcc64e3ea0d272b27b36dc009a486ed23600434ce4ef89bdfc366119a879",
  "kind": "def",
  "lexical_name": "adaptDown",
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
  "slug": "adaptdown--fd52054437cc28defb5172a6",
  "source": {
    "blob": "1c4328dc5f6093ac487a063faf686dc812908ba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd52054437cc28defb5172a65fa9dc976517b6ae3a79945ee75621665531995c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53acfcc64e3ea0d272b27b36dc009a486ed23600434ce4ef89bdfc366119a879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adaptDown {F : Type max u₀ v₀ → Type u₁} {G : Type v₀ → Type v₁} [L : ULiftable G F] [Monad F]
    {α β} (x : F α) (f : α → G β) : G β :=
  @down.{v₀, v₁, max u₀ v₀} G F L β <| x >>= @up.{v₀, v₁, max u₀ v₀} G F L β ∘ f
#align uliftable.adapt_down ULiftable.adaptDown

/-- map function that moves up universes -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant1f436069ffb516b5e1e87c6242a834a69573049944951d440d83e4ed7c74f90e.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c4328dc5f6093ac487a063faf686dc812908ba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
