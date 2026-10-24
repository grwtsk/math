# rows_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8e59855-5c3b-f843-0e03-10d3d874d228",
  "kind": "lemma",
  "lexical_name": "rows_sound",
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
  "slug": "rows-sound--8da002e0569ad3e14326e6bf",
  "source": {
    "blob": "ea10c6380046ea1732712e15e13d15696411e5d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Varianta8b76e29121631b0c87a70e315046c8290a7055d18f1de63b361b5aa78897d14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8da002e0569ad3e14326e6bf523f9cf14af25d240b7d3393957ce9397008f4d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Varianta8b76e29121631b0c87a70e315046c8290a7055d18f1de63b361b5aa78897d14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8e59855-5c3b-f843-0e03-10d3d874d228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rows_sound {N K tn td : ℕ} (hK : 0 < K) (htd : 0 < td) :
    ∀ (l : List (ℤ × ℤ)) (j : ℕ), rowsOK N K tn td j l = true → EnclOK K S j l →
      ∀ j' : ℕ, j < j' → j' ≤ j + l.length → j' < N → |(N : ℝ) * S j' - j'| ≤ (tn : ℝ) / td := by
  intro l
  induction l with
  | nil => intro j _ _ j' h1 h2 _; simp at h2; omega
  | cons e l ih =>
    intro j hok hE j' h1 h2 h3
    simp only [rowsOK, Bool.and_eq_true, Bool.or_eq_true, decide_eq_true_eq] at hok
    obtain ⟨hhead, htail⟩ := hok
    obtain ⟨⟨he1, he2⟩, hE'⟩ := hE
    rcases Nat.lt_or_ge (j + 1) j' with hlt | hge
    · exact ih (j + 1) htail hE' j' hlt (by simp at h2 ⊢; omega) h3
    · -- j' = j + 1
      have hj' : j' = j + 1 := by omega
      subst hj'
      rcases hhead with hbad | ⟨hlo, hhi⟩
      · omega
      · have hKr : (0 : ℝ) < K := by exact_mod_cast hK
        have htdr : (0 : ℝ) < td := by exact_mod_cast htd
        -- cast the integer facts
        have hlo' : |(N : ℝ) * (e.1 : ℝ) - ((j : ℝ) + 1) * K| * td ≤ tn * K := by exact_mod_cast hlo
        have hhi' : |(N : ℝ) * (e.2 : ℝ) - ((j : ℝ) + 1) * K| * td ≤ tn * K := by exact_mod_cast hhi
        rw [abs_le]
        rw [← le_div_iff₀ htdr] at hlo' hhi'
        rw [abs_le] at hlo' hhi'
        have hN0 : (0 : ℝ) ≤ N := Nat.cast_nonneg N
        push_cast
        constructor
        · -- lower: N·S ≥ N·e1/K
          have : (N : ℝ) * (e.1 : ℝ) ≤ (N : ℝ) * (K * S (j + 1)) := mul_le_mul_of_nonneg_left he1 hN0
          have h2' : ((N : ℝ) * e.1 - ((j : ℝ) + 1) * K) / K ≤ (N : ℝ) * S (j + 1) - ((j : ℝ) + 1) := by
            rw [div_le_iff₀ hKr]; nlinarith
          have h3' : -((tn : ℝ) / td) ≤ ((N : ℝ) * e.1 - ((j : ℝ) + 1) * K) / K := by
            rw [le_div_iff₀ hKr]; have := hlo'.1
            have e0 : -(↑tn * ↑K / ↑td) = -(↑tn / ↑td) * (K:ℝ) := by ring
            linarith [e0]
          linarith
        · have : (N : ℝ) * (K * S (j + 1)) ≤ (N : ℝ) * (e.2 : ℝ) := mul_le_mul_of_nonneg_left he2 hN0
          have h2' : (N : ℝ) * S (j + 1) - ((j : ℝ) + 1) ≤ ((N : ℝ) * e.2 - ((j : ℝ) + 1) * K) / K := by
            rw [le_div_iff₀ hKr]; nlinarith
          have h3' : ((N : ℝ) * e.2 - ((j : ℝ) + 1) * K) / K ≤ (tn : ℝ) / td := by
            rw [div_le_iff₀ hKr]; have := hhi'.2
            have e0 : (↑tn * ↑K / ↑td) = (↑tn / ↑td) * (K:ℝ) := by ring
            linarith [e0]
          linarith

/-- the enclosure sums enclose K·(S(j+1) + … + S(j+|l|)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Varianta8b76e29121631b0c87a70e315046c8290a7055d18f1de63b361b5aa78897d14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Varianta8b76e29121631b0c87a70e315046c8290a7055d18f1de63b361b5aa78897d14.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea10c6380046ea1732712e15e13d15696411e5d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
