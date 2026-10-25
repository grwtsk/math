# Entails

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6c2cfaf45e63073bf851ce6873a3d349a5147da40c6192e04a6dfce4ace3e39",
  "kind": "class",
  "lexical_name": "Entails",
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
  "slug": "entails--d38ce7e242ae3ae3ff846721",
  "source": {
    "blob": "93f4cc0aadcfae51b4ea412951f9e60c1a7c068f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variantcec82a294fd728c842d221d77578a8d54d7d9b6f429d6d1f896e9c86886e6b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d38ce7e242ae3ae3ff846721129e6bbd04e42cdf7d1494d87f1c5afe6ffab3cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variantcec82a294fd728c842d221d77578a8d54d7d9b6f429d6d1f896e9c86886e6b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6c2cfaf45e63073bf851ce6873a3d349a5147da40c6192e04a6dfce4ace3e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Entails (α : Type u) (β : Type v) where
  eval : (α → Bool) → β → Prop

/--
`a ⊨ f` reads formula `f` is true under assignment `a`.
-/
scoped infix:25 " ⊨ " => Entails.eval

/--
`a ⊭ f` reads formula `f` is false under assignment `a`.
-/
scoped notation:25 a:25 " ⊭ " f:30 => ¬(Entails.eval a f)

/--
`f` is not true under any assignment.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variantcec82a294fd728c842d221d77578a8d54d7d9b6f429d6d1f896e9c86886e6b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variantcec82a294fd728c842d221d77578a8d54d7d9b6f429d6d1f896e9c86886e6b94.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f4cc0aadcfae51b4ea412951f9e60c1a7c068f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
