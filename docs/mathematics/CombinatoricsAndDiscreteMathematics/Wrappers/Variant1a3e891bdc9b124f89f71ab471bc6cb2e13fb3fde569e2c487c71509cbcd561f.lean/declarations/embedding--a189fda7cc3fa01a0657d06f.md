# Embedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8f2506297674c33d3d06966ec1f7f7f018271c2db63cba7de888fe386889ede",
  "kind": "structure",
  "lexical_name": "Embedding",
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
  "slug": "embedding--a189fda7cc3fa01a0657d06f",
  "source": {
    "blob": "485763032ad6a3b75cbf9cb4f97a27fc9327745e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 516,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a189fda7cc3fa01a0657d06fe404c9449b3e2188507c28d7144a4658416074cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8f2506297674c33d3d06966ec1f7f7f018271c2db63cba7de888fe386889ede`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Embedding {S : Type u} (P : Specification S) (Γ : List (Expr S))
    (γ : Nat → Mode) (Δ : List (Expr S)) (δ : Nat → Mode) where
  /-- The variable-index map of this typed labelled-context embedding. -/
  names : Nat → Nat
  valid : ValidContext P Δ
  typed : ∀ n A, Lookup Γ n A → HasType P Δ (.var (names n)) (A.rename names)
  modes : ∀ n, δ (names n) = γ n

namespace Embedding
variable {S : Type u} {P : Specification S}
    {Γ Δ Θ : List (Expr S)} {γ δ θ : Nat → Mode}

open Classical in
/-- The identity embedding of a valid labelled context. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `485763032ad6a3b75cbf9cb4f97a27fc9327745e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
