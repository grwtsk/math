# IsDiscrete.of_openPartialHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:964469d0-a62d-1cf8-d56e-855a949c9e46",
  "kind": "theorem",
  "lexical_name": "IsDiscrete.of_openPartialHomeomorph",
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
  "slug": "isdiscrete-of-openpartialhomeomorph--7c83e79dc5fc4d79d95c3a64",
  "source": {
    "blob": "fe1f79d0dfe2251d25e3cc2b15de0231a2fd54c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 506,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c83e79dc5fc4d79d95c3a649e595219f82e46451f0cdd9309dcf1c3dc228f02",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:964469d0-a62d-1cf8-d56e-855a949c9e46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsDiscrete.of_openPartialHomeomorph {t : Set E} {x : X}
    (htx : t ⊆ f ⁻¹' {x}) (hf : ∀ e ∈ t, ∃ φ : OpenPartialHomeomorph E X, e ∈ φ.source ∧ φ = f) :
    IsDiscrete t :=
  isDiscrete_iff_forall_mem_exists_isOpen.mpr fun e he ↦ by
    obtain ⟨φ, hφ, rfl⟩ := hf e he
    exact ⟨_, φ.open_source, subset_antisymm (fun e' he' ↦ φ.injOn he'.1 hφ <|
      (htx he'.2).trans (htx he).symm) <| Set.singleton_subset_iff.mpr ⟨hφ, he⟩⟩

open Set in
/-- If `f : E → X` is a closed map between topological spaces with `E` Hausdorff, such that the
fiber over a point `x : X` is finite and `f` restricts to a homeomorphism on a neighborhood of
every point of the fiber, then `x` admits an evenly covered neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1f79d0dfe2251d25e3cc2b15de0231a2fd54c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
