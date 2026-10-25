# rcongrCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8299aedc7064fb75c18b5b18a4a9fbff0e74c03f7e2764afdb7eeaee36edb4cd",
  "kind": "def",
  "lexical_name": "rcongrCore",
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
  "slug": "rcongrcore--a8115ec2c1fcd7e0dbcae46a",
  "source": {
    "blob": "12c00219e206e649a9e42f10c3ce6859ea7226e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8115ec2c1fcd7e0dbcae46aae8555d458639c6803faf12d92a7472d770938e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8299aedc7064fb75c18b5b18a4a9fbff0e74c03f7e2764afdb7eeaee36edb4cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def rcongrCore (g : MVarId) (config : Congr.Config) (pats : List (TSyntax `rcasesPat))
    (acc : Array MVarId) : TermElabM (Array MVarId) := do
  let mut acc := acc
  for (g, qs) in (← Ext.extCore g pats (failIfUnchanged := false)).2 do
    let s ← saveState
    let gs ← g.congrN 1000000 (closePre := config.closePre) (closePost := config.closePost)
    if ← not <$> g.isAssigned <||> gs.anyM fun g' => return (← g'.getType).eqv (← g.getType) then
      s.restore
      acc := acc.push g
    else
      for g in gs do
        acc ← rcongrCore g config qs acc
  pure acc

/--
Repeatedly apply `congr` and `ext`, using the given patterns as arguments for `ext`.

There are two ways this tactic stops:
* `congr` fails (makes no progress), after having already applied `ext`.
* `congr` canceled out the last usage of `ext`. In this case, the state is reverted to before
  the `congr` was applied.

For example, when the goal is
```
⊢ (fun x => f x + 3) '' s = (fun x => g x + 3) '' s
```
then `rcongr x` produces the goal
```
x : α ⊢ f x = g x
```
This gives the same result as `congr; ext x; congr`.

In contrast, `congr` would produce
```
⊢ (fun x => f x + 3) = (fun x => g x + 3)
```
and `congr with x` (or `congr; ext x`) would produce
```
x : α ⊢ f x + 3 = g x + 3
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12c00219e206e649a9e42f10c3ce6859ea7226e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
