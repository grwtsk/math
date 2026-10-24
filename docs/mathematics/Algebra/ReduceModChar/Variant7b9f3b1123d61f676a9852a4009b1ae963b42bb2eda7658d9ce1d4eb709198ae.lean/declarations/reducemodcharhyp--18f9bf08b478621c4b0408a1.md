# reduceModCharHyp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b99ac2b2c92e36a38dde023f20961c92142aa1585279013d489413e71d10a20b",
  "kind": "def",
  "lexical_name": "reduceModCharHyp",
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
  "slug": "reducemodcharhyp--18f9bf08b478621c4b0408a1",
  "source": {
    "blob": "d386b56ef496e6d134bae2380548d2e3b277d89c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 280,
    "path": "GRWTSK/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18f9bf08b478621c4b0408a18c1cf97c3df7c01e24bdc17d623d0292d6acee5d",
  "verification": {
    "reference": "docs/verification/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b99ac2b2c92e36a38dde023f20961c92142aa1585279013d489413e71d10a20b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def reduceModCharHyp (expensive := false) (fvarId : FVarId) : TacticM Unit :=
  liftMetaTactic1 fun goal ↦ do
    let hyp ← instantiateMVars (← fvarId.getDecl).type
    let prf ← derive (expensive := expensive) hyp
    return (← applySimpResultToLocalDecl goal fvarId prf false).map (·.snd)

open Parser.Tactic Elab.Tactic

/--
The tactic `reduce_mod_char` looks for numeric expressions in characteristic `p`
and reduces these to lie between `0` and `p`.

For example:
```
example : (5 : ZMod 4) = 1 := by reduce_mod_char
example : (X ^ 2 - 3 * X + 4 : (ZMod 4)[X]) = X ^ 2 + X := by reduce_mod_char
```

It also handles negation, turning it into multiplication by `p - 1`,
and similarly subtraction.

This tactic uses the type of the subexpression to figure out if it is indeed of positive
characteristic, for improved performance compared to trying to synthesise a `CharP` instance.
The variant `reduce_mod_char!` also tries to use `CharP R n` hypotheses in the context.
(Limitations of the typeclass system mean the tactic can't search for a `CharP R n` instance if
`n` is not yet known; use `have : CharP R n := inferInstance; reduce_mod_char!` as a workaround.)
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d386b56ef496e6d134bae2380548d2e3b277d89c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
