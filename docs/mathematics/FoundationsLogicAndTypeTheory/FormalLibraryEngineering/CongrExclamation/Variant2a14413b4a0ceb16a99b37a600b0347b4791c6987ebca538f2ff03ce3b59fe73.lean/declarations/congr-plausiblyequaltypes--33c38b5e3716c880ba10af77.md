# Congr!.plausiblyEqualTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87a1892f7015fca31f71eed06a6afad25eba1c2afc5e25970895177b8af4c9be",
  "kind": "def",
  "lexical_name": "Congr!.plausiblyEqualTypes",
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
  "slug": "congr-plausiblyequaltypes--33c38b5e3716c880ba10af77",
  "source": {
    "blob": "bec234e045917543be9f273d1029e9a940519432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 253,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variant2a14413b4a0ceb16a99b37a600b0347b4791c6987ebca538f2ff03ce3b59fe73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33c38b5e3716c880ba10af775bbdd4370e08da8f398f3a935862d63121928b76",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variant2a14413b4a0ceb16a99b37a600b0347b4791c6987ebca538f2ff03ce3b59fe73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87a1892f7015fca31f71eed06a6afad25eba1c2afc5e25970895177b8af4c9be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Congr!.plausiblyEqualTypes (ty1 ty2 : Expr) (maxDepth : Nat := 5) : MetaM Bool :=
  match maxDepth with
  | 0 => return false
  | maxDepth + 1 => do
    -- Props are plausibly equal
    if (← isProp ty1) && (← isProp ty2) then
      return true
    -- Types from different type universes are not plausibly equal.
    -- This is redundant, but it saves carrying out the remaining checks.
    unless ← withNewMCtxDepth <| isDefEq (← inferType ty1) (← inferType ty2) do
      return false
    -- Now put the types into whnf, check they have the same head, and then recurse on arguments
    let ty1 ← whnfD ty1
    let ty2 ← whnfD ty2
    unless ← withNewMCtxDepth <| isDefEq ty1.getAppFn ty2.getAppFn do
      return false
    for arg1 in ty1.getAppArgs, arg2 in ty2.getAppArgs do
      if (← isType arg1) && (← isType arg2) then
        unless ← plausiblyEqualTypes arg1 arg2 maxDepth do
          return false
    return true

/--
This is like `Lean.MVarId.hcongr?` but (1) looks at both sides when generating the congruence lemma
and (2) inserts additional hypotheses from equalities from previous arguments.

It uses `Lean.Meta.mkRichHCongr` to generate the congruence lemmas.

If the goal is an `Eq`, it uses `eq_of_heq` first.

As a backup strategy, it uses the LHS/RHS method like in `Lean.MVarId.congrSimp?`
(where `Congr!.Config.preferLHS` determines which side to try first). This uses a particular side
of the target, generates the congruence lemma, then tries applying it. This can make progress
with higher transparency settings. To help the unifier, in this mode it assumes both sides have the
exact same function.
-/
partial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variant2a14413b4a0ceb16a99b37a600b0347b4791c6987ebca538f2ff03ce3b59fe73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variant2a14413b4a0ceb16a99b37a600b0347b4791c6987ebca538f2ff03ce3b59fe73.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec234e045917543be9f273d1029e9a940519432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
