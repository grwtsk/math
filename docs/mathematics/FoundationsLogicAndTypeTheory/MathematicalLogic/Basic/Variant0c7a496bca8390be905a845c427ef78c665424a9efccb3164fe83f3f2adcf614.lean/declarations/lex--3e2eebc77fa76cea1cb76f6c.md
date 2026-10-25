# Lex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95b322acffeb0efb233f47a9ba60788286bd1b79ea548c0a0c6fa695e5d6fef1",
  "kind": "inductive",
  "lexical_name": "Lex",
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
  "slug": "lex--3e2eebc77fa76cea1cb76f6c",
  "source": {
    "blob": "79eb6b631475d941eb80b8b21e673f6a6ffa0702",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e2eebc77fa76cea1cb76f6cba0c7f039a62ba976c5af5e106f35f6cca1aabf4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95b322acffeb0efb233f47a9ba60788286bd1b79ea548c0a0c6fa695e5d6fef1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Lex (r : α → α → Prop) (s : β → β → Prop) : α ⊕ β → α ⊕ β → Prop
  /-- `inl a₁` and `inl a₂` are related via `Lex r s` if `a₁` and `a₂` are related via `r`. -/
  | protected inl {a₁ a₂} (h : r a₁ a₂) : Lex r s (inl a₁) (inl a₂)
  /-- `inr b₁` and `inr b₂` are related via `Lex r s` if `b₁` and `b₂` are related via `s`. -/
  | protected inr {b₁ b₂} (h : s b₁ b₂) : Lex r s (inr b₁) (inr b₂)
  /-- `inl a` and `inr b` are always related via `Lex r s`. -/
  | sep (a b) : Lex r s (inl a) (inr b)

attribute [simp] Lex.sep

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79eb6b631475d941eb80b8b21e673f6a6ffa0702` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
