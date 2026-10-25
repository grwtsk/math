# reify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0e4c49c1f34564fb6e111b24f243a1137ccf78df4d373600e57df97450e315e",
  "kind": "def",
  "lexical_name": "reify",
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
  "slug": "reify--09379a6a354c2f7caa12ae9e",
  "source": {
    "blob": "337d2bd2599ed392d14954020c2faeca06f17926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2101,
    "line": 2067,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09379a6a354c2f7caa12ae9e6ad606a55f4f9dd1f661d7650ef4c3068143ee54",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0e4c49c1f34564fb6e111b24f243a1137ccf78df4d373600e57df97450e315e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2067–2101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def reify (e : Lean.Expr) : StateRefT (Array Lean.Expr) MetaM Node := do
  let args := e.getAppArgs
  let nm := e.getAppFn.constName?
  match nm with
  | some ``PureTypeSystem.Labelled.LogicSetup.bottom
  | some ``PureTypeSystem.Labelled.LogicCode.bottom => return .bot
  | some ``PureTypeSystem.Labelled.LogicSetup.top
  | some ``PureTypeSystem.Labelled.LogicCode.top => return .imp .bot .bot
  | some ``PureTypeSystem.Labelled.LogicSetup.imp
  | some ``PureTypeSystem.Labelled.LogicCode.imp =>
    return .imp (← reify args[args.size-2]!) (← reify args[args.size-1]!)
  | some ``PureTypeSystem.Labelled.LogicSetup.neg
  | some ``PureTypeSystem.Labelled.LogicCode.neg =>
    return (← reify args[args.size-1]!).neg
  | some ``PureTypeSystem.Labelled.LogicSetup.conj
  | some ``PureTypeSystem.Labelled.LogicCode.conj =>
    return (← reify args[args.size-2]!).conj (← reify args[args.size-1]!)
  | some ``PureTypeSystem.Labelled.LogicSetup.disj
  | some ``PureTypeSystem.Labelled.LogicCode.disj =>
    return (← reify args[args.size-2]!).disj (← reify args[args.size-1]!)
  | some ``PureTypeSystem.Labelled.LogicSetup.iff
  | some ``PureTypeSystem.Labelled.LogicCode.iff =>
    return (← reify args[args.size-2]!).iff (← reify args[args.size-1]!)
  | some ``PureTypeSystem.Labelled.LogicCode.cond =>
    let g ← reify args[args.size-3]!
    let a ← reify args[args.size-2]!
    let b ← reify args[args.size-1]!
    return (g.conj a).disj (g.neg.conj b)
  | _ =>
    let atoms ← get
    for i in [:atoms.size] do
      if ← isDefEq e atoms[i]! then return .atom i
    modify (·.push e)
    return .atom atoms.size

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean#L2067).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `337d2bd2599ed392d14954020c2faeca06f17926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
