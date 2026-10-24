# Pmat_eq_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:206a3b01-5171-00c2-f2fd-f84e8f6e2483",
  "kind": "lemma",
  "lexical_name": "Pmat_eq_diagonal",
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
  "slug": "pmat-eq-diagonal--e42be4293c8e4f0a2808619f",
  "source": {
    "blob": "817f9e0633ed337423073013b2beab91245bb73b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e42be4293c8e4f0a2808619f91ed4e657bb3e67916aed7b7894ec42d10fdb50e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:206a3b01-5171-00c2-f2fd-f84e8f6e2483`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Pmat_eq_diagonal : Pmat (𝕜 := ℝ) (mR r m) (v r b) = diagonal (Sum.elim (fun j => (m j : ℝ)) (fun _ => 0)) := by
  ext a a'
  rw [Pmat_apply (fun j => by unfold mR; positivity), diagonal_apply]
  simp only [mR, v, RCLike.ofReal_real_eq_id, id_eq, starRingEnd_apply, star_trivial]
  rcases a with j | i
  · by_cases h : (Sum.inl j : idx r b) = a'
    · subst h
      rw [if_pos rfl, Finset.sum_eq_single j]
      · simp
      · intro k _ hk; simp [Pi.single_apply, Sum.inl_injective.eq_iff, Ne.symm hk]
      · simp
    · rw [if_neg h]
      refine Finset.sum_eq_zero fun k _ => ?_
      by_cases hk : (Sum.inl k : idx r b) = a'
      · subst hk
        have : k ≠ j := fun e => h (by rw [e])
        simp [Pi.single_apply, Sum.inl_injective.eq_iff, Ne.symm this]
      · simp [Pi.single_apply, hk]
  · have : ∀ k : Fin r, (Pi.single (Sum.inl k) (1:ℝ) : idx r b → ℝ) (Sum.inr i) = 0 := fun k => by
      simp [Pi.single_apply]
    simp only [this, zero_mul, mul_zero, Finset.sum_const_zero, Sum.elim_inr]
    split_ifs <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `817f9e0633ed337423073013b2beab91245bb73b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
