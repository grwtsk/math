# finite_floor_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f38169a-b562-22b5-0b20-fb32ae969adb",
  "kind": "theorem",
  "lexical_name": "finite_floor_prefix",
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
  "slug": "finite-floor-prefix--b0f170db8ea19e5e8fa73194",
  "source": {
    "blob": "876b7c7206959c40f1ed37a883f92e5d17aeb272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 169,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0f170db8ea19e5e8fa73194264980eb65066c3704860159c2f1fcb8b73d0df4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f38169a-b562-22b5-0b20-fb32ae969adb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_floor_prefix (X : ℕ) (x : ℝ) (a : ℕ → ℝ) :
    (∑ d ∈ Icc 1 X, a d * (⌊x / (d : ℝ)⌋₊ : ℝ)) =
      ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ d ∈ n.divisors.filter (fun d => d ≤ X), a d := by
  have hf (n : ℕ) (hn : n ∈ Icc 1 ⌊x⌋₊) :
      (Icc 1 X).filter (fun d => d ∣ n) = n.divisors.filter (fun d => d ≤ X) := by
    have hn0 : n ≠ 0 := by have := (mem_Icc.mp hn).1; omega
    ext d
    simp only [mem_filter, mem_Icc, Nat.mem_divisors]
    constructor
    · rintro ⟨hd, hdn⟩
      exact ⟨⟨hdn, hn0⟩, hd.2⟩
    · rintro ⟨⟨hdn, _⟩, hdX⟩
      have hd0 : 0 < d := Nat.pos_of_dvd_of_pos hdn (by omega)
      exact ⟨⟨hd0, hdX⟩, hdn⟩
  calc
    _ = ∑ d ∈ Icc 1 X, ∑ n ∈ Icc 1 ⌊x⌋₊, if d ∣ n then a d else 0 := by
      apply sum_congr rfl
      intro d hd
      rw [Nat.floor_div_natCast, ← sum_filter]
      simp only [sum_const, nsmul_eq_mul, CoprimeCount.positive_multiples_card]
      ring
    _ = ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ d ∈ Icc 1 X, if d ∣ n then a d else 0 := sum_comm
    _ = _ := by
      apply sum_congr rfl
      intro n hn
      rw [← sum_filter, hf n hn]

/-- The actual corrected coefficient floors retain the complete post-cutoff divisor prefix
and its endpoint compensation, at every real argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `876b7c7206959c40f1ed37a883f92e5d17aeb272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
