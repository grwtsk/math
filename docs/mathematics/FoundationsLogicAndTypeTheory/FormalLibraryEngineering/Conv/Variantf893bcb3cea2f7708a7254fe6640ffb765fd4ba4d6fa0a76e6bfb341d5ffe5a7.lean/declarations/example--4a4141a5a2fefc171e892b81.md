# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1371dbc32b2f22d119eb0bc64273ad7ec5710804f961bbec18fce4ab238e1ae",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--4a4141a5a2fefc171e892b81",
  "source": {
    "blob": "97de46c5f778c078a4af38597d8e4947c30a08c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 453,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a4141a5a2fefc171e892b816e1ae8ce91adeeffa7ee2f638ded5323d7779d64",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1371dbc32b2f22d119eb0bc64273ad7ec5710804f961bbec18fce4ab238e1ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example [Add α] [Neg α] [OfNat α (nat_lit 0)]
    (h₁ : ∀ (a : α), a + 0 = a)
    (h₂ : ∀ (a b c : α), (a + b) + c = a + (b + c))
    (h₃ : ∀ (a : α), a + (-a) = 0) :
    ∀ (a : α), (-a) + a = 0 :=
by with_panel_widgets [ConvPanel]
  intro a
  have : ∀ (a : α), a + a = a → a = 0 := by
    intro a h
    rw [← h₁ a, ← h₃ a, ← h₂, h]
  apply this
  rw [← h₂]
  conv =>
    -- Place your cursor in the `conv` block
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97de46c5f778c078a4af38597d8e4947c30a08c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
