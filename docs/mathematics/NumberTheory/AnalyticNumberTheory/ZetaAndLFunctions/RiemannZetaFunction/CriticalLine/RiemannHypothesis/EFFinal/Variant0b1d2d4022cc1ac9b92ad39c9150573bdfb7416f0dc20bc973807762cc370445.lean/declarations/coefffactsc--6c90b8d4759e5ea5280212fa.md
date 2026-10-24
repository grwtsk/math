# coeffFactsC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c998c278-4640-861d-2da7-23b1e8197f4c",
  "kind": "theorem",
  "lexical_name": "coeffFactsC",
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
  "slug": "coefffactsc--6c90b8d4759e5ea5280212fa",
  "source": {
    "blob": "0e0b5c02752874d95a22c14eba902d78c3d20564",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFFinal/Variant0b1d2d4022cc1ac9b92ad39c9150573bdfb7416f0dc20bc973807762cc370445.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c90b8d4759e5ea5280212facfa9407327eb3cdb15ff1bf561eff0162c05a59d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFFinal/Variant0b1d2d4022cc1ac9b92ad39c9150573bdfb7416f0dc20bc973807762cc370445.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c998c278-4640-861d-2da7-23b1e8197f4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeffFactsC : CoeffFactsC := by
  obtain ⟨R₀, hR₀, h⟩ := LSeries_xiCoeffJ_of_gt_one (9/8) (by norm_num)
  refine ⟨⟨R₀, hR₀, fun Λs hΛ c hc1 hc2 => ?_⟩, fun Λs N => ?_⟩
  · have hre : (((c:ℝ):ℂ)).re = c := by simp
    have h0 := h Λs hΛ ((c:ℝ):ℂ) (by simp; linarith)
    refine ⟨?_, fun t => ?_⟩
    · have := h0.1
      rw [xiCoeffJ'_eq]
      simpa using this
    · obtain ⟨-, -, h3⟩ := h Λs hΛ ((c:ℂ) + t * I) (by simp; linarith)
      rw [xiCoeffJ'_eq, Afn, Bfn]
      exact h3
  · rw [xiCoeffJ'_eq, xiCoeffJ'_eq, xiCoeffJ_conj]

/-- **WEF** [XF′ Thm 9.2]: the explicit formula for W = ζ′ + L₂ζ (i.e. for Z′), entrywise, frozen coefficients at
the REAL parameter L_{2⋆}(τ⋆), pole weight 2, error C·T^{−δ}·(1/max(1,(τ_k−τ_l)²) + 1/T). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFFinal/Variant0b1d2d4022cc1ac9b92ad39c9150573bdfb7416f0dc20bc973807762cc370445.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFFinal/Variant0b1d2d4022cc1ac9b92ad39c9150573bdfb7416f0dc20bc973807762cc370445.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0b5c02752874d95a22c14eba902d78c3d20564` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
