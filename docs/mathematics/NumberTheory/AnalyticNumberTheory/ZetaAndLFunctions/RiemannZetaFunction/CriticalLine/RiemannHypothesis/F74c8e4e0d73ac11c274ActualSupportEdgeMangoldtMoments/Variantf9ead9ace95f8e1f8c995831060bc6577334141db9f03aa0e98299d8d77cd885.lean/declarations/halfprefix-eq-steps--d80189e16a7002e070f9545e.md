# halfPrefix_eq_steps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6def6fbd-25dd-218f-e3c4-e269b8e16fc8",
  "kind": "theorem",
  "lexical_name": "halfPrefix_eq_steps",
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
  "slug": "halfprefix-eq-steps--d80189e16a7002e070f9545e",
  "source": {
    "blob": "099cc47ffee11bda58458a4c3a13f6731c8389e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variantf9ead9ace95f8e1f8c995831060bc6577334141db9f03aa0e98299d8d77cd885.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d80189e16a7002e070f9545e5f43d068a4eb1a44386fce8ff056e4c876f1e819",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variantf9ead9ace95f8e1f8c995831060bc6577334141db9f03aa0e98299d8d77cd885.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6def6fbd-25dd-218f-e3c4-e269b8e16fc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem halfPrefix_eq_steps {L t : ℝ} (ht : t ≤ L) :
    actualHalfMangoldtPrefix t =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊,
        if Real.log n ≤ t then ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)
          else 0 := by
  rw [← Finset.sum_filter]
  have hs : (Finset.Icc 1 ⌊Real.exp L⌋₊).filter (fun n : ℕ => Real.log n ≤ t) =
      Finset.Icc 1 ⌊Real.exp t⌋₊ := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_Icc]
    by_cases hn : 1 ≤ n
    · have hn0 : 0 < (n : ℝ) := by exact_mod_cast hn
      rw [Real.log_le_iff_le_exp hn0,
        Nat.le_floor_iff (Real.exp_pos L).le, Nat.le_floor_iff (Real.exp_pos t).le]
      exact ⟨fun h => ⟨h.1.1, h.2⟩,
        fun h => ⟨⟨h.1, h.2.trans (Real.exp_le_exp.mpr ht)⟩, h.2⟩⟩
    · simp [hn]
  rw [hs]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variantf9ead9ace95f8e1f8c995831060bc6577334141db9f03aa0e98299d8d77cd885.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variantf9ead9ace95f8e1f8c995831060bc6577334141db9f03aa0e98299d8d77cd885.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `099cc47ffee11bda58458a4c3a13f6731c8389e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
