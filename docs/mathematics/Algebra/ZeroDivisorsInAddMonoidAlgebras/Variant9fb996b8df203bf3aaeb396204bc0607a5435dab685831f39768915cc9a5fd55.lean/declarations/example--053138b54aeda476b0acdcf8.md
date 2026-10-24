# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a90bdf5cad5fa6120cdc6095b8b760460ac0c2dfc66516419c35cf6e7bf74f0",
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
  "slug": "example--053138b54aeda476b0acdcf8",
  "source": {
    "blob": "a354e7ca431a6ee372411fd93d0c9e9e70501db8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 245,
    "path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:053138b54aeda476b0acdcf8159902c2f179f7ef8267666636f2b18bfef8fcb4",
  "verification": {
    "reference": "docs/verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a90bdf5cad5fa6120cdc6095b8b760460ac0c2dfc66516419c35cf6e7bf74f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ¬CovariantClass (Lex (F →₀ F)) (Lex (F →₀ F)) (· + ·) (· ≤ ·) := by
  rintro ⟨h⟩
  refine (not_lt (α := Lex (F →₀ F))).mpr (@h (Finsupp.single (0 : F) (1 : F))
    (Finsupp.single 1 1) (Finsupp.single 0 1) ?_) ⟨1, ?_⟩
  · exact Or.inr ⟨0, by simp [(by boom : ∀ j : F, j < 0 ↔ False)]⟩
  · simp only [(by boom : ∀ j : F, j < 1 ↔ j = 0), Function.comp, ofLex_add, toDFinsupp_add,
      toLex_add, ofLex_toLex, DFinsupp.coe_add, toDFinsupp_coe, Pi.toLex_apply, Pi.add_apply,
      forall_eq, f010, f1, f110, add_zero, f011, f111, zero_add, and_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a354e7ca431a6ee372411fd93d0c9e9e70501db8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
