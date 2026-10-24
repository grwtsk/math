# finite_log_sqrt_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:812ce2f1-1430-e7bc-947e-810518cd6079",
  "kind": "theorem",
  "lexical_name": "finite_log_sqrt_sum_le",
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
  "slug": "finite-log-sqrt-sum-le--bfced8d5d08d1ab9dd089e95",
  "source": {
    "blob": "2c23ac91c5940382a69516714bf1fe1bfd215828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 135,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7e3163915dd79abf9d5d44238a8ffeaa7ec6e0f4afa5dea197bde4a6341b3a4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfced8d5d08d1ab9dd089e95100f3bc3e0276226a4edb5096b6996fd7224bfb7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7e3163915dd79abf9d5d44238a8ffeaa7ec6e0f4afa5dea197bde4a6341b3a4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:812ce2f1-1430-e7bc-947e-810518cd6079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_log_sqrt_sum_le (s : Finset ℕ) (hs : ∀ p ∈ s, 2 ≤ p) :
    (∑ p ∈ s, Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p)) ≤ 4 + 2 * Real.log 2 := by
  have hinj : Set.InjOn (fun p : ℕ => p - 2) (s : Set ℕ) := by
    intro a ha b hb hab
    have := hs a ha
    have := hs b hb
    dsimp only at hab
    omega
  have heq : (∑ p ∈ s, Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p)) =
      ∑ k ∈ s.image (fun p => p - 2), logSqrtWeight k := by
    rw [Finset.sum_image hinj]
    apply Finset.sum_congr rfl
    intro p hp
    unfold logSqrtWeight
    rw [show ((p - 2 : ℕ) : ℝ) + 2 = (p : ℝ) by exact_mod_cast Nat.sub_add_cancel (hs p hp)]
  rw [heq]
  exact (logSqrtWeight_summable.sum_le_tsum _ (fun k _ => logSqrtWeight_nonneg k)).trans
    tsum_logSqrtWeight_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7e3163915dd79abf9d5d44238a8ffeaa7ec6e0f4afa5dea197bde4a6341b3a4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7e3163915dd79abf9d5d44238a8ffeaa7ec6e0f4afa5dea197bde4a6341b3a4d.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c23ac91c5940382a69516714bf1fe1bfd215828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
