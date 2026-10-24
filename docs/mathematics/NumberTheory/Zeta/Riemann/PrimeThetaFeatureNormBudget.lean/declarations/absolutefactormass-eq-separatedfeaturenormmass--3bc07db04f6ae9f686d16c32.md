# absoluteFactorMass_eq_separatedFeatureNormMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f42fa0d-88e6-f89e-99bd-a2c549d37691",
  "kind": "theorem",
  "lexical_name": "absoluteFactorMass_eq_separatedFeatureNormMass",
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
  "slug": "absolutefactormass-eq-separatedfeaturenormmass--3bc07db04f6ae9f686d16c32",
  "source": {
    "blob": "3e63b032cf102e51e3c0a4f83068703c8fb81d71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bc07db04f6ae9f686d16c322fb68fa1e0f9a3e7a635ba515c9190cee6c7579e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f42fa0d-88e6-f89e-99bd-a2c549d37691`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absoluteFactorMass_eq_separatedFeatureNormMass
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (v : ℝ) :
    stage.absoluteFactorMass v =
      stage.separatedFeatureNormMass v := by
  unfold absoluteFactorMass separatedFeatureNormMass
    leftFeatureL1 rightFeatureL1
  simp_rw [abs_mul]
  calc
    (∑ p ∈ thetaPrimeWindow X,
        ∑ q ∈ thetaPrimeWindow X,
          ∑ r ∈ stage.factorIndex,
            |stage.coefficient v r| *
              |stage.leftFeature r p| *
              |stage.rightFeature r q|)
        = ∑ r ∈ stage.factorIndex,
            ∑ p ∈ thetaPrimeWindow X,
              ∑ q ∈ thetaPrimeWindow X,
                |stage.coefficient v r| *
                  |stage.leftFeature r p| *
                  |stage.rightFeature r q| := by
          calc
            _ = ∑ p ∈ thetaPrimeWindow X,
                  ∑ r ∈ stage.factorIndex,
                    ∑ q ∈ thetaPrimeWindow X,
                      |stage.coefficient v r| *
                        |stage.leftFeature r p| *
                        |stage.rightFeature r q| := by
                  apply Finset.sum_congr rfl
                  intro p hp
                  exact Finset.sum_comm
            _ = _ := by
                  exact Finset.sum_comm
    _ = ∑ r ∈ stage.factorIndex,
          |stage.coefficient v r| *
            (∑ p ∈ thetaPrimeWindow X,
              |stage.leftFeature r p|) *
            (∑ q ∈ thetaPrimeWindow X,
              |stage.rightFeature r q|) := by
          apply Finset.sum_congr rfl
          intro r hr
          calc
            (∑ p ∈ thetaPrimeWindow X,
                ∑ q ∈ thetaPrimeWindow X,
                  |stage.coefficient v r| *
                    |stage.leftFeature r p| *
                    |stage.rightFeature r q|)
                = ∑ p ∈ thetaPrimeWindow X,
                    (|stage.coefficient v r| *
                      |stage.leftFeature r p|) *
                      (∑ q ∈ thetaPrimeWindow X,
                        |stage.rightFeature r q|) := by
                      apply Finset.sum_congr rfl
                      intro p hp
                      rw [← Finset.mul_sum]
            _ = (∑ p ∈ thetaPrimeWindow X,
                    |stage.coefficient v r| *
                      |stage.leftFeature r p|) *
                  (∑ q ∈ thetaPrimeWindow X,
                    |stage.rightFeature r q|) := by
                      rw [← Finset.sum_mul]
            _ = (|stage.coefficient v r| *
                    (∑ p ∈ thetaPrimeWindow X,
                      |stage.leftFeature r p|)) *
                  (∑ q ∈ thetaPrimeWindow X,
                    |stage.rightFeature r q|) := by
                      rw [← Finset.mul_sum]
            _ = |stage.coefficient v r| *
                  (∑ p ∈ thetaPrimeWindow X,
                    |stage.leftFeature r p|) *
                  (∑ q ∈ thetaPrimeWindow X,
                    |stage.rightFeature r q|) := by
                      ring

end PrimeThetaSeparableKernelStage

/-- Independently proved one-dimensional feature-norm majorants for one source
stage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e63b032cf102e51e3c0a4f83068703c8fb81d71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
