# sourcePlainWeight_zero_of_cutoff_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ae334f6-5b2d-ff90-0467-cd40bb05b7d6",
  "kind": "theorem",
  "lexical_name": "sourcePlainWeight_zero_of_cutoff_lt",
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
  "slug": "sourceplainweight-zero-of-cutoff-lt--ef67fd65b538e39cd57f87f2",
  "source": {
    "blob": "14806976c7e04112bcc7aca4a998270ff3f19368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f2c039771a7090d2508c8bb071fd35c76950cf058b7a65dc5d3d38ecc86240c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef67fd65b538e39cd57f87f22009bfaf9a239e8cfd4212a3a4ebbe548cc7e0f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f2c039771a7090d2508c8bb071fd35c76950cf058b7a65dc5d3d38ecc86240c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ae334f6-5b2d-ff90-0467-cd40bb05b7d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePlainWeight_zero_of_cutoff_lt (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ) (hn : sourceKernelCutoff A < n) : sourcePlainWeight A n = 0 := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (Nat.zero_le _).trans_lt hn
  have hu : Real.exp (2*A) < (n : ℝ) := by
    apply lt_of_not_ge
    intro h
    exact (Nat.not_le.mpr hn) ((Nat.le_floor_iff (Real.exp_pos _).le).2 h)
  have hl : 2*A < Real.log n := (Real.lt_log_iff_exp_lt hn0).2 hu
  dsimp [sourcePlainWeight]
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith)
    (hl.le.trans (le_abs_self _)), zero_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f2c039771a7090d2508c8bb071fd35c76950cf058b7a65dc5d3d38ecc86240c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f2c039771a7090d2508c8bb071fd35c76950cf058b7a65dc5d3d38ecc86240c.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14806976c7e04112bcc7aca4a998270ff3f19368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
