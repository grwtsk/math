# summable_sampleCellMass_of_incrementMeanSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98eb7b2d-537d-f5e4-3d87-639f18250b0f",
  "kind": "theorem",
  "lexical_name": "summable_sampleCellMass_of_incrementMeanSquare",
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
  "slug": "summable-samplecellmass-of-incrementmeansquare--7986587260cd8a482cb8d138",
  "source": {
    "blob": "4cbc405fb9a73e89fda0aed98213efe49e8eaa7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 130,
    "path": "GRWTSK/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7986587260cd8a482cb8d13800062dcf2c47f2c4ed07aa8cdb883b2a78867686",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98eb7b2d-537d-f5e4-3d87-639f18250b0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_sampleCellMass_of_incrementMeanSquare
    {σ ε : ℝ} (hσ : 0 < σ) (hε0 : 0 < ε)
    (hε1 : ε ≤ 1) (hεσ : ε < σ)
    (hs : CriticalMertensIncrementMeanSquare ε) :
    Summable (sampleCellMass σ) := by
  have hp : Summable (fun n : ℕ =>
      (n : ℝ) ^ (ε - σ - 1)) :=
    Real.summable_nat_rpow.mpr (by linarith)
  have hshift : Summable (fun k : ℕ =>
      (((k + 1 : ℕ) : ℝ) ^ (ε - σ - 1))) := by
    have h := (summable_nat_add_iff 1).2 hp
    simpa only [Nat.cast_add, Nat.cast_one] using h
  have hmajor : Summable (fun k : ℕ =>
      (4 * sampleIncrementMeanSquareTotal ε / ε) *
        (((k + 1 : ℕ) : ℝ) ^ (ε - σ - 1))) :=
    hshift.mul_left _
  apply hmajor.of_nonneg_of_le
  · exact fun k => sampleCellMass_nonneg hσ.ne' k
  · exact fun k =>
      sampleCellMass_le_incrementMeanSquareMajorant
        hσ hε0 hε1 hεσ hs k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cbc405fb9a73e89fda0aed98213efe49e8eaa7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
