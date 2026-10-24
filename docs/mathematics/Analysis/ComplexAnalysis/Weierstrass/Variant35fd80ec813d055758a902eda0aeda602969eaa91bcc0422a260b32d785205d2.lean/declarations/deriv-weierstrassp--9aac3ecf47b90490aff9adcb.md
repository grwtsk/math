# deriv_weierstrassP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef441515-94a8-170b-7a93-bf3903df394f",
  "kind": "lemma",
  "lexical_name": "deriv_weierstrassP",
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
  "slug": "deriv-weierstrassp--9aac3ecf47b90490aff9adcb",
  "source": {
    "blob": "50cd53bb41662dfea7ffa092778592ba86849027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 601,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aac3ecf47b90490aff9adcbf709b0670aaa977cd3ec9fa0e49427b7de3601c8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef441515-94a8-170b-7a93-bf3903df394f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma deriv_weierstrassP : deriv ℘[L] = ℘'[L] := by
  ext x
  by_cases hx : x ∈ L.lattice
  · rw [deriv_zero_of_not_differentiableAt, L.derivWeierstrassP_coe ⟨x, hx⟩]
    exact fun H ↦ L.not_continuousAt_weierstrassP x hx H.continuousAt
  · rw [← L.weierstrassPExcept_of_notMem _ L.ω₁_div_two_notMem_lattice,
      ← L.derivWeierstrassPExcept_of_notMem _ L.ω₁_div_two_notMem_lattice,
      L.eqOn_deriv_weierstrassPExcept_derivWeierstrassPExcept (L.ω₁ / 2) (x := x) (by simp [hx])]

end derivWeierstrassP

section AnalyticWeierstrassPExcept

/-- The sum `∑ (l - x)⁻ʳ` over `l ∈ L`. This converges when `2 < r`, see `hasSum_sumInvPow`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50cd53bb41662dfea7ffa092778592ba86849027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
