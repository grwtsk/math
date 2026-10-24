# MeromorphicAt.meromorphicTrailingCoeffAt_add_eq_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9868002f-becb-f20d-7e67-f5867d0e0aae",
  "kind": "theorem",
  "lexical_name": "MeromorphicAt.meromorphicTrailingCoeffAt_add_eq_add",
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
  "slug": "meromorphicat-meromorphictrailingcoeffat-add-eq-add--691d638c51c205b4e65e348f",
  "source": {
    "blob": "83ddc065af2aa54cff11436693db6cdad84a4928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 306,
    "path": "GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:691d638c51c205b4e65e348f52c79b79ab1cf1223649b23477e9992d406282e4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9868002f-becb-f20d-7e67-f5867d0e0aae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicAt.meromorphicTrailingCoeffAt_add_eq_add {f₁ f₂ : 𝕜 → E}
    (hf₁ : MeromorphicAt f₁ x) (hf₂ : MeromorphicAt f₂ x)
    (h₁ : meromorphicOrderAt f₁ x = meromorphicOrderAt f₂ x)
    (h₂ : meromorphicTrailingCoeffAt f₁ x + meromorphicTrailingCoeffAt f₂ x ≠ 0) :
    meromorphicTrailingCoeffAt (f₁ + f₂) x
      = meromorphicTrailingCoeffAt f₁ x + meromorphicTrailingCoeffAt f₂ x := by
  -- Trivial case: f₁ vanishes locally around x
  by_cases h₁f₁ : meromorphicOrderAt f₁ x = ⊤
  · rw [meromorphicTrailingCoeffAt_of_order_eq_top h₁f₁, zero_add]
    apply meromorphicTrailingCoeffAt_congr_nhdsNE
    filter_upwards [meromorphicOrderAt_eq_top_iff.1 h₁f₁]
    simp
  -- General case
  lift meromorphicOrderAt f₁ x to ℤ using (by lia) with n₁ hn₁
  obtain ⟨g₁, h₁g₁, h₂g₁, h₃g₁⟩ := (meromorphicOrderAt_eq_int_iff hf₁).1 hn₁.symm
  lift meromorphicOrderAt f₂ x to ℤ using (by lia) with n₂ hn₂
  obtain ⟨g₂, h₁g₂, h₂g₂, h₃g₂⟩ := (meromorphicOrderAt_eq_int_iff hf₂).1 hn₂.symm
  rw [WithTop.coe_eq_coe, h₁g₁.meromorphicTrailingCoeffAt_of_ne_zero_of_eq_nhdsNE h₂g₁ h₃g₁,
    h₁g₂.meromorphicTrailingCoeffAt_of_ne_zero_of_eq_nhdsNE h₂g₂ h₃g₂] at *
  have τ₀ : ∀ᶠ z in 𝓝[≠] x, (f₁ + f₂) z = (z - x) ^ n₁ • (g₁ + g₂) z := by
    filter_upwards [h₃g₁, h₃g₂, self_mem_nhdsWithin] with z h₁z h₂z h₃z
    simp_all
  simp [AnalyticAt.meromorphicTrailingCoeffAt_of_ne_zero_of_eq_nhdsNE (by fun_prop)
    (by simp_all) τ₀]

/--
If `f₁` and `f₂` have equal order at `x` and if their trailing coefficients do not cancel, then the
trailing coefficient of `f₁ + f₂` at `x` is the sum of the trailing coefficients.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ddc065af2aa54cff11436693db6cdad84a4928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
