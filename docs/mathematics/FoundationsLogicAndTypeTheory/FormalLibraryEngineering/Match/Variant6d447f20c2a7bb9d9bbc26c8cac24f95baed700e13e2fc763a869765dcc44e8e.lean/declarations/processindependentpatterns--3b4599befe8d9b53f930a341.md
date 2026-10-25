# processIndependentPatterns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82afca8798fa1754d1356da55a92d3a33587326d83620d69159d69c4bc000da3",
  "kind": "def",
  "lexical_name": "processIndependentPatterns",
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
  "slug": "processindependentpatterns--3b4599befe8d9b53f930a341",
  "source": {
    "blob": "b3f746082ba1cc8331c685092032854f255b087f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 935,
    "line": 868,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b4599befe8d9b53f930a341a744cb0c9a0df45535a0ecbefb6d3b61eb24050c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82afca8798fa1754d1356da55a92d3a33587326d83620d69159d69c4bc000da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 868–935.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def processIndependentPatterns (p : Problem) : MetaM Problem := withGoalOf p do
  let alts' ← p.alts.mapM fun alt => do
    -- We process only one pattern at a time, for code simplicity and better tracing
    -- of the main loop
    let mut donePrefix := 0
    for var in p.vars, pat in alt.patterns do
      match pat with
      | .inaccessible e =>
        if e == var then
          donePrefix := donePrefix + 1
        else
          break
      | _ => break
    match alt.patterns.drop donePrefix with
    | [] =>
      -- All done here
      return alt
    | pat :: remainingPats =>
      let v := p.vars[donePrefix]!
      match pat with
      | .inaccessible e =>
        trace[Meta.Match.match] "processing inaccessible pattern"
        let patterns := (p.vars.take (donePrefix + 1)).map .inaccessible ++ remainingPats
        let cnstrs := (v, e) :: alt.cnstrs
        return { alt with patterns, cnstrs }
      | .var fvarId =>
        trace[Meta.Match.match] "processing variable pattern"
        let patterns := (p.vars.take (donePrefix + 1)).map .inaccessible ++ remainingPats
        let alt' ← withExistingLocalDecls alt.fvarDecls do
          if (← isDefEqGuarded (← fvarId.getType) (← inferType v)) then
            return { alt with patterns }.replaceFVarId fvarId v
          else
            let cnstrs := (mkFVar fvarId, v) :: alt.cnstrs
            return { alt with patterns, cnstrs }
        return alt'
      | .as fvarId pat h =>
        let patterns := (p.vars.take donePrefix).map .inaccessible ++ [pat] ++ remainingPats
        /- We used to use eagerly check the types here (using what was called `checkAndReplaceFVarId`),
          but `x` and `fvarId` can have different types when dependent types are being used.
          Let's consider the repro for issue #471
          ```
          inductive vec : Nat → Type
          | nil : vec 0
          | cons : Int → vec n → vec n.succ

          def vec_len : vec n → Nat
          | vec.nil => 0
          | x@(vec.cons h t) => vec_len t + 1

          ```
          we reach the state
          ```
            [Meta.Match.match] remaining variables: [x✝:(vec n✝)]
            alternatives:
              [n:(Nat), x:(vec (Nat.succ n)), h:(Int), t:(vec n)] |- [x@(vec.cons n h t)] => h_1 n x h t
              [x✝:(vec n✝)] |- [x✝] => h_2 n✝ x✝
          ```
          The variables `x✝:(vec n✝)` and `x:(vec (Nat.succ n))` have different types, but we perform the substitution anyway,
          because we claim the "discrepancy" will be corrected after we process the pattern `(vec.cons n h t)`.
          The right-hand-side is temporarily type incorrect, but we claim this is fine because it will be type correct again after
          we the pattern `(vec.cons n h t)`. TODO: try to find a cleaner solution.
        -/
        let r ← mkEqRefl v
        return { alt with patterns }.replaceFVarId fvarId v |>.replaceFVarId h r
      | .ctor .. | .val .. | .arrayLit .. =>
        return alt
  return { p with alts := alts' }

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean#L868).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f746082ba1cc8331c685092032854f255b087f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
