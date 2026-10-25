# traversable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf09aab2dad94014e617727b26b6cf442f950a36300bb5d1ad957d9643e2ae10",
  "kind": "def",
  "lexical_name": "traversable",
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
  "slug": "traversable--53e3fe38eafa7a0d38727fae",
  "source": {
    "blob": "082d27ba028c021f845af8b2c9c92504d24cc47f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantd5a988e114189620723c6e283ff67bb33ce5771f6682886a7dc27e2a2eee8486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53e3fe38eafa7a0d38727fae7acc8bb80ee7ae9fc93126bd92f6059c5512dbfd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantd5a988e114189620723c6e283ff67bb33ce5771f6682886a7dc27e2a2eee8486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf09aab2dad94014e617727b26b6cf442f950a36300bb5d1ad957d9643e2ae10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def traversable : Traversable t' where
  toFunctor := Equiv.functor eqv
  traverse := Equiv.traverse eqv

end Traversable

section Equiv

variable {t t' : Type u → Type u} (eqv : ∀ α, t α ≃ t' α)

-- Is this to do with the fact it lives in `Type (u+1)` not `Prop`?
variable [Traversable t] [LawfulTraversable t]
variable {F G : Type u → Type u} [Applicative F] [Applicative G]
variable [LawfulApplicative F] [LawfulApplicative G]
variable (η : ApplicativeTransformation F G)
variable {α β γ : Type u}

open LawfulTraversable Functor

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantd5a988e114189620723c6e283ff67bb33ce5771f6682886a7dc27e2a2eee8486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantd5a988e114189620723c6e283ff67bb33ce5771f6682886a7dc27e2a2eee8486.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `082d27ba028c021f845af8b2c9c92504d24cc47f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
