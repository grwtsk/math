# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:199e0c70d6f5b1b1336f3ee90a1664e683740ea1518450ed782bb8ab8924f1f6",
  "kind": "instance",
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
  "slug": "instance--58be177f191ea18c3e0b56a1",
  "source": {
    "blob": "37ddcb6d88ff7063d4687303a1e29480c8632e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdadd60ae41bcae47100ce7c910477dc57d33f0dae001e3fce950478ef75ea72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58be177f191ea18c3e0b56a1386d6e8ee86a1b5e2c5cf177d02368c601688943",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdadd60ae41bcae47100ce7c910477dc57d33f0dae001e3fce950478ef75ea72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:199e0c70d6f5b1b1336f3ee90a1664e683740ea1518450ed782bb8ab8924f1f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Std.Asymm r] [Std.Asymm s] :
    Std.Asymm (Prod.Lex r s) where
  asymm
  | (_a₁, _a₂), (_b₁, _b₂), .left _ _ h₁, .left _ _ h₂ => Std.Asymm.asymm _ _ h₂ h₁
  | (_a₁, _a₂), (_, _b₂), .left _ _ h₁, .right _ _ => Std.Asymm.asymm _ _ h₁ h₁
  | (_a₁, _a₂), (_, _b₂), .right _ _, .left _ _ h₂ => Std.Asymm.asymm _ _ h₂ h₂
  | (_a₁, _a₂), (_, _b₂), .right _ h₁, .right _ h₂ => Std.Asymm.asymm _ _ h₁ h₂

end Prod

open Prod

namespace Function

variable {f : α → γ} {g : β → δ} {f₁ : α → β} {g₁ : γ → δ} {f₂ : β → α} {g₂ : δ → γ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdadd60ae41bcae47100ce7c910477dc57d33f0dae001e3fce950478ef75ea72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdadd60ae41bcae47100ce7c910477dc57d33f0dae001e3fce950478ef75ea72b.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ddcb6d88ff7063d4687303a1e29480c8632e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
