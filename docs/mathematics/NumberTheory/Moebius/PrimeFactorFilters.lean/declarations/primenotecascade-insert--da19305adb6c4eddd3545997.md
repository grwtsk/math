# primeNoteCascade_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07499e43-bb68-341c-c3bb-ba6e21600066",
  "kind": "theorem",
  "lexical_name": "primeNoteCascade_insert",
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
  "slug": "primenotecascade-insert--da19305adb6c4eddd3545997",
  "source": {
    "blob": "93f40c8579ed255545301f8961f6e29a2d12cb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da19305adb6c4eddd354599703f08cf4cb5e54a9ac001f2f234bfdaab955f482",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFactorFilters.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07499e43-bb68-341c-c3bb-ba6e21600066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeNoteCascade_insert {P : Finset ℕ} {p : ℕ}
    (hP : ∀ q ∈ P, q.Prime) (hp : p.Prime) (hpP : p ∉ P) :
    primeNoteCascade (insert p P) = primeNoteFilter p (primeNoteCascade P) := by
  funext u
  rw [primeNoteCascade, Finset.sum_powerset_insert hpP]
  have hterms : ∀ S ∈ P.powerset,
      moebiusReal (∏ q ∈ insert p S, q) * pickupResponse (∏ q ∈ insert p S, q) u =
      -(Real.sqrt p)⁻¹ * causalShift (Real.log p)
        (fun v ↦ moebiusReal (∏ q ∈ S, q) * pickupResponse (∏ q ∈ S, q) v) u := by
    intro S hS
    have hsub := Finset.mem_powerset.mp hS
    have hpS : p ∉ S := fun h ↦ hpP (hsub h)
    have hcop : p.Coprime (∏ q ∈ S, q) := Nat.coprime_prod_right_iff.mpr fun q hq ↦
      hp.coprime_iff_not_dvd.mpr fun hd ↦
        hpS (by simpa [((hP q (hsub hq)).dvd_iff_eq hp.ne_one).mp hd] using hq)
    rw [Finset.prod_insert hpS, pickupResponse_mul hp.one_le
      (prime_product_pos fun q hq ↦ hP q (hsub hq))]
    have hm : moebiusReal (p * ∏ q ∈ S, q) = -moebiusReal (∏ q ∈ S, q) := by
      simp [moebiusReal, ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
        ArithmeticFunction.moebius_apply_prime hp]
    rw [hm]
    by_cases h : Real.log (p : ℝ) ≤ u
    · simp only [causalShift, if_pos h]
      ring
    · simp [causalShift, h]
  rw [Finset.sum_congr rfl hterms, ← Finset.mul_sum]
  unfold primeNoteFilter primeNoteCascade
  by_cases h : Real.log (p : ℝ) ≤ u
  · simp only [causalShift, if_pos h]
    ring
  · simp [causalShift, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFactorFilters.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f40c8579ed255545301f8961f6e29a2d12cb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
