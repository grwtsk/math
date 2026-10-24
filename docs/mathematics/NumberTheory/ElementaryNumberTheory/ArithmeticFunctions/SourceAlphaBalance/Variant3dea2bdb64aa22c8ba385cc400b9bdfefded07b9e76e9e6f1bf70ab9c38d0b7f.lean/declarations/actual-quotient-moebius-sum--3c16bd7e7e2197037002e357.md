# actual_quotient_moebius_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60036ad3-a45d-3b71-823f-666a3fb33f4b",
  "kind": "theorem",
  "lexical_name": "actual_quotient_moebius_sum",
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
  "slug": "actual-quotient-moebius-sum--3c16bd7e7e2197037002e357",
  "source": {
    "blob": "384898f884e2ef5b2cb86e1ba4f40f98e8ff22fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 16,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAlphaBalance/Variant3dea2bdb64aa22c8ba385cc400b9bdfefded07b9e76e9e6f1bf70ab9c38d0b7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c16bd7e7e2197037002e3573f6458ca7be44b3a5b233008692eaa6554d6c594",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAlphaBalance/Variant3dea2bdb64aa22c8ba385cc400b9bdfefded07b9e76e9e6f1bf70ab9c38d0b7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60036ad3-a45d-3b71-823f-666a3fb33f4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_quotient_moebius_sum (U : ℕ) (hU : 1 ≤ U) :
    (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U / d : ℕ) : ℝ)) = 1 := by
  classical
  have hrow (n : ℕ) (hn : n ∈ Finset.Ioc 0 U) :
      (∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0) =
        if n = 1 then 1 else 0 := by
    have hn0 : 0 < n := (Finset.mem_Ioc.mp hn).1
    have hnU : n ≤ U := (Finset.mem_Ioc.mp hn).2
    have hb := beta_zero_of_le U n hnU
    rw [beta_eq_delta_sub_short, short_divisor_sum_eq_indicator U n hn0] at hb
    linarith only [hb]
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, ∑ n ∈ Finset.Ioc 0 U,
        if d ∣ n then (moebius d : ℝ) else 0 := by
      apply Finset.sum_congr rfl
      intro d _
      rw [← multiples_prefix_sum U d, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      split_ifs <;> simp
    _ = ∑ n ∈ Finset.Ioc 0 U, ∑ d ∈ Finset.Icc 1 U,
        if d ∣ n then (moebius d : ℝ) else 0 := Finset.sum_comm
    _ = ∑ n ∈ Finset.Ioc 0 U, if n = 1 then (1 : ℝ) else 0 :=
      Finset.sum_congr rfl hrow
    _ = 1 := by simp [Finset.mem_Ioc, hU]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAlphaBalance/Variant3dea2bdb64aa22c8ba385cc400b9bdfefded07b9e76e9e6f1bf70ab9c38d0b7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAlphaBalance/Variant3dea2bdb64aa22c8ba385cc400b9bdfefded07b9e76e9e6f1bf70ab9c38d0b7f.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `384898f884e2ef5b2cb86e1ba4f40f98e8ff22fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
