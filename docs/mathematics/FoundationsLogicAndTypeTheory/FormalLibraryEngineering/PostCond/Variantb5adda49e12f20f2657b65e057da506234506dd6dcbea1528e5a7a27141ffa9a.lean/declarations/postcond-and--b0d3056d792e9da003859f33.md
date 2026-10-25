# PostCond.and

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c91c3b58c3dbd47c1160d950387857b5bea246275a133e72b7f03fe676455a2",
  "kind": "abbrev",
  "lexical_name": "PostCond.and",
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
  "slug": "postcond-and--b0d3056d792e9da003859f33",
  "source": {
    "blob": "9e601c2c488cb97512b5f1b013414a9e4b2c1496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variantb5adda49e12f20f2657b65e057da506234506dd6dcbea1528e5a7a27141ffa9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0d3056d792e9da003859f3333ef6afa9ad69eb8decbc972bd3f8e32810e744e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variantb5adda49e12f20f2657b65e057da506234506dd6dcbea1528e5a7a27141ffa9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c91c3b58c3dbd47c1160d950387857b5bea246275a133e72b7f03fe676455a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev PostCond.and {α ps} (p : PostCond α ps) (q : PostCond α ps) : PostCond α ps :=
  (fun a => SPred.and (p.1 a) (q.1 a), ExceptConds.and p.2 q.2)

@[inherit_doc PostCond.and]
scoped infixr:35 " ∧ₚ " => PostCond.and

/--
Implication of postconditions.

This is defined pointwise, as the implication of the assertions about the return value and the
implications of each of the assertions about each potential exception.

While entailment of postconditions (`PostCond.entails`) is an ordinary proposition, implication of
postconditions is itself a postcondition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variantb5adda49e12f20f2657b65e057da506234506dd6dcbea1528e5a7a27141ffa9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variantb5adda49e12f20f2657b65e057da506234506dd6dcbea1528e5a7a27141ffa9a.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e601c2c488cb97512b5f1b013414a9e4b2c1496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
