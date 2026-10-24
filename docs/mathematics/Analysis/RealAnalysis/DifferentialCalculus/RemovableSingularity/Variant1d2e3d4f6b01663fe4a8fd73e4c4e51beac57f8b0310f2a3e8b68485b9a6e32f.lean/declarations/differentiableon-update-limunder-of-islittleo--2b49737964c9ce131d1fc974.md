# differentiableOn_update_limUnder_of_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87b921e7ce4b923cd0bc77e234d5176764ef768b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1de18857-45eb-4707-6a95-2101b0739088",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bae5458b-aa2d-f462-9c9f-f101e68313e9",
  "kind": "theorem",
  "lexical_name": "differentiableOn_update_limUnder_of_isLittleO",
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
  "slug": "differentiableon-update-limunder-of-islittleo--2b49737964c9ce131d1fc974",
  "source": {
    "blob": "87b921e7ce4b923cd0bc77e234d5176764ef768b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b49737964c9ce131d1fc974814a6612fcff2ee474009457fabc07fdc153811b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bae5458b-aa2d-f462-9c9f-f101e68313e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableOn_update_limUnder_of_isLittleO {f : ℂ → E} {s : Set ℂ} {c : ℂ} (hc : s ∈ 𝓝 c)
    (hd : DifferentiableOn ℂ f (s \ {c}))
    (ho : (fun z => f z - f c) =o[𝓝[≠] c] fun z => (z - c)⁻¹) :
    DifferentiableOn ℂ (update f c (limUnder (𝓝[≠] c) f)) s := by
  set F : ℂ → E := fun z => (z - c) • f z
  suffices DifferentiableOn ℂ F (s \ {c}) ∧ ContinuousAt F c by
    rw [differentiableOn_compl_singleton_and_continuousAt_iff hc, ← differentiableOn_dslope hc,
      dslope_sub_smul] at this
    have hc : Tendsto f (𝓝[≠] c) (𝓝 (deriv F c)) :=
      continuousAt_update_same.mp (this.continuousOn.continuousAt hc)
    rwa [hc.limUnder_eq]
  refine' ⟨(differentiableOn_id.sub_const _).smul hd, _⟩
  rw [← continuousWithinAt_compl_self]
  have H := ho.tendsto_inv_smul_nhds_zero
  have H' : Tendsto (fun z => (z - c) • f c) (𝓝[≠] c) (𝓝 (F c)) :=
    (continuousWithinAt_id.tendsto.sub tendsto_const_nhds).smul tendsto_const_nhds
  simpa [← smul_add, ContinuousWithinAt] using H.add H'
#align complex.differentiable_on_update_lim_of_is_o Complex.differentiableOn_update_limUnder_of_isLittleO

/-- **Removable singularity** theorem: if `s` is a punctured neighborhood of `c : ℂ`, a function
`f : ℂ → E` is complex differentiable on `s`, and $f(z) - f(c)=o((z-c)^{-1})$, then `f` redefined to
be equal to `limUnder (𝓝[≠] c) f` at `c` is complex differentiable on `{c} ∪ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b921e7ce4b923cd0bc77e234d5176764ef768b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
