# weightedMertensSquarePartial_uniform_of_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0480dcee-8a8e-3946-d134-2a67b6362380",
  "kind": "theorem",
  "lexical_name": "weightedMertensSquarePartial_uniform_of_correlation",
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
  "slug": "weightedmertenssquarepartial-uniform-of-correlation--538be5a13ddda1ffbb3eb934",
  "source": {
    "blob": "d3c6eb93645865d05abe185faac1937215d8237c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 148,
    "path": "GRWTSK/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:538be5a13ddda1ffbb3eb9343bfde9ceffd13c5dbd332e5cf0fa895d97e7052f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0480dcee-8a8e-3946-d134-2a67b6362380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensSquarePartial_uniform_of_correlation {ε : ℝ}
    (hε : 0 < ε) (hC : WeightedMertensCorrelationUniform ε) :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ N : ℕ, weightedMertensSquarePartial ε N ≤ B := by
  obtain ⟨C, hC0, hcorr⟩ := hC
  let D : ℝ := ∑' j : ℕ, (((j + 2 : ℕ) : ℝ) ^ (-(1 + ε)))
  have hD0 : 0 ≤ D := by
    dsimp [D]
    exact tsum_nonneg (fun _ => Real.rpow_nonneg (by positivity) _)
  refine ⟨C + D, add_nonneg hC0 hD0, ?_⟩
  intro N
  rw [weightedMertensSquarePartial_eq_correlation_add_diagonal]
  exact add_le_add (hcorr N) (weightedMertensDiagonal_le_tsum hε N)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3c6eb93645865d05abe185faac1937215d8237c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
