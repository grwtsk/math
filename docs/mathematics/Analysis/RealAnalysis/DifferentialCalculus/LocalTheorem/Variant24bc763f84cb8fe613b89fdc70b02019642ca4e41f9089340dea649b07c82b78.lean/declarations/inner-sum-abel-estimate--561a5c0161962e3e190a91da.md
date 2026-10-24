# inner_sum_abel_estimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c20a5e7e-0fff-6618-9742-ab06a248f4aa",
  "kind": "theorem",
  "lexical_name": "inner_sum_abel_estimate",
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
  "slug": "inner-sum-abel-estimate--561a5c0161962e3e190a91da",
  "source": {
    "blob": "b333272f1c0715bbcfdd65cb845f372585c2424a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:561a5c0161962e3e190a91dab2fbe80d0123289764be9d498639ca022eabfdd6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c20a5e7e-0fff-6618-9742-ab06a248f4aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_sum_abel_estimate {A : ℝ} {d : ℕ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hdX : (d : ℝ) ≤ Real.exp (2 * A)) :
    (∑ m ∈ Finset.Icc 1 ⌊innerCutoff A d⌋₊,
      Real.log m * plainProfile A 1 ((d : ℝ) * m)) =
      (∫ y in (1 : ℝ)..innerCutoff A d,
        Real.log y / Real.sqrt ((d : ℝ) * y) *
          sourceCorrelation explicitSecondDerivative A (Real.log ((d : ℝ) * y))) +
      innerRemainder A d ∧
    |innerRemainder A d| ≤ (2 + 10 / A) / Real.sqrt d ∧
    |innerRemainder A d| ≤ 12 / Real.sqrt d := by
  have hdr : (1 : ℝ) ≤ d := by exact_mod_cast hd
  exact ⟨inner_sum_eq hA hdr hdX, innerRemainder_abs_le hA hdr hdX,
    innerRemainder_abs_le_twelve hA hdr hdX⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b333272f1c0715bbcfdd65cb845f372585c2424a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
