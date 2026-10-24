# x

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:341df13195aaf710b9ec5f7cc5325a00870bb5a039866bbd29d874bdd41cd621",
  "kind": "def",
  "lexical_name": "x",
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
  "slug": "x--43ffac25bb2b1fda7ad993a9",
  "source": {
    "blob": "61ea7af35ee266b541d364fe26d9f44922452bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jsx/Variantd5e48eac32684fbaea8fa51c70aec2a2f4b5df0977787837b86103c129c97d08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43ffac25bb2b1fda7ad993a9530ca02fd056dd6e6762d4fd8daba3f3558a191c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jsx/Variantd5e48eac32684fbaea8fa51c70aec2a2f4b5df0977787837b86103c129c97d08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:341df13195aaf710b9ec5f7cc5325a00870bb5a039866bbd29d874bdd41cd621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def x := <b>You can use {...htmlLetters} in Lean {.text s!"{1 + 3}"}! <hr/> </b>
#html x

-- Use `MarkdownDisplay` to render Markdown
open ProofWidgets in
#html <MarkdownDisplay contents={"
  ## Hello, Markdown
  We have **bold text**, _italic text_, `example : True := by trivial`,
  and $3×19 = \\int\\limits_0^{57}1~dx$.
"} />

-- HTML trees can also be produced by metaprograms
open ProofWidgets Lean Server Elab in
#html (do
  let e ← Term.elabTerm (← ``(1 + 3)) (mkConst ``Nat)
  Term.synthesizeSyntheticMVarsNoPostponing
  let e ← instantiateMVars e
  return <InteractiveExpr expr={← WithRpcRef.mk (← ExprWithCtx.save e)} />
    : Term.TermElabM Html)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jsx/Variantd5e48eac32684fbaea8fa51c70aec2a2f4b5df0977787837b86103c129c97d08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jsx/Variantd5e48eac32684fbaea8fa51c70aec2a2f4b5df0977787837b86103c129c97d08.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61ea7af35ee266b541d364fe26d9f44922452bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
