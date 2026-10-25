# withAbstractMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0db29bc5b644e2cf56d2afe8c60338d5cb6b8adefee3462472acc8520b6c8030",
  "kind": "def",
  "lexical_name": "withAbstractMVars",
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
  "slug": "withabstractmvars--06a68a99e1b23a1e628a4bcc",
  "source": {
    "blob": "35b2a2071b9d3b88e9247b3ac0e2bfdb0ed43f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 329,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06a68a99e1b23a1e628a4bccab93c6937482347e5bc7a3ddfa3e3deb16aa263a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0db29bc5b644e2cf56d2afe8c60338d5cb6b8adefee3462472acc8520b6c8030`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withAbstractMVars (e : Expr) (k : Expr → MetaM Simp.Step) : MetaM Simp.Step := do
  let e ← instantiateMVars e
  if !e.hasMVar then
    return ← k e
  let r ← abstractMVars e (levels := false)
  lambdaBoundedTelescope r.expr r.numMVars fun xs e' => do
    let restore (t : Expr) : MetaM Expr :=
      instantiateMVars <| t.replaceFVars xs r.mvars
    let subst (res : Simp.Result) : MetaM Simp.Result := do
      return { res with expr := ← restore res.expr, proof? := ← res.proof?.mapM restore }
    match ← k e' with
    | .done res => return .done (← subst res)
    | .visit res => return .visit (← subst res)
    | .continue res? => return .continue (← res?.mapM subst)

/-- The implementation of `existsAndEq`, for an expression without metavariables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35b2a2071b9d3b88e9247b3ac0e2bfdb0ed43f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
