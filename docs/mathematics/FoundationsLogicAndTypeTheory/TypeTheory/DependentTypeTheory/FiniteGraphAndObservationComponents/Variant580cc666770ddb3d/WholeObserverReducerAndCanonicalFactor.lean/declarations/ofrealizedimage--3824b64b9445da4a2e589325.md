# ofRealizedImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:886ab0fc9d1e4988a382f885e02d53cf13d82f47488258ea53cfc2c5cc5a8884",
  "kind": "def",
  "lexical_name": "ofRealizedImage",
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
  "slug": "ofrealizedimage--3824b64b9445da4a2e589325",
  "source": {
    "blob": "0edcc6568650a9b19692dfa17fddd46b7aef430d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/WholeObserverReducerAndCanonicalFactor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3824b64b9445da4a2e58932506ff6a6e875254e14f9b0046848a1db97bb5e57a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/WholeObserverReducerAndCanonicalFactor.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:886ab0fc9d1e4988a382f885e02d53cf13d82f47488258ea53cfc2c5cc5a8884`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofRealizedImage
    {Local : Type uL}
    (reduce : State → Local)
    (localStep : Input → Local → Local)
    (localObserve : Local → M.Observation ρ)
    (step_commute : ∀ input x,
      reduce (M.step input x) = localStep input (reduce x))
    (observe_commute : ∀ x,
      localObserve (reduce x) = M.observe ρ x) :
    ObserverReducer M ρ where
  Local := {localState : Local // ∃ x : State, reduce x = localState}
  reduce x := ⟨reduce x, ⟨x, rfl⟩⟩
  localStep input localState :=
    ⟨localStep input localState.1, by
      rcases localState.2 with ⟨x, hx⟩
      refine ⟨M.step input x, ?_⟩
      rw [step_commute, hx]⟩
  localObserve localState := localObserve localState.1
  reduce_surjective := by
    rintro ⟨localState, x, hx⟩
    refine ⟨x, ?_⟩
    apply Subtype.ext
    exact hx
  step_commute input x := by
    apply Subtype.ext
    exact step_commute input x
  observe_commute := observe_commute

/-- Execute the reducer's localState transition over an input word. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/WholeObserverReducerAndCanonicalFactor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/WholeObserverReducerAndCanonicalFactor.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0edcc6568650a9b19692dfa17fddd46b7aef430d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
