# finiteHalfHarmonic_sub_sqrt_zeta_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83fc1b3f-d045-a64b-5177-275a6dd42412",
  "kind": "theorem",
  "lexical_name": "finiteHalfHarmonic_sub_sqrt_zeta_abs_le",
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
  "slug": "finitehalfharmonic-sub-sqrt-zeta-abs-le--e935ed2a27f3781db00b3f51",
  "source": {
    "blob": "28260fedd4836e7762722bdea9f76e2c1f054655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaterSourceActualHalfHarmonicZeta/Variantf1496f0dd1b5434d0c516be6705100d7bf604a51375e9879201ae6d304a07b3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e935ed2a27f3781db00b3f516fdc5b81109f788ce2f097a03215bd6c7a52440c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LaterSourceActualHalfHarmonicZeta/Variantf1496f0dd1b5434d0c516be6705100d7bf604a51375e9879201ae6d304a07b3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83fc1b3f-d045-a64b-5177-275a6dd42412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteHalfHarmonic_sub_sqrt_zeta_abs_le (L : ℕ) (hL : 1 ≤ L) :
    |finiteHalfHarmonic L - 2 * Real.sqrt (L : ℝ) -
      (riemannZeta (1 / 2 : ℂ)).re| ≤ 1 / Real.sqrt (L : ℝ) := by
  rw [finiteHalfHarmonic_eq_sqrt_zeta_tail L hL]
  have ht := halfHarmonicFractionalTail_bounds L hL
  have he : 2 * Real.sqrt (L : ℝ) + (riemannZeta (1 / 2 : ℂ)).re +
      halfHarmonicFractionalTail L - 2 * Real.sqrt (L : ℝ) -
      (riemannZeta (1 / 2 : ℂ)).re = halfHarmonicFractionalTail L := by ring
  rw [he, abs_of_nonneg ht.1]
  exact ht.2

end
end FormalResearch.RiemannHypothesis.SourceActualHalfHarmonicZeta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LaterSourceActualHalfHarmonicZeta/Variantf1496f0dd1b5434d0c516be6705100d7bf604a51375e9879201ae6d304a07b3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaterSourceActualHalfHarmonicZeta/Variantf1496f0dd1b5434d0c516be6705100d7bf604a51375e9879201ae6d304a07b3d.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28260fedd4836e7762722bdea9f76e2c1f054655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
