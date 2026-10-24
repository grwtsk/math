# serreDerivative_eq_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72de56c8-666a-915d-d177-31dd94367e7d",
  "kind": "lemma",
  "lexical_name": "serreDerivative_eq_smul",
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
  "slug": "serrederivative-eq-smul--9c7a77d69ff7d95d460aa17a",
  "source": {
    "blob": "50c5fac775e91d742b8b8f90a5b25a50fdf84761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 51,
    "path": "GRWTSK/NumberTheory/RamanujanFormula/Variantd29a244287e0c44f335376363f8c527e048b7321278edf98b25bc143470fdea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c7a77d69ff7d95d460aa17aba9a8eb82755b1eab8253502f563c0e513acb385",
  "verification": {
    "reference": "docs/verification/NumberTheory/RamanujanFormula/Variantd29a244287e0c44f335376363f8c527e048b7321278edf98b25bc143470fdea2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72de56c8-666a-915d-d177-31dd94367e7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma serreDerivative_eq_smul {k' : ℤ} {k l L : ℂ} {g F : ModularForm 𝒮ℒ k'}
    {f : ℍ → ℂ} (hF : F = serreDerivative k f)
    (hrank : Module.rank ℂ (ModularForm 𝒮ℒ k') = 1) (hf : MDiff f)
    (hl : Tendsto f atImInfty (𝓝 l)) (hg1 : Tendsto g atImInfty (𝓝 1))
    (hL : L = -(k * 12⁻¹ * l)) :
    serreDerivative k f = L • g := by
  have hg : g ≠ 0 := fun h ↦ one_ne_zero (tendsto_nhds_unique (h ▸ hg1) tendsto_const_nhds)
  obtain ⟨c, hc⟩ :=
    (finrank_eq_one_iff_of_nonzero' g hg).mp (Module.rank_eq_one_iff_finrank_eq_one.mp hrank) F
  have hfg : serreDerivative k f = c • g := hF ▸ congrArg DFunLike.coe hc.symm
  have hlim : Tendsto (c • ⇑g) atImInfty (𝓝 (-(k * 12⁻¹ * l))) := hfg ▸ by
    simpa using (isZeroAtImInfty_normalizedDerivOfComplex hf (hl.isBigO_one ℝ)).sub
      ((tendsto_E2_atImInfty.const_mul (k * 12⁻¹)).mul hl)
  rw [hfg, hL, ← tendsto_nhds_unique (hg1.const_mul c) hlim, mul_one]

/-- **Ramanujan's formula for `E₄`**: `∂₄ E₄ = -E₆ / 3`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/RamanujanFormula/Variantd29a244287e0c44f335376363f8c527e048b7321278edf98b25bc143470fdea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/RamanujanFormula/Variantd29a244287e0c44f335376363f8c527e048b7321278edf98b25bc143470fdea2.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50c5fac775e91d742b8b8f90a5b25a50fdf84761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
