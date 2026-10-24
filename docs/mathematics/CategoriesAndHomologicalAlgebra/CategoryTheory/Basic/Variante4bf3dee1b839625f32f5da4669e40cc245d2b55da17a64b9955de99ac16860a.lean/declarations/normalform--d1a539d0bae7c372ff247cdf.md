# normalForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f74d3280ea3cdcc1b7862296c170dbb1049845b1bef61d639eb7ed6667247641",
  "kind": "def",
  "lexical_name": "normalForm",
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
  "slug": "normalform--d1a539d0bae7c372ff247cdf",
  "source": {
    "blob": "ed87d55c1688e3cf0c626b8ba10d48aa4ad40774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 33,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1a539d0bae7c372ff247cdfdb9d92ee8052256a27e4aece7ed2b84a992f9574",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f74d3280ea3cdcc1b7862296c170dbb1049845b1bef61d639eb7ed6667247641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalForm (ρ : Type) [Context ρ]
    [MonadMor₁ (CoherenceM ρ)]
    [MonadMor₂Iso (CoherenceM ρ)]
    [MonadNormalExpr (CoherenceM ρ)] [MkEval (CoherenceM ρ)]
    [MkMor₂ (CoherenceM ρ)]
    [MonadMor₂ (CoherenceM ρ)]
    (nm : Name) (mvarId : MVarId) : MetaM (List MVarId) := do
  mvarId.withContext do
    let e ← instantiateMVars <| ← mvarId.getType
    withTraceNode nm (fun _ => return m!"normalize: {e}") do
      let some (_, e₁, e₂) := (← whnfR <| ← instantiateMVars <| e).eq?
        | throwError "{nm}_nf requires an equality goal"
      let ctx : ρ ← mkContext e₁
      CoherenceM.run (ctx := ctx) do
        let e₁' ← MkMor₂.ofExpr e₁
        let e₂' ← MkMor₂.ofExpr e₂
        let e₁'' ← eval nm e₁'
        let e₂'' ← eval nm e₂'
        let H ← mkAppM ``mk_eq #[e₁, e₂, e₁''.expr.e.e, e₂''.expr.e.e, e₁''.proof, e₂''.proof]
        mvarId.apply H

universe v u

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed87d55c1688e3cf0c626b8ba10d48aa4ad40774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
