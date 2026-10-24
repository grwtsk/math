# sum_Ico_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a665dbc38aeb4dcc149b60e7abdb75f97195a4b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 358,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:897218fe-f9b7-3499-3453-4b1563a5ee5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:218e82b3-a182-3f5b-db4b-0ae0d68c2914",
  "kind": "theorem",
  "lexical_name": "sum_Ico_pow",
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
  "slug": "sum-ico-pow--b8586132eafb59da8fe7983d",
  "source": {
    "blob": "a665dbc38aeb4dcc149b60e7abdb75f97195a4b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 358,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8586132eafb59da8fe7983d15c955d74bff1a83585b85efc84e9fa5c86fe5f0",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:218e82b3-a182-3f5b-db4b-0ae0d68c2914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Ico_pow (n p : ℕ) :
    (∑ k ∈ Ico 1 (n + 1), (k : ℚ) ^ p) =
      ∑ i ∈ range (p + 1), bernoulli' i * (p + 1).choose i * (n : ℚ) ^ (p + 1 - i) / (p + 1) := by
  rw [← Nat.cast_succ]
  -- dispose of the trivial case
  cases p with | zero => simp | succ p =>
  let f i := bernoulli i * p.succ.succ.choose i * (n : ℚ) ^ (p.succ.succ - i) / p.succ.succ
  let f' i := bernoulli' i * p.succ.succ.choose i * (n : ℚ) ^ (p.succ.succ - i) / p.succ.succ
  suffices (∑ k ∈ Ico 1 n.succ, (k : ℚ) ^ p.succ) = ∑ i ∈ range p.succ.succ, f' i by convert!
    this
  -- prove some algebraic facts that will make things easier for us later on
  have hle := Nat.le_add_left 1 n
  have hne : (p + 1 + 1 : ℚ) ≠ 0 := by norm_cast
  have h1 : ∀ r : ℚ, r * (p + 1 + 1) * (n : ℚ) ^ p.succ / (p + 1 + 1 : ℚ) = r * (n : ℚ) ^ p.succ :=
      fun r => by rw [mul_div_right_comm, mul_div_cancel_right₀ _ hne]
  have h2 : f 1 + (n : ℚ) ^ p.succ = 1 / 2 * (n : ℚ) ^ p.succ := by
    simp_rw [f, bernoulli_one, choose_one_right, succ_sub_succ_eq_sub, cast_succ, tsub_zero, h1]
    ring
  have :
    (∑ i ∈ range p, bernoulli (i + 2) * (p + 2).choose (i + 2) * (n : ℚ) ^ (p - i) / ↑(p + 2)) =
      ∑ i ∈ range p, bernoulli' (i + 2) * (p + 2).choose (i + 2) * (n : ℚ) ^ (p - i) / ↑(p + 2) :=
    sum_congr rfl fun i _ => by rw [bernoulli_eq_bernoulli'_of_ne_one (succ_succ_ne_one i)]
  calc
    (-- replace sum over `Ico` with sum over `range` and simplify
        ∑ k ∈ Ico 1 n.succ, (k : ℚ) ^ p.succ)
    _ = ∑ k ∈ range n.succ, (k : ℚ) ^ p.succ := by simp [sum_Ico_eq_sub _ hle]
    -- extract the last term of the sum
    _ = (∑ k ∈ range n, (k : ℚ) ^ p.succ) + (n : ℚ) ^ p.succ := by rw [sum_range_succ]
    -- apply the key lemma, `sum_range_pow`
    _ = (∑ i ∈ range p.succ.succ, f i) + (n : ℚ) ^ p.succ := by simp [f, sum_range_pow]
    -- extract the first two terms of the sum
    _ = (∑ i ∈ range p, f i.succ.succ) + f 1 + f 0 + (n : ℚ) ^ p.succ := by
      simp_rw [sum_range_succ']
    _ = (∑ i ∈ range p, f i.succ.succ) + (f 1 + (n : ℚ) ^ p.succ) + f 0 := by ring
    _ = (∑ i ∈ range p, f i.succ.succ) + 1 / 2 * (n : ℚ) ^ p.succ + f 0 := by rw [h2]
    -- convert from `bernoulli` to `bernoulli'`
    _ = (∑ i ∈ range p, f' i.succ.succ) + f' 1 + f' 0 := by
      simpa [f, f', h1, fun i => show i + 2 = i + 1 + 1 from rfl]
    -- rejoin the first two terms of the sum
    _ = ∑ i ∈ range p.succ.succ, f' i := by simp_rw [sum_range_succ']

end Faulhaber

section vonStaudtClausen

/-!
### The von Staudt-Clausen Theorem

Here we formalize Rado's proof of von Staudt-Clausen's theorem, which states that for any $k \ge 0$,
$$B_{2k} + \sum_{p \text{ prime}, (p - 1) \mid 2k} \frac{1}{p} \in \mathbb{Z}.$$
Rado's proof is based on Faulhaber's theorem and induction on $k$.
-/

namespace Bernoulli

/- Indicator function that is `1` if `(p - 1) ∣ k` and `0` otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a665dbc38aeb4dcc149b60e7abdb75f97195a4b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
