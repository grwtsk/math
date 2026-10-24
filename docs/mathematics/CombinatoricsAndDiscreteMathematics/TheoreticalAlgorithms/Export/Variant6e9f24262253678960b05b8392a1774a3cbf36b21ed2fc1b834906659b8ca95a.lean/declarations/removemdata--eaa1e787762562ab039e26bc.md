# removeMData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7701ada6e2f7584cba43a57ee0317f7e3c3649b9b98981667716f315505b3f31",
  "kind": "def",
  "lexical_name": "removeMData",
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
  "slug": "removemdata--eaa1e787762562ab039e26bc",
  "source": {
    "blob": "cda19933d5d21d78655034ffa695fd1d42b176ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant6e9f24262253678960b05b8392a1774a3cbf36b21ed2fc1b834906659b8ca95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaa1e787762562ab039e26bc52bf83f761154e94d377c81a78ba96d15ba369e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant6e9f24262253678960b05b8392a1774a3cbf36b21ed2fc1b834906659b8ca95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7701ada6e2f7584cba43a57ee0317f7e3c3649b9b98981667716f315505b3f31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def removeMData (e : Expr) : M Expr := do
  if let some x := (← get).noMDataExprs[e]? then
    return x
  let e' ← match e with
  | .mdata _ e' => removeMData e'
  | .fvar .. | .mvar ..=> unreachable!
  | .bvar .. | .sort .. | .const .. | .lit _ => pure e
  | .app f a =>
    pure <| e.updateApp! (← removeMData f) (← removeMData a)
  | .lam _ d b _ =>
    pure <| e.updateLambdaE! (← removeMData d) (← removeMData b)
  | .letE _ d v b _ =>
    -- Normalize `nonDep` to `false` to avoid duplicate expression indices.
    -- Lean's `BEq` for `Expr` considers the `nonDep` flag, but external type checkers
    -- (e.g., nanoda_lib) treat expressions as identical regardless of this optimization hint.
    -- Without normalization, the same expression can get different indices, causing parse errors.
    -- See: https://github.com/ammkrn/lean4export/commit/eb023e5
    pure <| e.updateLet! (← removeMData d) (← removeMData v) (← removeMData b) false
  | .forallE _ d b _ =>
    pure <| e.updateForallE! (← removeMData d) (← removeMData b)
  | .proj _ _ e2 =>
    pure <| e.updateProj! (← removeMData e2)
  modify (fun st => { st with noMDataExprs := st.noMDataExprs.insert e e' })
  pure e'

mutual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant6e9f24262253678960b05b8392a1774a3cbf36b21ed2fc1b834906659b8ca95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant6e9f24262253678960b05b8392a1774a3cbf36b21ed2fc1b834906659b8ca95a.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cda19933d5d21d78655034ffa695fd1d42b176ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
