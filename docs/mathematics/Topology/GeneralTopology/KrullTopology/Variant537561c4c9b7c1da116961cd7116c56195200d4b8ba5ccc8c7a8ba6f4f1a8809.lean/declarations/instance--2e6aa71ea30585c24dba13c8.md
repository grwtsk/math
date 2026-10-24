# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62a56fc1f34950ea64d9b94aa8fa829f53d8154ab0671591eac331c34fba9ef1",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2e6aa71ea30585c24dba13c8",
  "source": {
    "blob": "ecfa5ca65fbd459e20de06a2362187f0ad3edfaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 228,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e6aa71ea30585c24dba13c8abd11ed5f443cf08a0cf01492ff94c1de30076e8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62a56fc1f34950ea64d9b94aa8fa829f53d8154ab0671591eac331c34fba9ef1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {K L : Type*} [Field K] [Field L] [Algebra K L] [Algebra.IsIntegral K L] :
    TotallySeparatedSpace (L ≃ₐ[K] L) := by
  rw [totallySeparatedSpace_iff_exists_isClopen]
  intro σ τ h_diff
  have hστ : σ⁻¹ * τ ≠ 1 := by rwa [Ne, inv_mul_eq_one]
  rcases DFunLike.exists_ne hστ with ⟨x, hx : (σ⁻¹ * τ) x ≠ x⟩
  let E := IntermediateField.adjoin K ({x} : Set L)
  haveI := IntermediateField.adjoin.finiteDimensional
    (Algebra.IsIntegral.isIntegral (R := K) x)
  refine ⟨σ • E.fixingSubgroup,
    ⟨E.fixingSubgroup_isClosed.leftCoset σ, E.fixingSubgroup_isOpen.leftCoset σ⟩,
    ⟨1, E.fixingSubgroup.one_mem', mul_one σ⟩, ?_⟩
  simp only [Set.mem_compl_iff, mem_leftCoset_iff, SetLike.mem_coe,
    IntermediateField.mem_fixingSubgroup_iff, not_forall]
  exact ⟨x, IntermediateField.mem_adjoin_simple_self K x, hx⟩

/-- If `L/K` is an algebraic field extension, then the Krull topology on `L ≃ₐ[K] L` is
  totally disconnected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecfa5ca65fbd459e20de06a2362187f0ad3edfaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
