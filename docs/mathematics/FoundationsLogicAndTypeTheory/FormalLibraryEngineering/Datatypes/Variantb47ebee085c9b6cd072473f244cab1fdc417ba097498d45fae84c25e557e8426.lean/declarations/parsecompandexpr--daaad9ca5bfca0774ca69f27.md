# parseCompAndExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4e91dca09c3047702ddec527315c416f55b835033eeb172f987f8c09820987b",
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
  "slug": "parsecompandexpr--daaad9ca5bfca0774ca69f27",
  "source": {
    "blob": "e5670b5a4b79e66cb3d429c37b6b9bad5219c8ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 386,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daaad9ca5bfca0774ca69f279c9433261d1f32cdb80824901859904dca321fb1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4e91dca09c3047702ddec527315c416f55b835033eeb172f987f8c09820987b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–401.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5670b5a4b79e66cb3d429c37b6b9bad5219c8ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
