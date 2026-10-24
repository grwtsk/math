# goldbachLogMass_ge_one_ninetieth_of_two_arc_bridges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54a360ec-252e-920e-7f91-8cb254064bdb",
  "kind": "theorem",
  "lexical_name": "goldbachLogMass_ge_one_ninetieth_of_two_arc_bridges",
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
  "slug": "goldbachlogmass-ge-one-ninetieth-of-two-arc-bridges--60d9268dee835ade6f3d0ce3",
  "source": {
    "blob": "1f219c5154bbf2a0edbdd0a412837964105cef5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60d9268dee835ade6f3d0ce3e80bd865bef7eb29afcfb5c576639dab1f994705",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54a360ec-252e-920e-7f91-8cb254064bdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachLogMass_ge_one_ninetieth_of_two_arc_bridges
    (hθ : GoldbachThetaCoarseEstimates)
    {N : ℕ} (hN : goldbachThetaConservativeCutoff ≤ N) (heven : Even N)
    (hbudget : goldbachFrequencyMajorErrorBudget 2 N
      (goldbachTwoArcReducedPrefixBound ((N + 1 : ℝ) / 100)) ≤
        goldbachTwoArcRationalBudget (N + 1 : ℝ) ((N + 1 : ℝ) / 100))
    (hmodel : 13 * (N + 1 : ℝ) / 9 ≤ (goldbachProgressionArcModelMajorSum 2 N).re)
    (hminor : -(N + 1 : ℝ) ≤ (goldbachRationalMinorContribution 2 N).re) :
    (N + 1 : ℝ) / 90 ≤ goldbachLogMass N := by
  have hNat : 400000000 ≤ N := hN
  have htwo : 2 < N := by omega
  have hscale : 2 * 2 ^ 2 < N + 1 := by omega
  have hX : (6000 : ℝ) ≤ (N + 1 : ℝ) := by
    exact_mod_cast (show 6000 ≤ N + 1 by omega)
  have hp := goldbachReducedPrefixSupplier_two_of_coarse hθ N hN htwo heven
  have hres := norm_goldbachProgressionResidualSum_le_frequency
    (goldbachTwoArcReducedPrefixBound ((N + 1 : ℝ) / 100)) hp
  have hmass := mass_lower_of_signed_minor_lower
    (goldbachProgressionModel_add_residual_add_minor hscale) hmodel hres hminor
  have hm := twoArcBudget_full_minor_margin hX
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f219c5154bbf2a0edbdd0a412837964105cef5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
