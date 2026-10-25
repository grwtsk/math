# mkLambda'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33e8e2d1c1f8391be428fa70b97e1cd065106e29e5862ae98e66177e6e3e0fb8",
  "kind": "def",
  "lexical_name": "mkLambda'",
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
  "slug": "mklambda--c5bd23b38d5faba4ffc15b46",
  "source": {
    "blob": "3ad97d82016c98fecf071011eac4662b21b2dbf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1311,
    "line": 1281,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5bd23b38d5faba4ffc15b46d9d660bf38efe94fa972999a2b8bd0e5cfd66c78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33e8e2d1c1f8391be428fa70b97e1cd065106e29e5862ae98e66177e6e3e0fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1281–1311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkLambda' (x : Name) (bi : BinderInfo) (t : Expr) (b : Expr) (etaReduce : Bool) : Expr :=
  if etaReduce then
    match b with
    | .app f (.bvar 0) =>
      if !f.hasLooseBVar 0 then
        f.lowerLooseBVars 1 1
      else
        mkLambda x bi t b
    | _ => mkLambda x bi t b
  else
    mkLambda x bi t b

/--
Similar to `LocalContext.mkBinding`, but handles metavariables correctly.
This function trusts that `xs` has all forward dependencies that appear in `e` and that the variables are in order.
It will panic when any of the `xs` is neither a free variable nor a metavariable.

- If `usedOnly := true` then `forall` and `lambda` expressions are created only for used variables.
- If `usedLetOnly := true` then `let` expressions are created only for used (let-) variables.
- If `generalizeNondepLet := true` then nondependent let variables become `forall` or `lambda` expressions
  according to the value of `usedOnly`.
  Generally, `generalizeNondepLet` should be `true`
  *unless* all nondep entries in `xs` have known provenance,
  e.g. when leaving a telescope combinator like `Meta.lambdaLetTelescope`.
  See also `LocalDecl.ldecl`.
  - This needs to be `true` when making terms that should remain type correct with respect to the same `lctx`;
    for example, if `e' ← mkBinding true lctx xs e (generalizeNondepLet := true)`
    and `xs' ← xs.filterM (FVarId.isLetVar · false)`,
    then one has that `mkAppN e' xs'` is definitionally equal to `e` with respect to `lctx`.
  - **Note:** `generalizeNondepLet := true` is the common case, so `mkBinding` API uses it as the default.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean#L1281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad97d82016c98fecf071011eac4662b21b2dbf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
