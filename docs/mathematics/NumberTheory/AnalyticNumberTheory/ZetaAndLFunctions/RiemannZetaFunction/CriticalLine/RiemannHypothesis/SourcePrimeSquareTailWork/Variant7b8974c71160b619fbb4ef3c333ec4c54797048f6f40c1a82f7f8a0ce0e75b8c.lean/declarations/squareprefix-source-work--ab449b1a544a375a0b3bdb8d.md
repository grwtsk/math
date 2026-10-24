# squarePrefix_source_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1094614db9115f5beeb671a900361db0245138b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad02bf7d-3446-ddec-2839-dc4cc1b664e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2cf77f4-4761-187c-a67e-d63e75cee140",
  "kind": "theorem",
  "lexical_name": "squarePrefix_source_work",
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
  "slug": "squareprefix-source-work--ab449b1a544a375a0b3bdb8d",
  "source": {
    "blob": "1094614db9115f5beeb671a900361db0245138b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 190,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab449b1a544a375a0b3bdb8d3aed28ba07460c056ecc4b609b206a974e9ae55f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2cf77f4-4761-187c-a67e-d63e75cee140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarePrefix_source_work {A : ℝ} (hA : 0 < A) :
    (∫ u in 0..2*A, squarePrefix u * deriv (criticalPrimeTest A) u) =
      -primeSquareMoment A := by
  have he := integral_finite_steps_deriv 0 (2*A) (primeLogInventory A)
    (fun p => 2*Real.log (p : ℝ)) squarePrefixCoefficient
    (fun p hp => by
      have hb := primeLogInventory_log_bounds A p hp
      constructor <;> linarith) (criticalPrimeTest A) (criticalPrimeTest_contDiff A hA)
  have hsteps : (∫ u in 0..2*A, squarePrefix u * deriv (criticalPrimeTest A) u) =
      ∫ u in 0..2*A, ∑ p ∈ primeLogInventory A,
        squarePrefixCoefficient p *
          (if 2*Real.log (p : ℝ) ≤ u then deriv (criticalPrimeTest A) u else 0) := by
    apply intervalIntegral.integral_congr
    intro u hu
    dsimp only
    rw [squarePrefix_eq_steps (2*A) u ((uIcc_of_le (by linarith : 0 ≤ 2*A) ▸ hu).2)]
    simp only [show 2*A/2 = A by ring, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro p hp
    split_ifs <;> simp
  rw [hsteps, he, criticalPrimeTest_at_upper A hA,
    primeSquareMoment_eq_primeLogSum, primeLogSum, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  have hp0 : 0 < (p : ℝ) := by
    exact_mod_cast (Finset.mem_filter.mp hp).2.pos
  unfold squarePrefixCoefficient criticalPrimeTest diagonalCorrelation
  rw [show (2*Real.log (p : ℝ))/2 = Real.log (p : ℝ) by ring,
    Real.exp_log hp0]
  field_simp [ne_of_gt hp0]
  ring

/-- Literal Abel work with the independent full baseline and original endpoint -B2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1094614db9115f5beeb671a900361db0245138b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
