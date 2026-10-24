# integral_feature_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13120966-3a41-fdf8-4c49-9e3074932e13",
  "kind": "theorem",
  "lexical_name": "integral_feature_product",
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
  "slug": "integral-feature-product--11343bc133fb1a2d587a4727",
  "source": {
    "blob": "e26a1150fc87eac3fcec0a39d4ed488c5673e2e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 102,
    "path": "GRWTSK/Analysis/GreenKernel/UnitInterval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11343bc133fb1a2d587a472723d526bf67c1e26bb81174617e37ef2bc7556c32",
  "verification": {
    "reference": "docs/verification/Analysis/GreenKernel/UnitInterval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13120966-3a41-fdf8-4c49-9e3074932e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_feature_product {r s : ℝ}
    (hr : r ∈ Icc (0:ℝ) 1) (hs : s ∈ Icc (0:ℝ) 1) :
    (∫ t, feature r t*feature s t ∂unitVolume)=kernel r s := by
  have hm : max r s ∈ Icc (0:ℝ) 1 :=
    ⟨hr.1.trans (le_max_left _ _), max_le hr.2 hs.2⟩
  simp_rw [feature_product_expansion]
  have hadd := integral_add
    (((step_integrable (max r s)).sub ((step_integrable r).const_mul (1-s))).sub
      ((step_integrable s).const_mul (1-r)))
    (integrable_const ((1-r)*(1-s)) :
      Integrable (fun _ : ℝ => (1-r)*(1-s)) unitVolume)
  have hsub₁ := integral_sub
    ((step_integrable (max r s)).sub ((step_integrable r).const_mul (1-s)))
    ((step_integrable s).const_mul (1-r))
  have hsub₂ := integral_sub (step_integrable (max r s))
    ((step_integrable r).const_mul (1-s))
  simp only [Pi.sub_def] at hadd hsub₁ hsub₂
  rw [hadd, hsub₁, hsub₂, integral_const_mul, integral_const_mul,
    integral_step hm, integral_step hr, integral_step hs]
  simp only [integral_const]
  simp
  rcases le_total r s with h | h
  · simp only [kernel, max_eq_right h, min_eq_left h]
    ring
  · simp only [kernel, max_eq_left h, min_eq_right h]
    ring

/-- The complete finite Gram form is an integral of the square of one signed sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GreenKernel/UnitInterval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GreenKernel/UnitInterval.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e26a1150fc87eac3fcec0a39d4ed488c5673e2e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
