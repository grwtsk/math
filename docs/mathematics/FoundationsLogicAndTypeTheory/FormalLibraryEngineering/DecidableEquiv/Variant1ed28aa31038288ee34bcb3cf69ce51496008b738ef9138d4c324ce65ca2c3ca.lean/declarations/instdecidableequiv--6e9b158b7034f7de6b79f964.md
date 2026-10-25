# instDecidableEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb5b2a1c2621d6f33940fddff4bb672418d53122382101d92f3daae1f230de49",
  "kind": "def",
  "lexical_name": "instDecidableEquiv",
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
  "slug": "instdecidableequiv--6e9b158b7034f7de6b79f964",
  "source": {
    "blob": "0ca5af139ddcc2e283fa675383cfd8a5653cceb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecidableEquiv/Variant1ed28aa31038288ee34bcb3cf69ce51496008b738ef9138d4c324ce65ca2c3ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e9b158b7034f7de6b79f96410dc702208fd5c74c3ffabaa48dfce67c138e137",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecidableEquiv/Variant1ed28aa31038288ee34bcb3cf69ce51496008b738ef9138d4c324ce65ca2c3ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb5b2a1c2621d6f33940fddff4bb672418d53122382101d92f3daae1f230de49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def instDecidableEquiv {α : Type u} {β : Type v} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] [BEq β] [LawfulBEq β] {t₁ t₂ : Raw α β cmp} (h₁ : t₁.WF) (h₂ : t₂.WF) : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  let : Decidable (t₁.inner ~m t₂.inner) := DTreeMap.Raw.instDecidableEquiv h₁ h₂;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.TreeMap.Raw
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecidableEquiv/Variant1ed28aa31038288ee34bcb3cf69ce51496008b738ef9138d4c324ce65ca2c3ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecidableEquiv/Variant1ed28aa31038288ee34bcb3cf69ce51496008b738ef9138d4c324ce65ca2c3ca.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca5af139ddcc2e283fa675383cfd8a5653cceb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
