# verticalXi_divisor_eq_zeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99b66259-014a-add4-fe94-5c7e0a2541de",
  "kind": "theorem",
  "lexical_name": "verticalXi_divisor_eq_zeta",
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
  "slug": "verticalxi-divisor-eq-zeta--13d027bbc9fb45ebd2084aa5",
  "source": {
    "blob": "1b3b1cdda7f876cdbc4da80c28df249949af5b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 156,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d027bbc9fb45ebd2084aa5c626c521e04431f23fcc0ee5b4d0ec08447aa0f3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99b66259-014a-add4-fe94-5c7e0a2541de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verticalXi_divisor_eq_zeta : divisor verticalXi verticalDomain =
    divisor (riemannZeta ∘ verticalParameter) verticalDomain := by
  have hparam (z : ℂ) : AnalyticAt ℂ verticalParameter z := by
    unfold verticalParameter
    fun_prop
  have hxi : AnalyticOnNhd ℂ verticalXi verticalDomain := fun z _ =>
    (XiToeplitz.differentiable_xi.analyticAt (verticalParameter z)).comp (hparam z)
  have hzeta : AnalyticOnNhd ℂ (riemannZeta ∘ verticalParameter) verticalDomain := by
    intro z hz
    exact (analyticOn_riemannZeta (verticalParameter z)
      (strip_mem_domain (verticalParameter_strip hz).1 (verticalParameter_strip hz).2).2.1).comp
        (hparam z)
  ext z
  by_cases hz : z ∈ verticalDomain
  · rw [hxi.divisor_apply hz, hzeta.divisor_apply hz, verticalXi_order hz,
      analyticOrderAt_comp_of_deriv_ne_zero (hparam z)
        (by rw [verticalParameter_deriv]; exact Complex.I_ne_zero)]
  · simp [hz]

/-- The restored endpoint shows why an unguarded product identity is false. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b3b1cdda7f876cdbc4da80c28df249949af5b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
