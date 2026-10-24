# SublistForall₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7ce9cf86a0925b80b17bcc04e2c74ae057cdd35eadb62d0ced3a6af08ea93df",
  "kind": "inductive",
  "lexical_name": "SublistForall₂",
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
  "slug": "sublistforall--eb2289753dfdba993c4fe40d",
  "source": {
    "blob": "11e3433323e2b5a73e82a81f58dab7c2edd209f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 277,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant61bc6ac31f6469ac74cbfde0bc5f8ab6f12fa6d671ef4f36600598d62787e503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb2289753dfdba993c4fe40de46643a27696690cd54a6a9d00975c62768d1591",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant61bc6ac31f6469ac74cbfde0bc5f8ab6f12fa6d671ef4f36600598d62787e503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7ce9cf86a0925b80b17bcc04e2c74ae057cdd35eadb62d0ced3a6af08ea93df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive SublistForall₂ (R : α → β → Prop) : List α → List β → Prop
  | nil {l} : SublistForall₂ R [] l
  | cons {a₁ a₂ l₁ l₂} : R a₁ a₂ → SublistForall₂ R l₁ l₂ → SublistForall₂ R (a₁ :: l₁) (a₂ :: l₂)
  | cons_right {a l₁ l₂} : SublistForall₂ R l₁ l₂ → SublistForall₂ R l₁ (a :: l₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant61bc6ac31f6469ac74cbfde0bc5f8ab6f12fa6d671ef4f36600598d62787e503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant61bc6ac31f6469ac74cbfde0bc5f8ab6f12fa6d671ef4f36600598d62787e503.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11e3433323e2b5a73e82a81f58dab7c2edd209f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
