# elabChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:611a2f117f68b1039dc8b9eb7a11f188bccaeb6c3dee20e769a465060735874a",
  "kind": "def",
  "lexical_name": "elabChange",
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
  "slug": "elabchange--e7527fe4c02f2b3176efcbb7",
  "source": {
    "blob": "07722437f8c3fa7124969a031c5b00dda2d14c9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Change/Variant438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7527fe4c02f2b3176efcbb7fe982e83879dda7f397f226432e7935fb2c27c87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Change/Variant438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:611a2f117f68b1039dc8b9eb7a11f188bccaeb6c3dee20e769a465060735874a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def elabChange (e : Expr) (p : Term) (mkDefeqError : Expr → Expr → MetaM MessageData := elabChangeDefaultError) :
    TacticM Expr := do
  let p ← runTermElab do
    let p ← Term.elabTermEnsuringType p (← inferType e)
    unless ← isDefEq p e do
      /-
      Sometimes isDefEq can fail due to postponed elaboration problems.
      We synthesize pending synthetic mvars while allowing typeclass instances to be postponed,
      which might enable solving for them with an additional `isDefEq`.
      -/
      Term.synthesizeSyntheticMVars (postpone := .partial)
      discard <| isDefEq p e
    pure p
  withAssignableSyntheticOpaque do
    unless ← isDefEq p e do
      throwError MessageData.ofLazyM (es := #[p, e]) do
        let (p, tgt) ← addPPExplicitToExposeDiff p e
        mkDefeqError p tgt
    instantiateMVars p

/-- `change` can be used to replace the main goal or its hypotheses with
different, yet definitionally equal, goal or hypotheses.

For example, if `n : Nat` and the current goal is `⊢ n + 2 = 2`, then
```lean
change _ + 1 = _
```
changes the goal to `⊢ n + 1 + 1 = 2`.

The tactic also applies to hypotheses. If `h : n + 2 = 2` and `h' : n + 3 = 4`
are hypotheses, then
```lean
change _ + 1 = _ at h h'
```
changes their types to be `h : n + 1 + 1 = 2` and `h' : n + 2 + 1 = 4`.

Change is like `refine` in that every placeholder needs to be solved for by unification,
but using named placeholders or `?_` results in `change` to creating new goals.

The tactic `show e` is interchangeable with `change e`, where the pattern `e` is applied to
the main goal. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Change/Variant438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Change/Variant438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07722437f8c3fa7124969a031c5b00dda2d14c9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
