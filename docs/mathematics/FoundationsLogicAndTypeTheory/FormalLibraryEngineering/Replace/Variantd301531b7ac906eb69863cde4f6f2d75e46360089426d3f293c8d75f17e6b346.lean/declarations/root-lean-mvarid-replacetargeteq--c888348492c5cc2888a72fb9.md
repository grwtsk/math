# _root_.Lean.MVarId.replaceTargetEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:945758c46503291b0d80aaa37b8e0b0add7d46e9dcd47d3020ca5a50389e1972",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.replaceTargetEq",
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
  "slug": "root-lean-mvarid-replacetargeteq--c888348492c5cc2888a72fb9",
  "source": {
    "blob": "2a118efceedfd55d88e1ae50821bc2d0ba8ff1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c888348492c5cc2888a72fb9eb97c1019b9df60f57f68535f0f0b65989711a40",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:945758c46503291b0d80aaa37b8e0b0add7d46e9dcd47d3020ca5a50389e1972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def _root_.Lean.MVarId.replaceTargetEq (mvarId : MVarId) (targetNew : Expr) (eqProof : Expr) : MetaM MVarId :=
  mvarId.withContext do
    mvarId.checkNotAssigned `replaceTarget
    let tag      ← mvarId.getTag
    let mvarNew  ← mkFreshExprSyntheticOpaqueMVar targetNew tag
    let target   ← mvarId.getType
    let u        ← getLevel target
    let eq       ← mkEq target targetNew
    let newProof := mkExpectedPropHint eqProof eq
    let val  := mkAppN (Lean.mkConst `Eq.mpr [u]) #[target, targetNew, newProof, mvarNew]
    mvarId.assign val
    return mvarNew.mvarId!

/--
Converts the given goal `Ctx |- target` into `Ctx |- targetNew`. It assumes the goals are definitionally equal.
We use the proof term
```
@id target mvarNew
```
to create a checkpoint.

If `targetNew` is equal to `target`, then returns `mvarId` unchanged.
Uses `Expr.equal` for the comparison so that it is possible to update binder names, etc., which are user-visible.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a118efceedfd55d88e1ae50821bc2d0ba8ff1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
