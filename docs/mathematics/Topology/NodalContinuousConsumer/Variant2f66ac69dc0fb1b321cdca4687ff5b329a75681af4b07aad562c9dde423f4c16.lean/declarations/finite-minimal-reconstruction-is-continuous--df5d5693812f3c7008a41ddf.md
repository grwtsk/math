# finite_minimal_reconstruction_is_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0761c3cd-6ab7-48e9-90e5-6edd0f43bfe1",
  "kind": "theorem",
  "lexical_name": "finite_minimal_reconstruction_is_continuous",
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
  "slug": "finite-minimal-reconstruction-is-continuous--df5d5693812f3c7008a41ddf",
  "source": {
    "blob": "db9e3823743b7477851a8d4180a6c30db4032c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/Topology/NodalContinuousConsumer/Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df5d5693812f3c7008a41ddfdb7c6559d57e5da5a63884becc7036aa03e033f4",
  "verification": {
    "reference": "docs/verification/Topology/NodalContinuousConsumer/Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0761c3cd-6ab7-48e9-90e5-6edd0f43bfe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_minimal_reconstruction_is_continuous {α κ : Type*} [TopologicalSpace α]
    [LocallyConnectedSpace α] [Fintype κ] {f : α → ℝ} (hf : Continuous f) (rep : κ → α)
    (hdistinct : Function.Injective (fun k ↦ connectedComponentIn (Function.support f) (rep k)))
    (hcover : ∀ x, f x ≠ 0 → ∃ k, x ∈ connectedComponentIn (Function.support f) (rep k)) :
    (∀ k, Continuous (componentAtom f (rep k))) ∧
      (∀ x, (∑ k, componentAtom f (rep k) x) = f x) :=
  ⟨fun k ↦ component_atom_continuous hf (rep k),
    finite_component_atoms_reconstruct f rep hdistinct hcover⟩

end
end GRWTSK.RiemannHypothesis.Conversation.NodalContinuousConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/NodalContinuousConsumer/Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/NodalContinuousConsumer/Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db9e3823743b7477851a8d4180a6c30db4032c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
