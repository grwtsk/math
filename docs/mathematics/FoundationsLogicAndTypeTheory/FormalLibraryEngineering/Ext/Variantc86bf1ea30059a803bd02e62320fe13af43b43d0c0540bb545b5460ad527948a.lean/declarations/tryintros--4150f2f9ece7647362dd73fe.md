# tryIntros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af14d1ddb8e3201b04cfb6beda2cfaa608e2eb264d21b5658387eb439e358a68",
  "kind": "def",
  "lexical_name": "tryIntros",
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
  "slug": "tryintros--4150f2f9ece7647362dd73fe",
  "source": {
    "blob": "9696f8a49876b9f79f9b348db541de0167786ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4150f2f9ece7647362dd73fec03b6a0f2c0a1d6ebc94b8ab114e20878fcc0f16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af14d1ddb8e3201b04cfb6beda2cfaa608e2eb264d21b5658387eb439e358a68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tryIntros [Monad m] [MonadLiftT TermElabM m] (g : MVarId) (pats : List (TSyntax `rcasesPat))
    (k : MVarId → List (TSyntax `rcasesPat) → m Nat) : m Nat := do
  match pats with
  | [] => k (← (g.intros : TermElabM _)).2 []
  | p::ps =>
    if (← (g.withContext g.getType' : TermElabM _)).isForall then
      let mut n := 0
      for g in ← RCases.rintro #[p] none g do
        n := n.max (← tryIntros g ps k)
      pure (n + 1)
    else k g pats

/--
Applies a single extensionality theorem, using `pats` to introduce variables in the result.
Runs continuation `k` on each subgoal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9696f8a49876b9f79f9b348db541de0167786ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
