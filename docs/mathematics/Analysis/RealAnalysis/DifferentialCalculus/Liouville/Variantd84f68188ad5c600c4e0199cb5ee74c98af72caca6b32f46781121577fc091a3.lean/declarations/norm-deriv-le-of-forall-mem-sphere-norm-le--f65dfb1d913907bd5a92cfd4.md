# norm_deriv_le_of_forall_mem_sphere_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f3c5d94712fc1166a4951e70a723bac46ff1d4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:828b107b-a939-d418-6f69-222a6ad7455f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01ae4f39-d348-70b2-4def-aacc69fb01cb",
  "kind": "theorem",
  "lexical_name": "norm_deriv_le_of_forall_mem_sphere_norm_le",
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
  "slug": "norm-deriv-le-of-forall-mem-sphere-norm-le--f65dfb1d913907bd5a92cfd4",
  "source": {
    "blob": "3f3c5d94712fc1166a4951e70a723bac46ff1d4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f65dfb1d913907bd5a92cfd46383a0bb1ac88a9e991ef228ffc10f00dc9eed2e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01ae4f39-d348-70b2-4def-aacc69fb01cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_deriv_le_of_forall_mem_sphere_norm_le {c : ℂ} {R C : ℝ} {f : ℂ → F} (hR : 0 < R)
    (hd : DiffContOnCl ℂ f (ball c R)) (hC : ∀ z ∈ sphere c R, ‖f z‖ ≤ C) :
    ‖deriv f c‖ ≤ C / R := by
  set e : F →L[ℂ] F̂ := UniformSpace.Completion.toComplL
  have : HasDerivAt (e ∘ f) (e (deriv f c)) c :=
    e.hasFDerivAt.comp_hasDerivAt c
      (hd.differentiableAt isOpen_ball <| mem_ball_self hR).hasDerivAt
  calc
    ‖deriv f c‖ = ‖deriv (e ∘ f) c‖ := by
      rw [this.deriv]
      exact (UniformSpace.Completion.norm_coe _).symm
    _ ≤ C / R :=
      norm_deriv_le_aux hR (e.differentiable.comp_diffContOnCl hd) fun z hz =>
        (UniformSpace.Completion.norm_coe _).trans_le (hC z hz)
#align complex.norm_deriv_le_of_forall_mem_sphere_norm_le Complex.norm_deriv_le_of_forall_mem_sphere_norm_le

/-- An auxiliary lemma for Liouville's theorem `Differentiable.apply_eq_apply_of_bounded`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd84f68188ad5c600c4e0199cb5ee74c98af72caca6b32f46781121577fc091a3.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f3c5d94712fc1166a4951e70a723bac46ff1d4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
