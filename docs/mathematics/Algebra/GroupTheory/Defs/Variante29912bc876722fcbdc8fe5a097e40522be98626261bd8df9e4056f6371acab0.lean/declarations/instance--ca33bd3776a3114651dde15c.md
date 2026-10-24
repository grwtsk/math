# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c5038a129d64d9ccf782509191a1189637da48dded26cf7fb315d9024ae0aba",
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
  "slug": "instance--ca33bd3776a3114651dde15c",
  "source": {
    "blob": "3735ec21f83a3bd3847a0a99d5e77fc183a2bd45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 316,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca33bd3776a3114651dde15cdc149a625183039fc4f98f9498f067f9ba5dbfe9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c5038a129d64d9ccf782509191a1189637da48dded26cf7fb315d9024ae0aba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 10) of_gt' {M : Type*} [AddZeroClass M] [Preorder M] [CanonicallyOrderedAdd M]
    [One M] {y : M}
    [Fact (1 < y)] : NeZero y := of_gt <| @Fact.out (1 < y) _

end NeZero

set_option linter.deprecated false in
/-- A canonically linear-ordered additive monoid is a canonically ordered additive monoid
    whose ordering is a linear order. -/
@[deprecated "Use `[LinearOrderedAddCommMonoid α] [CanonicallyOrderedAdd α]` instead."
  (since := "2025-01-13")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3735ec21f83a3bd3847a0a99d5e77fc183a2bd45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
