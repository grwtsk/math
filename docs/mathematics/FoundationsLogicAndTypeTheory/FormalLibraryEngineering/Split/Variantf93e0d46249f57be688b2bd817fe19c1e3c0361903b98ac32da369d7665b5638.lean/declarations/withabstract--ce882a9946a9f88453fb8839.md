# withAbstract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecd55fdd2caa660f6cde4784984d83b710f26c55b78c0f47b4390ac5a259b7bf",
  "kind": "def",
  "lexical_name": "withAbstract",
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
  "slug": "withabstract--ce882a9946a9f88453fb8839",
  "source": {
    "blob": "e448379fef222a6051dc15eca612b4320ecd15c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce882a9946a9f88453fb8839af66afc4989e9d982cd91bae737691e35d304604",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecd55fdd2caa660f6cde4784984d83b710f26c55b78c0f47b4390ac5a259b7bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withAbstract {n} {α} [MonadLiftT MetaM n] [MonadControlT MetaM n] [Monad n] [Inhabited α]
    (info : SplitInfo) (resTy : Expr)
    (k : (abstractInfo : SplitInfo) → (splitFVars : Array Expr) → n α) : n α :=
  match info with
  | .ite _ =>
    withLocalDeclD `c (mkSort 0) fun c =>
    withLocalDeclD `dec (mkApp (mkConst ``Decidable) c) fun dec =>
    withLocalDeclD `t resTy fun t =>
    withLocalDeclD `e resTy fun e => do
    let u ← liftMetaM <| getLevel resTy
    k (.ite <| mkApp5 (mkConst ``_root_.ite [u]) resTy c dec t e) #[c, dec, t, e]
  | .dite _ =>
    withLocalDeclD `c (mkSort 0) fun c =>
    withLocalDeclD `dec (mkApp (mkConst ``Decidable) c) fun dec => do
    let tTy ← liftMetaM <| mkArrow c resTy
    let eTy ← liftMetaM <| mkArrow (mkNot c) resTy
    withLocalDeclD `t tTy fun t =>
    withLocalDeclD `e eTy fun e => do
    let u ← liftMetaM <| getLevel resTy
    k (.dite <| mkApp5 (mkConst ``_root_.dite [u]) resTy c dec t e) #[c, dec, t, e]
  | .matcher matcherApp => do
    -- Abstract the discriminants as a dependent telescope: a later discriminant's type may mention an earlier one.
    let discrDecls := matcherApp.discrs.mapIdx fun i discr =>
      ((`discr).appendIndexAfter (i+1), fun (prior : Array Expr) => liftMetaM do
        let mut ty ← inferType discr
        for j in *...i do
          if matcherApp.discrs[j]!.isFVar then
            ty := ty.replaceFVar matcherApp.discrs[j]! prior[j]!
        return ty)
    withLocalDeclsD discrDecls fun discrs => do
    -- Non-dependent motive: fun _ ... _ => mα
    let motive ← liftMetaM <| lambdaTelescope matcherApp.motive fun motiveArgs _ =>
      mkLambdaFVars motiveArgs resTy
    -- The matcher's universe levels include a `uElimPos` slot for the elimination target level.
    -- Our abstract motive `fun _ ... _ => mα` may target a different level than the original
    -- dependent motive, so we update `matcherLevels[uElimPos]` to `getLevel mα`.
    let matcherLevels ← match matcherApp.uElimPos? with
      | none => pure matcherApp.matcherLevels
      | some pos => do
        let uElim ← liftMetaM <| getLevel resTy
        pure <| matcherApp.matcherLevels.set! pos uElim
    -- Build partial application to infer alt types
    let matcherPartial := mkAppN (mkConst matcherApp.matcherName matcherLevels.toList) matcherApp.params
    let matcherPartial := mkApp matcherPartial motive
    let matcherPartial := mkAppN matcherPartial discrs
    let origAltTypes ← liftMetaM <| inferArgumentTypesN matcherApp.alts.size matcherPartial
    let altNamesTypes := origAltTypes.mapIdx fun i ty => ((`alt).appendIndexAfter (i+1), ty)
    withLocalDeclsDND altNamesTypes fun alts => do
    -- Eta-expand fvar alts so `splitWith`/`matcherApp.transform` can `instantiateLambda` them.
    let abstractMatcherApp : MatcherApp := {
      matcherApp with
      matcherLevels := matcherLevels
      discrs        := discrs
      motive        := motive
      alts          := (← liftMetaM <| alts.mapM etaExpand)
      remaining     := #[]
    }
    k (.matcher abstractMatcherApp) (discrs ++ alts)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e448379fef222a6051dc15eca612b4320ecd15c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
