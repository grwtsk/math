# is_weak_closed_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d0e3691-4326-f9da-3548-e9eebd2b47c7",
  "kind": "theorem",
  "lexical_name": "is_weak_closed_closedBall",
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
  "slug": "is-weak-closed-closedball--b7ee9163c672e8ef21f364a3",
  "source": {
    "blob": "ce89b94bc69ef6160c4384f1fd7e906d5be86167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7ee9163c672e8ef21f364a3b24faa5cd3c0b38ef807e77e9dba8d092b14258e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d0e3691-4326-f9da-3548-e9eebd2b47c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem is_weak_closed_closedBall (f₀ : E' →SL[σ₁₂] F) (r : ℝ) ⦃f : E' →SL[σ₁₂] F⦄
    (hf : ⇑f ∈ closure (((↑) : (E' →SL[σ₁₂] F) → E' → F) '' closedBall f₀ r)) :
    f ∈ closedBall f₀ r := by
  have hr : 0 ≤ r := nonempty_closedBall.1 (closure_nonempty_iff.1 ⟨_, hf⟩).of_image
  refine mem_closedBall_iff_norm.2 (opNorm_le_bound _ hr fun x => ?_)
  have : IsClosed { g : E' → F | ‖g x - f₀ x‖ ≤ r * ‖x‖ } :=
    isClosed_Iic.preimage ((@continuous_apply E' (fun _ => F) _ x).sub continuous_const).norm
  refine this.closure_subset_iff.2 (image_subset_iff.2 fun g hg => ?_) hf
  exact (g - f₀).le_of_opNorm_le (mem_closedBall_iff_norm.1 hg) _

/-- The set of functions `f : E → F` that represent continuous linear maps `f : E →SL[σ₁₂] F`
at distance `≤ r` from `f₀ : E →SL[σ₁₂] F` is closed in the topology of pointwise convergence.
This is one of the key steps in the proof of the **Banach-Alaoglu** theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce89b94bc69ef6160c4384f1fd7e906d5be86167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
