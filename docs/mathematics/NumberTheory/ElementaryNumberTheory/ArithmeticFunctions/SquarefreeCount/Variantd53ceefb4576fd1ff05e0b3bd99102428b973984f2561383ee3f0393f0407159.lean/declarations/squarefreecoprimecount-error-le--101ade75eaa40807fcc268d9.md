# squarefreeCoprimeCount_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc6bafc7cf55e1aa42f97a83a9a536d964de1a27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6da02ac-74cb-bbae-a39f-1658561a8188",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:074e40cd-5011-2a67-b24a-12512ef11bc4",
  "kind": "theorem",
  "lexical_name": "squarefreeCoprimeCount_error_le",
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
  "slug": "squarefreecoprimecount-error-le--101ade75eaa40807fcc268d9",
  "source": {
    "blob": "dc6bafc7cf55e1aa42f97a83a9a536d964de1a27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 233,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:101ade75eaa40807fcc268d9d645df088334aaa18d0673daa6f092965112ec35",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:074e40cd-5011-2a67-b24a-12512ef11bc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefreeCoprimeCount_error_le (h j : ℕ) (hh : 1 ≤ h) :
    |squarefreeCoprimeCount h j -
      (j : ℝ) * finiteSquarefreeDensity h (Nat.sqrt j)| ≤
      (h.divisors.card : ℝ) * (Nat.sqrt j : ℝ) := by
  rw [squarefreeCoprimeCount_eq, finiteSquarefreeDensity, mul_sum, mul_sum,
    ← sum_sub_distrib]
  have hterm (d : ℕ) (hd : d ∈ Icc 1 (Nat.sqrt j)) :
      |(ArithmeticFunction.moebius d : ℝ) *
          (if Nat.Coprime d h then (coprimeCount h (j / d^2) : ℝ) else 0) -
        (j : ℝ) * (coprimeDensity h *
          (if Nat.Coprime d h then (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0))| ≤
      (h.divisors.card : ℝ) := by
    by_cases hdh : Nat.Coprime d h
    · rw [if_pos hdh, if_pos hdh]
      have hd1 := (mem_Icc.mp hd).1
      have hc := coprimeCount_div_error h j (d^2) hh (by nlinarith)
      simp only [Nat.cast_pow] at hc
      have heq : (ArithmeticFunction.moebius d : ℝ) * (coprimeCount h (j / d^2) : ℝ) -
          (j : ℝ) * (coprimeDensity h * ((ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2)) =
          (ArithmeticFunction.moebius d : ℝ) *
            ((coprimeCount h (j / d^2) : ℝ) - coprimeDensity h * (j : ℝ) / (d : ℝ)^2) := by
        ring
      rw [heq, abs_mul]
      have hmu : |(ArithmeticFunction.moebius d : ℝ)| ≤ 1 := by
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      simpa only [one_mul] using mul_le_mul hmu hc (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
    · rw [if_neg hdh, if_neg hdh]
      simp only [mul_zero, sub_self, abs_zero]
      exact Nat.cast_nonneg _
  calc
    _ ≤ ∑ d ∈ Icc 1 (Nat.sqrt j),
        |(ArithmeticFunction.moebius d : ℝ) *
            (if Nat.Coprime d h then (coprimeCount h (j / d^2) : ℝ) else 0) -
          (j : ℝ) * (coprimeDensity h *
            (if Nat.Coprime d h then (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0))| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ _d ∈ Icc 1 (Nat.sqrt j), (h.divisors.card : ℝ) := sum_le_sum hterm
    _ = _ := by simp [mul_comm]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc6bafc7cf55e1aa42f97a83a9a536d964de1a27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
