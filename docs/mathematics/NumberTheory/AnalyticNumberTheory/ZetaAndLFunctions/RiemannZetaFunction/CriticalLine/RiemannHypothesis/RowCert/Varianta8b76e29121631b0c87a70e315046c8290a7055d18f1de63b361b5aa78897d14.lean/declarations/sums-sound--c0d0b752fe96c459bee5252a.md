# sums_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fcd4658-b798-ed43-5034-e3bbc3481f5e",
  "kind": "lemma",
  "lexical_name": "sums_sound",
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
  "slug": "sums-sound--c0d0b752fe96c459bee5252a",
  "source": {
    "blob": "ea10c6380046ea1732712e15e13d15696411e5d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Varianta8b76e29121631b0c87a70e315046c8290a7055d18f1de63b361b5aa78897d14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0d0b752fe96c459bee5252ae9ca9bc6327e4d5a6a843cc3d8e35e070429a486",
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

Occurrence: `result:6fcd4658-b798-ed43-5034-e3bbc3481f5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sums_sound {K : ℕ} :
    ∀ (l : List (ℤ × ℤ)) (j : ℕ), EnclOK K S j l →
      (sumLo l : ℝ) ≤ K * ∑ i ∈ Finset.range l.length, S (j + i + 1) ∧
      (K : ℝ) * ∑ i ∈ Finset.range l.length, S (j + i + 1) ≤ (sumHi l : ℝ) := by
  intro l
  induction l with
  | nil => intro j _; simp [sumLo, sumHi]
  | cons e l ih =>
    intro j hE
    obtain ⟨⟨he1, he2⟩, hE'⟩ := hE
    obtain ⟨ih1, ih2⟩ := ih (j + 1) hE'
    simp only [sumLo, sumHi, List.length_cons, Int.cast_add]
    rw [Finset.sum_range_succ', Finset.mul_sum] at *
    simp only [add_zero] at *
    have e : ∀ i, j + (i + 1) + 1 = j + 1 + i + 1 := fun i => by ring
    simp only [e]
    rw [← Finset.mul_sum] at ih1 ih2
    rw [mul_add]
    constructor <;> linarith

/-- **soundness of the row checker.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Varianta8b76e29121631b0c87a70e315046c8290a7055d18f1de63b361b5aa78897d14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Varianta8b76e29121631b0c87a70e315046c8290a7055d18f1de63b361b5aa78897d14.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea10c6380046ea1732712e15e13d15696411e5d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
