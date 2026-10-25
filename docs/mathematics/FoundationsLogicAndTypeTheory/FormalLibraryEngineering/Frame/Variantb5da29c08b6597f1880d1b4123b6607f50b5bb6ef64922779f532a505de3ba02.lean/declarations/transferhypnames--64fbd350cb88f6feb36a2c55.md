# transferHypNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b7fe7d18d2f3fc1ba555b0596401732ec4ef1fdd0f76088ff472c079fa60dc8",
  "kind": "def",
  "lexical_name": "transferHypNames",
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
  "slug": "transferhypnames--64fbd350cb88f6feb36a2c55",
  "source": {
    "blob": "45f2b5437a6bcb1b56431f4e883122d9263a8731",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variantb5da29c08b6597f1880d1b4123b6607f50b5bb6ef64922779f532a505de3ba02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64fbd350cb88f6feb36a2c551c7a3430fbcd07f9e4749129e3947a169990c85d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variantb5da29c08b6597f1880d1b4123b6607f50b5bb6ef64922779f532a505de3ba02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b7fe7d18d2f3fc1ba555b0596401732ec4ef1fdd0f76088ff472c079fa60dc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def transferHypNames (P P' : Expr) : MetaM Expr := (·.snd) <$> label (collectHyps P) P'
  where
    collectHyps (P : Expr) (acc : List Hyp := []) : List Hyp :=
      if let some hyp := parseHyp? P then
        hyp :: acc
      else if let some (_, _, L, R) := parseAnd? P then
        collectHyps L (collectHyps R acc)
      else
        acc

    label (Ps : List Hyp) (P' : Expr) : MetaM (List Hyp × Expr) := do
      let P' ← instantiateMVarsIfMVarApp P'
      if let some _ := parseEmptyHyp? P' then
        return (Ps, P')
      if let some (u, σs, L, R) := parseAnd? P' then
        let (Ps, L') ← label Ps L
        let (Ps, R') ← label Ps R
        return (Ps, SPred.mkAnd! u σs L' R')
      else
        let mut Ps' := Ps
        repeat
          -- If we cannot find the hyp, it might be in a nested conjunction.
          -- Just pick a default name for it.
          let name ← mkFreshUserName `h
          let uniq ← mkFreshId
          let P :: Ps'' := Ps' | return (Ps, { name, uniq, p := P' : Hyp }.toExpr)
          Ps' := Ps''
          if ← isDefEq P.p P' then
            return (Ps, { P with p := P' }.toExpr)
        unreachable!

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variantb5da29c08b6597f1880d1b4123b6607f50b5bb6ef64922779f532a505de3ba02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variantb5da29c08b6597f1880d1b4123b6607f50b5bb6ef64922779f532a505de3ba02.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45f2b5437a6bcb1b56431f4e883122d9263a8731` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
