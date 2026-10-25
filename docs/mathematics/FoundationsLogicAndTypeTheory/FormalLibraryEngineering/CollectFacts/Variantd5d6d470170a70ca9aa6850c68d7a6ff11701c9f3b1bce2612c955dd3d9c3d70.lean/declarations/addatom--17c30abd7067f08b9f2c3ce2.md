# addAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27f4ee7572c58c50644b0dbf25f3883713e847ec3e79402e8e08fa151d6febda",
  "kind": "def",
  "lexical_name": "addAtom",
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
  "slug": "addatom--17c30abd7067f08b9f2c3ce2",
  "source": {
    "blob": "bb093be81f328f40c7674823b619f19c00c5e23c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variantd5d6d470170a70ca9aa6850c68d7a6ff11701c9f3b1bce2612c955dd3d9c3d70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17c30abd7067f08b9f2c3ce26df97b4d0ad6206d962bc611d8957759aa6e204d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variantd5d6d470170a70ca9aa6850c68d7a6ff11701c9f3b1bce2612c955dd3d9c3d70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27f4ee7572c58c50644b0dbf25f3883713e847ec3e79402e8e08fa151d6febda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def addAtom {u : Level} (type : Q(Type u)) (x : Q($type)) : CollectFactsM Nat := do
  match ← AtomM.containsThenAddQ x with
  | (true, idx, _) => return idx
  | (false, idx, ⟨x', _⟩) =>
    match x' with
    | ~q((@OrderTop.toTop _ $instLE $instTop).top) =>
      addFact type (.isTop idx)
    | ~q((@OrderBot.toBot _ $instLE $instBot).bot) =>
      addFact type (.isBot idx)
    | ~q((@SemilatticeSup.toMax _ $inst).max $a $b) =>
      let aIdx ← addAtom type a
      let bIdx ← addAtom type b
      addFact type (.isSup aIdx bIdx idx)
    | ~q((@SemilatticeInf.toMin _ $inst).min $a $b) =>
      let aIdx ← addAtom type a
      let bIdx ← addAtom type b
      addFact type (.isInf aIdx bIdx idx)
    | _ => pure ()
    return idx

-- TODO: The linter claims `u` is unused, but it used on the next line.
set_option linter.unusedVariables false in
/-- Implementation for `collectFacts` in `CollectFactsM` monad. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variantd5d6d470170a70ca9aa6850c68d7a6ff11701c9f3b1bce2612c955dd3d9c3d70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variantd5d6d470170a70ca9aa6850c68d7a6ff11701c9f3b1bce2612c955dd3d9c3d70.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb093be81f328f40c7674823b619f19c00c5e23c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
