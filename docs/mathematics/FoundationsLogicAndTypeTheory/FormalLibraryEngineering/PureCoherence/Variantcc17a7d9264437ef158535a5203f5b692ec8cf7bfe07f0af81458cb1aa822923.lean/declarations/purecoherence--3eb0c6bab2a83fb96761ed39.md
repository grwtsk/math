# pureCoherence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c34369f4dbc95db1e6adadc8bdd944b615abb0806c54a2b5c016c542bd16b839",
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
  "slug": "purecoherence--3eb0c6bab2a83fb96761ed39",
  "source": {
    "blob": "9fe41b68725fac76391520b9d48d28bdf34d713c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3eb0c6bab2a83fb96761ed39f2e98bd0b31b248a9d6d7ca2cb4ee0398b1b2559",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c34369f4dbc95db1e6adadc8bdd944b615abb0806c54a2b5c016c542bd16b839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–206.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fe41b68725fac76391520b9d48d28bdf34d713c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
