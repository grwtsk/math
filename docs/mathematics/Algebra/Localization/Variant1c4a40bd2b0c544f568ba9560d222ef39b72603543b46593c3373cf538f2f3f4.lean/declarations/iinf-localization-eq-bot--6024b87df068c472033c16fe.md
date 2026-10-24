# iInf_localization_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d1859a7-a0cb-6a10-d4b8-222926213ef8",
  "kind": "theorem",
  "lexical_name": "iInf_localization_eq_bot",
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
  "slug": "iinf-localization-eq-bot--6024b87df068c472033c16fe",
  "source": {
    "blob": "80d58cf12b750ae32b0506e7059aa90ffc482d68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 43,
    "path": "GRWTSK/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6024b87df068c472033c16febcebb4ea864aad9f5f753e8fe030ffbddc0e4b53",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d1859a7-a0cb-6a10-d4b8-222926213ef8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInf_localization_eq_bot : (⨅ v : MaximalSpectrum R,
    Localization.subalgebra.ofField K _ v.asIdeal.primeCompl_le_nonZeroDivisors) = ⊥ := by
  ext x
  rw [Algebra.mem_bot, Algebra.mem_iInf]
  constructor
  · contrapose
    intro hrange hlocal
    let denom : Ideal R := (1 : Submodule R K).comap (LinearMap.toSpanSingleton R K x)
    have hdenom : (1 : R) ∉ denom := by simpa [denom] using hrange
    rcases denom.exists_le_maximal (denom.ne_top_iff_one.mpr hdenom) with ⟨max, hmax, hle⟩
    rcases hlocal ⟨max, hmax⟩ with ⟨n, d, hd, rfl⟩
    exact hd (hle ⟨n, by simp [Algebra.smul_def, mul_left_comm, mul_inv_cancel₀ <|
      (map_ne_zero_iff _ <| IsFractionRing.injective R K).mpr fun h ↦ hd (h ▸ max.zero_mem :)]⟩)
  · rintro ⟨y, rfl⟩ ⟨v, hv⟩
    exact ⟨y, 1, v.ne_top_iff_one.mp hv.ne_top, by rw [map_one, inv_one, mul_one]⟩

end MaximalSpectrum

namespace PrimeSpectrum

variable (R : Type*)
variable [CommRing R] [IsDomain R] (K : Type*) [Field K] [Algebra R K] [IsFractionRing R K]

/-- An integral domain is equal to the intersection of its localizations at all its prime ideals
viewed as subalgebras of its field of fractions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d58cf12b750ae32b0506e7059aa90ffc482d68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
