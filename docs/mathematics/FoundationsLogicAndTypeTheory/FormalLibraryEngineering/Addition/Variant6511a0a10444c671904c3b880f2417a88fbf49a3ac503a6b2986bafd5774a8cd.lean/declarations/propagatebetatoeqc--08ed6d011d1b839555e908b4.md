# propagateBetaToEqc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f318d6cdba5429c926d86f9069e1951a01238cd48db1f2d66f5a20e18acfc438",
  "kind": "def",
  "lexical_name": "propagateBetaToEqc",
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
  "slug": "propagatebetatoeqc--08ed6d011d1b839555e908b4",
  "source": {
    "blob": "54d943aebbad215d727cdaf18f258cb43887aea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1103,
    "line": 1076,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08ed6d011d1b839555e908b46bcd77822d090682be44a45128f91ed61eaef820",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f318d6cdba5429c926d86f9069e1951a01238cd48db1f2d66f5a20e18acfc438`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1076–1103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateBetaToEqc (fnRoots lambdas : Array Expr) (newLambdaApps : Array Expr := #[]) :
    CCM (Array Expr) := do
  if lambdas.isEmpty then return newLambdaApps
  let mut newLambdaApps := newLambdaApps
  let lambdaRoot ← getRoot lambdas.back!
  guard (← lambdas.allM fun l => pure l.isLambda <&&> (· == lambdaRoot) <$> getRoot l)
  for fnRoot in fnRoots do
    if let some ps := (← get).parents[fnRoot]? then
      for { expr := p,.. } in ps do
        let mut revArgs : Array Expr := #[]
        let mut it₂ := p
        while it₂.isApp do
          let fn := it₂.appFn!
          revArgs := revArgs.push it₂.appArg!
          if (← getRoot fn) == lambdaRoot then
            -- found it
            newLambdaApps ← propagateBeta fn revArgs lambdas newLambdaApps
            break
          it₂ := it₂.appFn!
  return newLambdaApps

/--
Given `c` a constructor application, if `p` is a projection application (not `.proj _ _ _`, but
`.app (.const projName _) _`) such that major premise is
equal to `c`, then propagate new equality.

Example: if `p` is of the form `b.fst`, `c` is of the form `(x, y)`, and `b = c`, we add the
equality `(x, y).fst = x` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean#L1076).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54d943aebbad215d727cdaf18f258cb43887aea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
