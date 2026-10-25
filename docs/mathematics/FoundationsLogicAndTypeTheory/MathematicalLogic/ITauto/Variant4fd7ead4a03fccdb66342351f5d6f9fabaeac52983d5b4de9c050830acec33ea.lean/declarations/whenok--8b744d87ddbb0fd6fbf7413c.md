# whenOk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0464d0255558e155e5c4eb26073f4d9e5134fbe39c54471ae388bd3ae21f4acc",
  "kind": "def",
  "lexical_name": "whenOk",
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
  "slug": "whenok--8b744d87ddbb0fd6fbf7413c",
  "source": {
    "blob": "26babd9571a37e1ff290bd840ed4de9b4f580447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 402,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b744d87ddbb0fd6fbf7413ca3d6787c498006794df622e2f082afb217f3c67c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0464d0255558e155e5c4eb26073f4d9e5134fbe39c54471ae388bd3ae21f4acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def whenOk : Bool → IProp → StateM Nat (Bool × Proof) → StateM Nat (Bool × Proof)
  | false, _, _ => pure (false, .sorry)
  | true, _, f => f

mutual

/-- The search phase, which deals with the level 3 rules, which are rules that are not validity
preserving and so require proof search. One obvious one is the or-introduction rule: we prove
`A ∨ B` by proving `A` or `B`, and we might have to try one and backtrack.

There are two rules dealing with implication in this category: `p, p → C ⊢ B` where `p` is an
atom (which is safe if we can find it but often requires the right search to expose the `p`
assumption), and `(A₁ → A₂) → C ⊢ B`. We decompose the double implication into two subgoals: one to
prove `A₁ → A₂`, which can be written `A₂ → C, A₁ ⊢ A₂` (where we used `A₁` to simplify
`(A₁ → A₂) → C`), and one to use the consequent, `C ⊢ B`. The search here is that there are
potentially many implications to split like this, and we have to try all of them if we want to be
complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26babd9571a37e1ff290bd840ed4de9b4f580447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
