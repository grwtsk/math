# AddSemigroupAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dba74871361843fe68b8348de1871fefc761b5628a19861f25d7cff5c79a401",
  "kind": "class",
  "lexical_name": "AddSemigroupAction",
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
  "slug": "addsemigroupaction--ce324840ecd27ca84f867c99",
  "source": {
    "blob": "7b0a3e2cb77287558f463c9d186c63d2b6e1d837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 92,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce324840ecd27ca84f867c99c108026aa9619058fc5c62009275a9f9576461e1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dba74871361843fe68b8348de1871fefc761b5628a19861f25d7cff5c79a401`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AddSemigroupAction (G P : Type*) [AddSemigroup G] extends VAdd G P where
  /-- Associativity of `+ᵥ` and `+` -/
  add_vadd : ∀ (g₁ g₂ : G) (p : P), (g₁ + g₂) +ᵥ p = g₁ +ᵥ g₂ +ᵥ p

/-- Type class for actions by semigroups, with notation `g • p`.

The `SemigroupAction G P` typeclass says that the semigroup `G` acts multiplicatively on a type `P`.
More precisely this means that the action satisfies the axiom `(g₁ * g₂) • p = g₁ • (g₂ • p)`.
A mathematician might simply say that the semigroup `G` acts on `P`.

For example, if `G` is a semigroup and `X` is a type, if a mathematician says
say "let `G` act on the set `X`" they will probably mean  `[SemigroupAction G X]`. -/
@[to_additive (attr := ext)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b0a3e2cb77287558f463c9d186c63d2b6e1d837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
