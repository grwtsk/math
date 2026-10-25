# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edc3ab7e0b5f3f9d46492bd747cbb2e0fa4f8d952d30068bebb696245f36e2c1",
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
  "slug": "example--3f14d0f7fe9054cd9fa2ea9e",
  "source": {
    "blob": "374b8f0b7bfbef340146560972ada433d7021bc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 349,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant2c92b849241d3ee1b87af439a913cc097ea352b4367c329a157b7f1ee81bd27f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f14d0f7fe9054cd9fa2ea9e5e465dcc44d66cfd10a7bd87e1e236965f10f92d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant2c92b849241d3ee1b87af439a913cc097ea352b4367c329a157b7f1ee81bd27f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edc3ab7e0b5f3f9d46492bd747cbb2e0fa4f8d952d30068bebb696245f36e2c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {P : α → Prop} {Q R : α → α → Prop}
    (h₁ : ∀ a b, P a → P b → Q a b → R b a)
    (h₂ : P c) (h₃ : P d) (h₄ : Q a b) (h₅ : P b) (h₆ : P a) : Q b a := by
  saturate? [*]

/--
info: Try this:

  [apply]     have fwd : R c d := h₁ d c h₃ h₂ h₇
    have fwd_1 : R b a := h₁ a b h₆ h₅ h₄
---
error: unsolved goals
α : Sort u_1
c d a b : α
P : α → Prop
Q R : α → α → Prop
h₁ : ∀ (a b : α), P a → P b → Q a b → R b a
h₂ : P c
h₃ : P d
h₄ : Q a b
h₅ : P b
h₆ : P a
h₇ : Q d c
fwd : R c d
fwd_1 : R b a
⊢ Q b a
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant2c92b849241d3ee1b87af439a913cc097ea352b4367c329a157b7f1ee81bd27f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant2c92b849241d3ee1b87af439a913cc097ea352b4367c329a157b7f1ee81bd27f.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `374b8f0b7bfbef340146560972ada433d7021bc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
