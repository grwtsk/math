# subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97287030-4996-affd-4309-7fdb3e7d716e",
  "kind": "theorem",
  "lexical_name": "subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_split",
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
  "slug": "subpolynomialcoregrowingshiftquarticcollisionseparatedcompensation-of-sp--9a97db5767faeb57c8506b16",
  "source": {
    "blob": "cc617f674d7eed25359a3ede099d4978da6d86b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 202,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a97db5767faeb57c8506b163893ddc3bf30653750f415284075ad7d0bad5ad7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97287030-4996-affd-4309-7fdb3e7d716e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_split
    (hCollision :
      SubpolynomialCoreGrowingShiftQuarticCollisionLineCompensation)
    (hFree : SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget) :
    SubpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation := by
  intro δ hδ
  obtain ⟨Cc, hCc, hcollision⟩ := hCollision δ hδ
  obtain ⟨Cf, hCf, hfree⟩ := hFree δ hδ
  refine ⟨Cc + Cf, add_nonneg hCc hCf, ?_⟩
  intro j
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  let S : ℝ := X * X ^ δ
  let A : ℝ := Cc * S
  let B : ℝ := Cf * S
  have hS : 0 ≤ S := by
    dsimp [S, X]
    positivity
  have hA : 0 ≤ A := by
    exact mul_nonneg hCc hS
  have hB : 0 ≤ B := by
    exact mul_nonneg hCf hS
  have hcollision' :
      2 * coreGrowingShiftQuarticCollisionEnergy j ≤
        A ^ 2 - coreGrowingShiftQuarticDiagonalEnergy j := by
    simpa [A, S, X] using hcollision j
  have hfree' :
      2 * coreGrowingShiftQuarticCollisionFreeEnergy j ≤ B ^ 2 := by
    simpa [B, S, X] using hfree j
  calc
    2 * (coreGrowingShiftQuarticCollisionEnergy j +
        coreGrowingShiftQuarticCollisionFreeEnergy j) =
      2 * coreGrowingShiftQuarticCollisionEnergy j +
        2 * coreGrowingShiftQuarticCollisionFreeEnergy j := by ring
    _ ≤ (A ^ 2 - coreGrowingShiftQuarticDiagonalEnergy j) + B ^ 2 :=
      add_le_add hcollision' hfree'
    _ ≤ (A + B) ^ 2 - coreGrowingShiftQuarticDiagonalEnergy j := by
      nlinarith [mul_nonneg hA hB]
    _ = ((Cc + Cf) * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 -
            coreGrowingShiftQuarticDiagonalEnergy j := by
      dsimp [A, B, S, X]
      ring

/-- Squarefree-midpoint collision control plus collision-free parallelogram
control supplies the exact collision-separated source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc617f674d7eed25359a3ede099d4978da6d86b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
