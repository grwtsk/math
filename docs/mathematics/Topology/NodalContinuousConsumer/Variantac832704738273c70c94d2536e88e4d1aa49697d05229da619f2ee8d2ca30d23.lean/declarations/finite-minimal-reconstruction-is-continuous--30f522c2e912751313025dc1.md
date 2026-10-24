# finite_minimal_reconstruction_is_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:401f6e3d-a5cd-9af7-7e0f-09e5058135ee",
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
  "slug": "finite-minimal-reconstruction-is-continuous--30f522c2e912751313025dc1",
  "source": {
    "blob": "4fcea0bf5ecea9bbfa742ef616a70ceea243353b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 57,
    "path": "GRWTSK/Topology/NodalContinuousConsumer/Variantac832704738273c70c94d2536e88e4d1aa49697d05229da619f2ee8d2ca30d23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30f522c2e912751313025dc15829801bf6592819a6ab6e2f43f620b8353068eb",
  "verification": {
    "reference": "docs/verification/Topology/NodalContinuousConsumer/Variantac832704738273c70c94d2536e88e4d1aa49697d05229da619f2ee8d2ca30d23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:401f6e3d-a5cd-9af7-7e0f-09e5058135ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–67.

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

[Verification target and public status](../../../../../verification/Topology/NodalContinuousConsumer/Variantac832704738273c70c94d2536e88e4d1aa49697d05229da619f2ee8d2ca30d23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/NodalContinuousConsumer/Variantac832704738273c70c94d2536e88e4d1aa49697d05229da619f2ee8d2ca30d23.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fcea0bf5ecea9bbfa742ef616a70ceea243353b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
