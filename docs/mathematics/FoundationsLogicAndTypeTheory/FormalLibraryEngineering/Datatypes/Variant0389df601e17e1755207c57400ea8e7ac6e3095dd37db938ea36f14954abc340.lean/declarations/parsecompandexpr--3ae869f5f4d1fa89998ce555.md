# parseCompAndExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efa6f323d71bbffe04c19ddbf4844f40eeb50f9cb01df28084a880ea519b2878",
  "kind": "def",
  "lexical_name": "parseCompAndExpr",
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
  "slug": "parsecompandexpr--3ae869f5f4d1fa89998ce555",
  "source": {
    "blob": "9beff35eebc0cff23c4eb0943a5c48aac3d6af74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 378,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ae869f5f4d1fa89998ce555d3ba0d4354bc84bd9874dcc852cb5c5a539584aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efa6f323d71bbffe04c19ddbf4844f40eeb50f9cb01df28084a880ea519b2878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseCompAndExpr (e : Expr) : MetaM (Ineq × Expr) := do
  let e ← instantiateMVars e
  match e.getAppFnArgs with
  | (``LT.lt, #[_, _, e, z]) => if z.zero? then return (Ineq.lt, e) else throwNotZero z
  | (``LE.le, #[_, _, e, z]) => if z.zero? then return (Ineq.le, e) else throwNotZero z
  | (``Eq, #[_, e, z]) => if z.zero? then return (Ineq.eq, e) else throwNotZero z
  | _ => throwError "invalid comparison: {e}"
  where /-- helper function for error message -/
  throwNotZero (z : Expr) := throwError "invalid comparison, rhs not zero: {z}"

/--
`mkSingleCompZeroOf c h` assumes that `h` is a proof of `t R 0`.
It produces a pair `(R', h')`, where `h'` is a proof of `c*t R' 0`.
Typically `R` and `R'` will be the same, except when `c = 0`, in which case `R'` is `=`.
If `c = 1`, `h'` is the same as `h` -- specifically, it does *not* change the type to `1*t R 0`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9beff35eebc0cff23c4eb0943a5c48aac3d6af74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
