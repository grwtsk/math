# density_half_prime_hasSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9e7427e-4937-3b3e-fa62-d249e7ffe09c",
  "kind": "theorem",
  "lexical_name": "density_half_prime_hasSum",
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
  "slug": "density-half-prime-hassum--1e09744888ccfd0b7d5aad09",
  "source": {
    "blob": "d5c31a9fbb58ce18c0ad5a0f62f38d4b36cea412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 43,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e09744888ccfd0b7d5aad09106494085bb7f2181f115ccf93e1924730f37ae6",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9e7427e-4937-3b3e-fa62-d249e7ffe09c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_half_prime_hasSum {p : ℕ} (hp : p.Prime) :
    HasSum (fun k : ℕ => densityCorrectionHalf (p^k))
      (1 + 1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1))) := by
  have hs : HasSum (fun k : ℕ => densityCorrectionHalf (p^(k+1)))
      (1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1))) := by
    simpa only [densityCorrectionHalf, Nat.cast_pow,
      density_half_sqrt_pow (p : ℝ) (Nat.cast_nonneg p)] using density_correction_prime_half_hasSum hp
  have ht := (hasSum_nat_add_iff (f := fun k : ℕ => densityCorrectionHalf (p^k))
    (g := 1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1))) 1).mp hs
  simpa [densityCorrectionHalf, density_moebius_correction_one, add_comm] using ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c31a9fbb58ce18c0ad5a0f62f38d4b36cea412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
