# borelToRefl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bba5d10dddc09c209f2168fb8ac1f1488c5c4cabe5a81a465fc83e53407f2f5",
  "kind": "def",
  "lexical_name": "borelToRefl",
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
  "slug": "boreltorefl--ee91e6f1717418c3cb8ee017",
  "source": {
    "blob": "ec87012329030fbd534787292e44cc35682b104e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee91e6f1717418c3cb8ee0176e36dbd41f5803f654ed4f494ac5245e71265ce6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bba5d10dddc09c209f2168fb8ac1f1488c5c4cabe5a81a465fc83e53407f2f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def borelToRefl (e : Expr) (i : FVarId) : TacticM Unit := do
  let te ← Lean.Elab.Term.exprToSyntax e
  evalTactic <| ← `(tactic|
    have := @BorelSpace.measurable_eq $te _ _ _)
  try
    liftMetaTactic fun m => return [← subst m i]
  catch _ =>
    let et ← synthInstance (← mkAppOptM ``TopologicalSpace #[e])
    throwError m!"\
      `‹TopologicalSpace {e}› := {et}\n\
      depends on\n\
      {Expr.fvar i} : MeasurableSpace {e}`\n\
      so `borelize` isn't available"
  evalTactic <| ← `(tactic|
    refine_lift
      letI : MeasurableSpace $te := borel $te
      ?_)

/-- Given a type `$t`, if there is an assumption `[i : MeasurableSpace $t]`, then try to prove
`[BorelSpace $t]` and replace `i` with `borel $t`. Otherwise, add instances
`borel $t : MeasurableSpace $t` and `⟨rfl⟩ : BorelSpace $t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec87012329030fbd534787292e44cc35682b104e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
