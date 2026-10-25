# pureCoherence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3377e9c7b0d7c95ebedef272d83c1ab36d05b883b407bddc59ea9516fe6eee2d",
  "kind": "def",
  "lexical_name": "pureCoherence",
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
  "slug": "purecoherence--cf92f1062383bb8a245be29d",
  "source": {
    "blob": "d4b5364b4256732efe4d1c31ff7538d496cd5f6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf92f1062383bb8a245be29d1b186131b4cdca534fe8972e3f6b4d0af5a37e55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3377e9c7b0d7c95ebedef272d83c1ab36d05b883b407bddc59ea9516fe6eee2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pureCoherence (ρ : Type) [Context ρ] [MkMor₂ (CoherenceM ρ)]
    [MonadMor₁ (CoherenceM ρ)] [MonadMor₂Iso (CoherenceM ρ)]
    [MonadCoherehnceHom (CoherenceM ρ)] [MonadNormalizeNaturality (CoherenceM ρ)]
    [MkEqOfNaturality (CoherenceM ρ)]
    (nm : Name) (mvarId : MVarId) : MetaM (List MVarId) :=
  mvarId.withContext do
    withTraceNode nm (fun ex => match ex with
      | .ok _ => return m!"{checkEmoji} coherence equality: {← mvarId.getType}"
      | .error err => return m!"{crossEmoji} {err.toMessageData}") do
      let e ← instantiateMVars <| ← mvarId.getType
      let some (_, η, θ) := (← whnfR e).eq?
        | throwError "coherence requires an equality goal"
      let ctx : ρ ← mkContext η
      CoherenceM.run (ctx := ctx) do
        let .some ηIso := (← MkMor₂.ofExpr η).isoLift? |
          throwError "could not find a structural isomorphism, but {η}"
        let .some θIso := (← MkMor₂.ofExpr θ).isoLift? |
          throwError "could not find a structural isomorphism, but {θ}"
        let f ← ηIso.e.srcM
        let g ← ηIso.e.tgtM
        let a := f.src
        let nil ← normalizedHom.nilM a
        let ⟨_, η_f⟩ ← normalize nil f
        let ⟨_, η_g⟩ ← normalize nil g
        let Hη ← withTraceNode nm (fun ex => do return m!"{exceptEmoji ex} LHS") do
          naturality nm nil ηIso.e
        let Hθ ← withTraceNode nm (fun ex => do return m!"{exceptEmoji ex} RHS") do
          naturality nm nil θIso.e
        let H ← mkEqOfNaturality η θ ηIso θIso η_f η_g Hη Hθ
        mvarId.apply H

end Mathlib.Tactic.BicategoryLike
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4b5364b4256732efe4d1c31ff7538d496cd5f6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
