# IterM.IsPlausibleIndirectOutput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b51516a228498a5e0f22fd96ac3e28f573ec88272c17d64d657244f0957f6ab2",
  "kind": "inductive",
  "lexical_name": "IterM.IsPlausibleIndirectOutput",
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
  "slug": "iterm-isplausibleindirectoutput--1f0c77cecd9f3054d1b72316",
  "source": {
    "blob": "8de2a849308ba2e5e940cd7bfc4ba26967d15915",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 494,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5bbdcded240dbcf2a835fb722164c0cd79e001355572f39c9bca20e7eaa043e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f0c77cecd9f3054d1b72316ddd0bf48601fa3d81906685a77882a1aedc12cbd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5bbdcded240dbcf2a835fb722164c0cd79e001355572f39c9bca20e7eaa043e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b51516a228498a5e0f22fd96ac3e28f573ec88272c17d64d657244f0957f6ab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive IterM.IsPlausibleIndirectOutput {α β : Type w} {m : Type w → Type w'} [Iterator α m β]
    : IterM (α := α) m β → β → Prop where
  /-- The output value could plausibly be emitted in the next step. -/
  | direct {it : IterM (α := α) m β} {out : β} : it.IsPlausibleOutput out →
      it.IsPlausibleIndirectOutput out
  /-- The output value could plausibly be emitted in a step after the next step. -/
  | indirect {it it' : IterM (α := α) m β} {out : β} : it'.IsPlausibleSuccessorOf it →
      it'.IsPlausibleIndirectOutput out → it.IsPlausibleIndirectOutput out

/--
Asserts that an iterator `it'` could plausibly produce `it'` as a successor iterator after
finitely many steps. This relation is reflexive.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5bbdcded240dbcf2a835fb722164c0cd79e001355572f39c9bca20e7eaa043e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5bbdcded240dbcf2a835fb722164c0cd79e001355572f39c9bca20e7eaa043e5.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de2a849308ba2e5e940cd7bfc4ba26967d15915` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
