# LFunction_conj_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3ea63e64d7797979babbd0b3690aa95ded64f2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb897dea-0fb5-3772-43d0-841fd0912852",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2802478-425e-0a2b-b260-e7b202c115f3",
  "kind": "lemma",
  "lexical_name": "LFunction_conj_of_one_lt_re",
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
  "slug": "lfunction-conj-of-one-lt-re--4e22b955b572211746426334",
  "source": {
    "blob": "a3ea63e64d7797979babbd0b3690aa95ded64f2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e22b955b5722117464263346cc08e9527fe91bd6eee458a9862ee9fb9c30094",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2802478-425e-0a2b-b260-e7b202c115f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma LFunction_conj_of_one_lt_re {s : ℂ} (hs : 1 < s.re) :
    conj ((χ⁻¹).LFunction s) = χ.LFunction (conj s) := by
  have hs' : (1 : ℝ) < (conj s).re := by rwa [Complex.conj_re]
  rw [LFunction_eq_LSeries _ hs, LFunction_eq_LSeries _ hs']
  unfold LSeries
  calc (starRingEnd ℂ) (∑' n, LSeries.term (fun x : ℕ => (χ⁻¹) (x : ZMod q)) s n)
      = ∑' n, star (LSeries.term (fun x : ℕ => (χ⁻¹) (x : ZMod q)) s n) := tsum_star
    _ = ∑' n, LSeries.term (fun x : ℕ => χ (x : ZMod q)) ((starRingEnd ℂ) s) n := by
        congr 1
        funext n
        rcases Nat.eq_zero_or_pos n with rfl | hn
        · simp [LSeries.term]
        · have harg : ((n : ℂ)).arg ≠ Real.pi := by
            rw [Complex.natCast_arg]
            exact Ne.symm Real.pi_ne_zero
          have hpow : (n : ℂ) ^ (conj s) = conj ((n : ℂ) ^ s) := by
            have h := Complex.cpow_conj (n : ℂ) s harg
            rwa [Complex.conj_natCast] at h
          have hcoef : star ((χ⁻¹) ((n : ℕ) : ZMod q)) = χ ((n : ℕ) : ZMod q) := by
            have h := MulChar.star_apply' χ ((n : ℕ) : ZMod q)
            have h2 := congrArg star h
            rw [star_star] at h2
            exact h2.symm
          simp only [LSeries.term, hn.ne', if_false, star_div₀]
          rw [hcoef]
          simp only [← starRingEnd_apply]
          rw [hpow]

/-- **Schwarz reflection for Dirichlet L**: `L(s̄, χ) = conj L(s, χ⁻¹)` (everywhere; χ ≠ 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3ea63e64d7797979babbd0b3690aa95ded64f2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
