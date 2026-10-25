# collectConstants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91a72ad749f61f8f89d62711b9fd34fcf4c189b04cee79ab0abf7949dda6979c",
  "kind": "def",
  "lexical_name": "collectConstants",
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
  "slug": "collectconstants--4b6e2ea4daff1b441f573302",
  "source": {
    "blob": "35cc34a5c46fe85c18fc2fea04bd9ca1753fed55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 681,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b6e2ea4daff1b441f573302024e8a60de745aced41ff21efd6c1e580d543bc7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91a72ad749f61f8f89d62711b9fd34fcf4c189b04cee79ab0abf7949dda6979c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def collectConstants (e : Lean.Expr) : MetaM (List ℚ) := do
  -- Don't use whnf - it expands Real.exp to Complex.exp which we don't want
  -- First try to extract as rational directly
  if let some q ← extractRatFromReal e then
    return [q]

  let fn := e.getAppFn
  let args := e.getAppArgs

  -- For function applications, collect from arguments
  if let .const name _ := fn then
    let nameStr := name.toString
    -- Unary functions: collect from the argument
    -- Check by name suffix since the full name might include module prefix
    if nameStr.endsWith "exp" || nameStr.endsWith "sin" || nameStr.endsWith "cos" ||
       nameStr.endsWith "sqrt" || nameStr.endsWith "log" || nameStr.endsWith "sinh" ||
       nameStr.endsWith "cosh" || nameStr.endsWith "tanh" || nameStr.endsWith "arctan" then
      if args.size > 0 then
        return ← collectConstants args.back!
    -- Negation
    if name == ``Neg.neg && args.size >= 3 then
      return ← collectConstants args[2]!

  -- Binary operations
  if fn.isConstOf ``HAdd.hAdd || fn.isConstOf ``HSub.hSub ||
     fn.isConstOf ``HMul.hMul || fn.isConstOf ``HDiv.hDiv then
    if args.size >= 6 then
      let lhsConsts ← collectConstants args[4]!
      let rhsConsts ← collectConstants args[5]!
      return lhsConsts ++ rhsConsts

  return []

/-! ## Root Finding Goal Parsing -/

/-- Try to parse a goal as a root finding goal -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35cc34a5c46fe85c18fc2fea04bd9ca1753fed55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
