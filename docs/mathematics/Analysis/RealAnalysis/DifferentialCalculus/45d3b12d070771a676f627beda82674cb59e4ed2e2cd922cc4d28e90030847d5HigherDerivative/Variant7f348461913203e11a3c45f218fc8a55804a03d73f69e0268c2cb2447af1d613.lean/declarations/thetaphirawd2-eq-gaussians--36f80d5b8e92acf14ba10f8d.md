# thetaPhiRawD2_eq_gaussians

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61103822-20d1-4819-57a9-ca514639e1c0",
  "kind": "theorem",
  "lexical_name": "thetaPhiRawD2_eq_gaussians",
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
  "slug": "thetaphirawd2-eq-gaussians--36f80d5b8e92acf14ba10f8d",
  "source": {
    "blob": "6952e30af9f85ba807b223f26b3fde71be8d6866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36f80d5b8e92acf14ba10f8dbbe4e831f3f39ac2a05bd55f8d5e0fcf5af38e8d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61103822-20d1-4819-57a9-ca514639e1c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem thetaPhiRawD2_eq_gaussians (t : ℝ) :
    thetaPhiRawD2 t =
      (330 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
      (75 * Real.pi) * thetaGaussianSum 2 5 t -
      (224 * Real.pi ^ 3) * thetaGaussianSum 6 13 t +
      (32 * Real.pi ^ 4) * thetaGaussianSum 8 17 t := by
  unfold thetaPhiRawD2
  simp_rw [thetaPhiTermSecondDeriv_eq_gaussians]
  rw [((((thetaGaussianTerm_summable 4 9 t).mul_left (330 * Real.pi ^ 2)).sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (75 * Real.pi))).sub
      ((thetaGaussianTerm_summable 6 13 t).mul_left (224 * Real.pi ^ 3))).tsum_add
      ((thetaGaussianTerm_summable 8 17 t).mul_left (32 * Real.pi ^ 4)),
    (((thetaGaussianTerm_summable 4 9 t).mul_left (330 * Real.pi ^ 2)).sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (75 * Real.pi))).tsum_sub
      ((thetaGaussianTerm_summable 6 13 t).mul_left (224 * Real.pi ^ 3)),
    ((thetaGaussianTerm_summable 4 9 t).mul_left (330 * Real.pi ^ 2)).tsum_sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left (75 * Real.pi)),
    tsum_mul_left, tsum_mul_left, tsum_mul_left, tsum_mul_left]
  rfl


/-- The third source derivative as a finite combination of Gaussian sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6952e30af9f85ba807b223f26b3fde71be8d6866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
