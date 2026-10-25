# ringNFLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:934daa7d8fa90cfcb9a2fe573a6d29c923d40daee902511a6c35189d002bf71e",
  "kind": "def",
  "lexical_name": "ringNFLocalDecl",
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
  "slug": "ringnflocaldecl--8a00203232f0b160991fe137",
  "source": {
    "blob": "d74594af863d7ce67f1764f55ea4ce2c3e8c07f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a00203232f0b160991fe1373b7c8748109b84f226e3c93180adad7177ef46f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:934daa7d8fa90cfcb9a2fe573a6d29c923d40daee902511a6c35189d002bf71e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ringNFLocalDecl (s : IO.Ref AtomM.State) (cfg : Config) (fvarId : FVarId) :
    TacticM Unit := withMainContext do
  let tgt ← instantiateMVars (← fvarId.getType)
  let goal ← getMainGoal
  let myres ← M.run s cfg <| rewrite tgt
  match ← applySimpResultToLocalDecl goal fvarId myres false with
  | none => replaceMainGoal []
  | some (_, newGoal) =>
    if cfg.failIfUnchanged && goal == newGoal then
      throwError "ring_nf made no progress"
    replaceMainGoal [newGoal]

/--
Simplification tactic for expressions in the language of commutative (semi)rings,
which rewrites all ring expressions into a normal form.
* `ring_nf!` will use a more aggressive reducibility setting to identify atoms.
* `ring_nf (config := cfg)` allows for additional configuration:
  * `red`: the reducibility setting (overridden by `!`)
  * `zetaDelta`: if true, local let variables can be unfolded (overridden by `!`)
  * `recursive`: if true, `ring_nf` will also recurse into atoms
* `ring_nf` works as both a tactic and a conv tactic.
  In tactic mode, `ring_nf at h` can be used to rewrite in a hypothesis.

This can be used non-terminally to normalize ring expressions in the goal such as
`⊢ P (x + x + x)` ~> `⊢ P (x * 3)`, as well as being able to prove some equations that
`ring` cannot because they involve ring reasoning inside a subterm, such as
`sin (x + y) + sin (y + x) = 2 * sin (x + y)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d74594af863d7ce67f1764f55ea4ce2c3e8c07f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
