# rectangleIntegral'_mul_logDeriv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b51c902-8e92-b22e-c9b5-ce880d280998",
  "kind": "theorem",
  "lexical_name": "rectangleIntegral'_mul_logDeriv'",
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
  "slug": "rectangleintegral-mul-logderiv--0f9ff471727989c1470895a8",
  "source": {
    "blob": "dd09b31cc78dfe7a2d5f72f000c96adf33231334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 373,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f9ff471727989c1470895a8d032a8c1f266e181045b4f0fe71412b6d01e2bc4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b51c902-8e92-b22e-c9b5-ce880d280998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleIntegral'_mul_logDeriv' {f g : ℂ → ℂ} {z w : ℂ} (hre : z.re ≤ w.re)
    (him : z.im ≤ w.im)
    (hf : AnalyticOnNhd ℂ f (Rectangle z w)) (hg : AnalyticOnNhd ℂ g (Rectangle z w))
    (hborder : ∀ s ∈ RectangleBorder z w, f s ≠ 0) :
    RectangleIntegral' (fun s => g s * logDeriv f s) z w
      = ∑ ρ ∈ (finite_zeros_rectangle hf (rectangleBorder_subset_rectangle z w
          (show z ∈ RectangleBorder z w from Or.inl (Or.inl (Or.inl ⟨left_mem_uIcc, rfl⟩))))
          (hborder z (Or.inl (Or.inl (Or.inl ⟨left_mem_uIcc, rfl⟩))))).toFinset,
        (analyticOrderNatAt f ρ : ℂ) * g ρ := by
  classical
  set hfin := finite_zeros_rectangle hf (rectangleBorder_subset_rectangle z w
    (show z ∈ RectangleBorder z w from Or.inl (Or.inl (Or.inl ⟨left_mem_uIcc, rfl⟩))))
    (hborder z (Or.inl (Or.inl (Or.inl ⟨left_mem_uIcc, rfl⟩))))
  refine rectangleIntegral'_mul_logDeriv hre him hf hg hborder hfin.toFinset ?_ ?_
  · intro s hs
    simp [Set.Finite.mem_toFinset, hs]
  · intro s hs
    exact ((Set.Finite.mem_toFinset _).mp hs).1


end Analytic
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd09b31cc78dfe7a2d5f72f000c96adf33231334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
