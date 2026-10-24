# boundary_quotient_of_succ_order_draft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "765896c9a22c76a36e713850f5738b37dd3b7bd2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b37256c-5fce-cb0d-127e-7338f3b0d60f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:156098c7-b197-e370-868e-2ecac9b8ff50",
  "kind": "theorem",
  "lexical_name": "boundary_quotient_of_succ_order_draft",
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
  "slug": "boundary-quotient-of-succ-order-draft--7e7440911d5906c279e95e04",
  "source": {
    "blob": "765896c9a22c76a36e713850f5738b37dd3b7bd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient/Variant824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e7440911d5906c279e95e04462833febb2e0a1e03edca6f8931465d61573548",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient/Variant824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:156098c7-b197-e370-868e-2ecac9b8ff50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_quotient_of_succ_order_draft {f : ℂ → ℂ} {z₀ : ℂ} (n : ℕ)
    (hf : AnalyticAt ℂ f z₀) (horder : analyticOrderAt f z₀ = (n + 1 : ℕ)) :
    AnalyticAt ℂ (fun w ↦ f w / (f w + deriv f w)) z₀ ∧
      analyticOrderAt (fun w ↦ f w / (f w + deriv f w)) z₀ = 1 := by
  obtain ⟨u, hu, hu0, hfactor⟩ := hf.analyticOrderAt_eq_natCast.mp horder
  have hfactor' : f =ᶠ[𝓝 z₀] fun w ↦ (w - z₀) ^ (n + 1) * u w := by
    simpa only [smul_eq_mul] using hfactor
  obtain ⟨v, hv, hv0, hq⟩ := boundary_quotient_factor_draft n hu hu0 hfactor'
  have hc : AnalyticAt ℂ (fun w ↦ u w / v w) z₀ := hu.div hv hv0
  have hc0 : u z₀ / v z₀ ≠ 0 := div_ne_zero hu0 hv0
  have hqa : AnalyticAt ℂ (fun w ↦ (w - z₀) * (u w / v w)) z₀ :=
    (analyticAt_id.sub analyticAt_const).mul hc
  have hsource : (fun w ↦ f w / (f w + deriv f w)) =ᶠ[𝓝 z₀]
      (fun w ↦ (u w / v w) * id (w - z₀)) := by
    filter_upwards [hq] with w hw
    exact hw.trans (mul_comm _ _)
  refine ⟨hqa.congr hq.symm, ?_⟩
  simpa using order_eq_of_local_coordinate (f := id)
    (g := fun w ↦ f w / (f w + deriv f w)) (c := fun w ↦ u w / v w)
    (φ := fun w ↦ w - z₀) analyticAt_id hc hc0 (by fun_prop) (by simp) hsource

/-- Candidate natural-order wrapper with the exact all-m≥1 quantifier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient/Variant824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient/Variant824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27f.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `765896c9a22c76a36e713850f5738b37dd3b7bd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
