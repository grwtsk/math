# exists_eventually_r_le_const_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23719d1a-594a-fb39-c105-aa30cc84e0d4",
  "kind": "lemma",
  "lexical_name": "exists_eventually_r_le_const_mul",
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
  "slug": "exists-eventually-r-le-const-mul--94adaa6bcb48e545d7f92f96",
  "source": {
    "blob": "470ce2f8aaada3e7158edb7db4dcdb2e3543282e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94adaa6bcb48e545d7f92f96dd5ed06d1945bda17461292694f18448451d1d57",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23719d1a-594a-fb39-c105-aa30cc84e0d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_eventually_r_le_const_mul :
    ∃ c ∈ Set.Ioo (0 : ℝ) 1, ∀ᶠ (n : ℕ) in atTop, ∀ i, r i n ≤ c * n := by
  let c := b (max_bi b) + (1 - b (max_bi b)) / 2
  have h_max_bi_pos : 0 < b (max_bi b) := R.b_pos _
  have h_max_bi_lt_one : 0 < 1 - b (max_bi b) := by
    have : b (max_bi b) < 1 := R.b_lt_one _
    linarith
  have hc_pos : 0 < c := by positivity
  have h₁ : 0 < (1 - b (max_bi b)) / 2 := by positivity
  have hc_lt_one : c < 1 :=
    calc b (max_bi b) + (1 - b (max_bi b)) / 2 = b (max_bi b) * (1 / 2) + 1 / 2 := by ring
                                             _ < 1 * (1 / 2) + 1 / 2 := by
                                                  gcongr
                                                  exact R.b_lt_one _
                                             _ = 1 := by norm_num
  refine ⟨c, ⟨hc_pos, hc_lt_one⟩, ?_⟩
  have hlo := isLittleO_self_div_log_id
  rw [Asymptotics.isLittleO_iff] at hlo
  have hlo' := hlo h₁
  filter_upwards [hlo', R.eventually_r_le_b] with n hn hn'
  intro i
  rw [Real.norm_of_nonneg (by positivity)] at hn
  simp only [Real.norm_of_nonneg (by positivity : 0 ≤ (n : ℝ))] at hn
  calc r i n ≤ b i * n + n / log n ^ 2 := by exact hn' i
             _ ≤ b i * n + (1 - b (max_bi b)) / 2 * n := by gcongr
             _ = (b i + (1 - b (max_bi b)) / 2) * n := by ring
             _ ≤ (b (max_bi b) + (1 - b (max_bi b)) / 2) * n := by gcongr; exact max_bi_le _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470ce2f8aaada3e7158edb7db4dcdb2e3543282e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
