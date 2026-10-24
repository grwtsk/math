# sum_finiteFilter_eq_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd4daab0-a441-1565-7f58-4bd64a030972",
  "kind": "theorem",
  "lexical_name": "sum_finiteFilter_eq_coprime",
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
  "slug": "sum-finitefilter-eq-coprime--cbf247d0d4cbb19595c82be7",
  "source": {
    "blob": "465e59296192cb9b3d4a93180454e888fcbd1803",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 181,
    "path": "GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbf247d0d4cbb19595c82be709a37e2f79ff8bdce74f227215bad147fdd02b5d",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd4daab0-a441-1565-7f58-4bd64a030972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_finiteFilter_eq_coprime (v : ℕ → ℝ) (N : ℕ)
    (hv : ∀ n, N < n → v n = 0) :
    (∑ m ∈ Finset.Icc 1 N, finiteFilter v m) =
      ∑ m ∈ Finset.Icc 1 N, if Nat.Coprime m 6 then v m else 0 := by
  classical
  unfold finiteFilter
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, Finset.sum_sub_distrib,
    sum_supported_dilate v N 2 (by norm_num) hv,
    sum_supported_dilate v N 3 (by norm_num) hv,
    sum_supported_dilate v N 6 (by norm_num) hv,
    ← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  have hc : Nat.Coprime m 6 ↔ ¬2 ∣ m ∧ ¬3 ∣ m := by
    rw [show 6 = 2 * 3 from rfl, Nat.coprime_mul_iff_right]
    rw [(Nat.coprime_comm (n := m) (m := 2)), Nat.prime_two.coprime_iff_not_dvd,
      (Nat.coprime_comm (n := m) (m := 3)), Nat.prime_three.coprime_iff_not_dvd]
  have h6 : 6 ∣ m ↔ 2 ∣ m ∧ 3 ∣ m := by
    constructor
    · intro h; exact ⟨dvd_trans (by decide : 2 ∣ 6) h, dvd_trans (by decide : 3 ∣ 6) h⟩
    · rintro ⟨h2, h3⟩
      exact (show Nat.Coprime 2 3 by decide).mul_dvd_of_dvd_of_dvd h2 h3
  by_cases h2 : 2 ∣ m <;> by_cases h3 : 3 ∣ m <;>
    simp only [hc, h6, h2, h3, and_self, and_false, false_and,
      not_true_eq_false, not_false_eq_true, if_true, if_false] <;> ring

/-- Closed positive inventory is a unit endpoint followed by the original source atoms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465e59296192cb9b3d4a93180454e888fcbd1803` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
