# imo2008_q3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71317502-cd57-3cc5-7cf2-5eb3be79d41e",
  "kind": "theorem",
  "lexical_name": "imo2008_q3",
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
  "slug": "imo2008-q3--fde590dde6da196bb1e4cf63",
  "source": {
    "blob": "ec0e7a2a379ea3c392bb73a7d4c54fbe110f69cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q3/Variant69c0e79d19efd62d7bf9cb5cecc852f728a51db347664588a8f0143e503ab3ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fde590dde6da196bb1e4cf63db8e4f2eee0e084686a7d4a850db8e44d25aac82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo2008Q3/Variant69c0e79d19efd62d7bf9cb5cecc852f728a51db347664588a8f0143e503ab3ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71317502-cd57-3cc5-7cf2-5eb3be79d41e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imo2008_q3 : ∀ N : ℕ, ∃ n : ℕ, n ≥ N ∧
    ∃ p : ℕ, Nat.Prime p ∧ p ∣ n ^ 2 + 1 ∧ (p : ℝ) > 2 * n + sqrt (2 * n) := by
  intro N
  obtain ⟨p, hpp, hineq₁, hpmod4⟩ := Nat.exists_prime_gt_modEq_one (N ^ 2 + 20) four_ne_zero
  obtain ⟨n, hnat, hreal⟩ := p_lemma p hpp hpmod4 (by linarith [hineq₁, Nat.zero_le (N ^ 2)])
  have hineq₂ : n ^ 2 + 1 ≥ p := Nat.le_of_dvd (n ^ 2).succ_pos hnat
  have hineq₃ : n * n ≥ N * N := by linarith [hineq₁, hineq₂]
  have hn_ge_N : n ≥ N := Nat.mul_self_le_mul_self_iff.mpr hineq₃
  exact ⟨n, hn_ge_N, p, hpp, hnat, hreal⟩
#align imo2008_q3 imo2008_q3
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo2008Q3/Variant69c0e79d19efd62d7bf9cb5cecc852f728a51db347664588a8f0143e503ab3ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q3/Variant69c0e79d19efd62d7bf9cb5cecc852f728a51db347664588a8f0143e503ab3ce.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec0e7a2a379ea3c392bb73a7d4c54fbe110f69cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
