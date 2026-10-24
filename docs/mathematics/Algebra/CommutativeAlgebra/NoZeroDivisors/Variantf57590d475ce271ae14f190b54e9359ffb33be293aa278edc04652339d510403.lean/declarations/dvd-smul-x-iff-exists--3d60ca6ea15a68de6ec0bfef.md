# dvd_smul_X_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32d96ec2-bcdb-cb12-0a90-20a1bfdda96b",
  "kind": "theorem",
  "lexical_name": "dvd_smul_X_iff_exists",
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
  "slug": "dvd-smul-x-iff-exists--3d60ca6ea15a68de6ec0bfef",
  "source": {
    "blob": "2e96814e8968ba8cdbe06c602423d960cbc4b298",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 173,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NoZeroDivisors/Variantf57590d475ce271ae14f190b54e9359ffb33be293aa278edc04652339d510403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d60ca6ea15a68de6ec0bfef09edf7b50c2856e6f115df888513b67afaed4d9a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NoZeroDivisors/Variantf57590d475ce271ae14f190b54e9359ffb33be293aa278edc04652339d510403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32d96ec2-bcdb-cb12-0a90-20a1bfdda96b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_smul_X_iff_exists {i : σ} {r : R} (hr : r ≠ 0) :
    p ∣ r • X i ↔ ∃ s, s ∣ r ∧ (p = C s ∨ p = s • X i) := by
  rw [X, smul_monomial, smul_eq_mul, mul_one, dvd_monomial_iff_exists hr, exists_comm]
  apply exists_congr
  intro b
  constructor
  · rintro ⟨m, hmn, hb, rfl⟩
    simp only [hb, true_and]
    suffices m = 0 ∨ m = Finsupp.single i 1 by
      apply this.imp <;> simp +contextual [smul_monomial, smul_eq_mul, mul_one]
    by_cases hm : m i = 0
    · left
      ext j
      simp only [Finsupp.coe_zero, Pi.zero_apply, ← Nat.le_zero]
      by_cases hj : j = i
      · rw [← hm, hj]
      · exact (hmn j).trans (Finsupp.single_eq_of_ne hj).le
    · right
      ext j
      apply le_antisymm (hmn j)
      by_cases hj : j = i
      · simpa [hj, Nat.one_le_iff_ne_zero]
      · simp [Finsupp.single_eq_of_ne hj]
  · rintro ⟨hb, hp | hp⟩
    · use 0; simp [hb, hp]
    · use Finsupp.single i 1, le_rfl, hb
      simp [hp, smul_monomial]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NoZeroDivisors/Variantf57590d475ce271ae14f190b54e9359ffb33be293aa278edc04652339d510403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NoZeroDivisors/Variantf57590d475ce271ae14f190b54e9359ffb33be293aa278edc04652339d510403.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e96814e8968ba8cdbe06c602423d960cbc4b298` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
