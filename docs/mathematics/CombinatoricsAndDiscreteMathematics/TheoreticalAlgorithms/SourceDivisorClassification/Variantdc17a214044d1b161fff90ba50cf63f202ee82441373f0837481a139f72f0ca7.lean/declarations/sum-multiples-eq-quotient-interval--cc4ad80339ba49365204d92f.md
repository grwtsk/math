# sum_multiples_eq_quotient_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2b85e5b-a547-9290-214d-896b0d312945",
  "kind": "theorem",
  "lexical_name": "sum_multiples_eq_quotient_interval",
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
  "slug": "sum-multiples-eq-quotient-interval--cc4ad80339ba49365204d92f",
  "source": {
    "blob": "50e7e23496dd259278a3df5e9cdff8cf57c1cba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantdc17a214044d1b161fff90ba50cf63f202ee82441373f0837481a139f72f0ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc4ad80339ba49365204d92f43fa801a140f47cb36a05f75d159fba3ecdf9b77",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantdc17a214044d1b161fff90ba50cf63f202ee82441373f0837481a139f72f0ca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2b85e5b-a547-9290-214d-896b0d312945`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_multiples_eq_quotient_interval (U N d : ℕ) (hd : 0 < d) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Ioc U N, if d ∣ n then f n else 0) =
      ∑ j ∈ Finset.Icc (U / d + 1) (N / d), f (d * j) := by
  classical
  rw [← Finset.sum_filter]
  symm
  refine Finset.sum_bij (fun j _ => d * j) ?_ ?_ ?_ ?_
  · intro j hj
    obtain ⟨hjU, hjN⟩ := Finset.mem_Icc.mp hj
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_Ioc.mpr ⟨?_, ?_⟩, dvd_mul_right d j⟩
    · have h := (Nat.div_lt_iff_lt_mul hd).mp (by omega : U / d < j)
      simpa only [Nat.mul_comm] using h
    · have h := (Nat.le_div_iff_mul_le hd).mp hjN
      simpa only [Nat.mul_comm] using h
  · intro i hi j hj he
    exact Nat.eq_of_mul_eq_mul_left hd he
  · intro n hn
    obtain ⟨hnI, hdn⟩ := Finset.mem_filter.mp hn
    obtain ⟨hnU, hnN⟩ := Finset.mem_Ioc.mp hnI
    refine ⟨n / d, ?_, Nat.mul_div_cancel' hdn⟩
    apply Finset.mem_Icc.mpr
    constructor
    · have he := Nat.mul_div_cancel' hdn
      have h : U / d < n / d := (Nat.div_lt_iff_lt_mul hd).mpr (by
        rw [Nat.mul_comm, he]
        exact hnU)
      omega
    · exact Nat.div_le_div_right hnN
  · intro j hj
    rfl

/-- The coefficient-one literal reflected long row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantdc17a214044d1b161fff90ba50cf63f202ee82441373f0837481a139f72f0ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantdc17a214044d1b161fff90ba50cf63f202ee82441373f0837481a139f72f0ca7.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50e7e23496dd259278a3df5e9cdff8cf57c1cba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
