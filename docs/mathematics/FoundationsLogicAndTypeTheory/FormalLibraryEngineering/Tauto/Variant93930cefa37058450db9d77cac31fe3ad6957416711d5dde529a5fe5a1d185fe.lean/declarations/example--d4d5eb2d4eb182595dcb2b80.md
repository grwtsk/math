# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fcffb45c4eba65a88ea90f4d109cb423e3725c1c2e2235a36d40f1539359c83",
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
  "slug": "example--d4d5eb2d4eb182595dcb2b80",
  "source": {
    "blob": "43e75014f5272355982da902c442e865c8c885db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tauto/Variant93930cefa37058450db9d77cac31fe3ad6957416711d5dde529a5fe5a1d185fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4d5eb2d4eb182595dcb2b8066b5f05407df213a7aee7cee80d30d6cb9324d3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tauto/Variant93930cefa37058450db9d77cac31fe3ad6957416711d5dde529a5fe5a1d185fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fcffb45c4eba65a88ea90f4d109cb423e3725c1c2e2235a36d40f1539359c83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {α : Type} [LE α] (a b c : α) (x₀ x₁ x₂ : Prop)
 (this1 : x₀ → x₁ → a ≤ c)
 (this2 : x₁ → x₂ → b ≤ a)
 (this3 : x₂ → x₀ → c ≤ b) :
    ((x₀ ∧ ¬b ≤ a) ∧ x₁ ∧ ¬c ≤ b ∨
         (x₁ ∧ ¬c ≤ b) ∧ x₂ ∧ ¬a ≤ c ∨ (x₂ ∧ ¬a ≤ c) ∧ x₀ ∧ ¬b ≤ a ↔
       (x₀ ∧ x₁ ∨ x₁ ∧ x₂ ∨ x₂ ∧ x₀) ∧
         ¬(c ≤ b ∧ b ≤ a ∨ b ≤ a ∧ a ≤ c ∨ a ≤ c ∧ c ≤ b)) :=
by aesop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tauto/Variant93930cefa37058450db9d77cac31fe3ad6957416711d5dde529a5fe5a1d185fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tauto/Variant93930cefa37058450db9d77cac31fe3ad6957416711d5dde529a5fe5a1d185fe.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43e75014f5272355982da902c442e865c8c885db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
