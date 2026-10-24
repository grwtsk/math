# removeMData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f9006c68ec08d88001f7b53e4e972b8adaa1e94c197a7c473dea208f9499d59",
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
  "slug": "removemdata--cb616dba05b5980e2629fa1e",
  "source": {
    "blob": "8172ff8af17f74f5200353af4c9fd8f4bcdfd0b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb616dba05b5980e2629fa1e9c884bee8129de4318419a7fd718e793df5d820b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f9006c68ec08d88001f7b53e4e972b8adaa1e94c197a7c473dea208f9499d59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–164.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8172ff8af17f74f5200353af4c9fd8f4bcdfd0b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
