# getFinVal?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd03f069df6a327e031f39ea8642cfafa15d054a3ccb5da12b6bd625f739f732",
  "kind": "def",
  "lexical_name": "getFinVal?",
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
  "slug": "getfinval--8d29a7844ec083b5cc9130db",
  "source": {
    "blob": "4189531e874cd95640cfe0bd6d979f088f606907",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d29a7844ec083b5cc9130dba586ce05c54514aedf4cacf4386e055703cfe986",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd03f069df6a327e031f39ea8642cfafa15d054a3ccb5da12b6bd625f739f732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getFinVal? (e : Expr) : MetaM (Option Nat) := do
  -- First try whnfR and check for Fin.mk directly (handles ⟨n, proof⟩)
  let e' ← whnfR e
  if e'.getAppFn.constName? == some ``Fin.mk then
    let args := e'.getAppArgs
    if args.size == 3 then
      let val ← whnfR args[1]!
      if let some n := val.nat? then
        return some n
  -- For numeric literals like (2 : Fin 3), extract via Fin.val and reduce
  try
    let finVal ← mkAppM ``Fin.val #[e]
    let finValReduced ← reduce finVal
    return finValReduced.nat?
  catch _ =>
    return none

/-- Recursively traverse a vecCons chain to extract the element at index `idx`.
    Returns `some elem` if successful, `none` otherwise.

    Handles:
    - Explicit vecCons chains: `vecCons a (vecCons b ...) idx`
    - Lambda tails from matrix column extraction: `fun i => vecCons ... i`
    - Nested vecCons after lambda reduction: when applying a lambda returns
      another `vecCons` application that needs further element extraction

    Uses a `fuel` parameter for termination (decreases on each recursive call).

    ## Implementation notes

    **inferType vs bindingDomain!**: For lambda tails, we use `inferType` to get
    the domain type rather than `bindingDomain!`, because lambdas without explicit
    binder annotations (e.g., `fun i => ...` vs `fun (i : Fin 2) => ...`) may not
    have the Fin type directly accessible in the binder.

    **instantiateMVars + reduce before nat?**: When extracting the dimension `n` from
    `Fin n`, we must first `instantiateMVars` on the type (to substitute assigned
    metavariables), then `reduce nExpr` before calling `nat?`. Without explicit type
    annotations, `nExpr` may be `Nat.succ ?m` (a metavariable wrapped in Nat.succ)
    rather than a raw literal like `2`. The `nat?` function only matches raw nat
    literals, so instantiating then reducing converts `Nat.succ ?m` → `2`.

    **Recursive extraction**: After reducing a lambda application, the result may
    still be a `vecCons` applied to an index (e.g., `vecCons a tail (Fin.mk k proof)`).
    We recursively extract from this to handle arbitrary nesting depth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4189531e874cd95640cfe0bd6d979f088f606907` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
