# precomp_uniformContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d88d8ebe-5df5-2655-bbf8-c8468c762240",
  "kind": "theorem",
  "lexical_name": "precomp_uniformContinuous",
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
  "slug": "precomp-uniformcontinuous--a19af6c1d29b14d0c82f5d43",
  "source": {
    "blob": "e8dc1a1f0e8c15131ff125434bf6a82008620bc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 916,
    "line": 906,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a19af6c1d29b14d0c82f5d435d858e9971013b5739f2b3090f5c520310f23500",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d88d8ebe-5df5-2655-bbf8-c8468c762240`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 906–916.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem precomp_uniformContinuous {𝔗 : Set (Set γ)} {f : γ → α}
    (hf : MapsTo (f '' ·) 𝔗 𝔖) :
    UniformContinuous fun g : α →ᵤ[𝔖] β => ofFun 𝔗 (toFun 𝔖 g ∘ f) := by
  -- This follows from the fact that `(· ∘ f) × (· ∘ f)` maps `gen (f '' t) V` to `gen t V`.
  simp_rw [UniformContinuous, UniformOnFun.uniformity_eq, tendsto_iInf]
  refine fun t ht V hV ↦ tendsto_iInf' (f '' t) <| tendsto_iInf' (hf ht) <|
    tendsto_iInf' V <| tendsto_iInf' hV ?_
  simpa only [tendsto_principal_principal, UniformOnFun.gen] using fun _ ↦ forall_mem_image.1

/-- Turn a bijection `e : γ ≃ α` such that we have both `∀ T ∈ 𝔗, e '' T ∈ 𝔖` and
`∀ S ∈ 𝔖, e ⁻¹' S ∈ 𝔗` into a uniform isomorphism `(γ →ᵤ[𝔗] β) ≃ᵤ (α →ᵤ[𝔖] β)` by pre-composing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean#L906).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8dc1a1f0e8c15131ff125434bf6a82008620bc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
