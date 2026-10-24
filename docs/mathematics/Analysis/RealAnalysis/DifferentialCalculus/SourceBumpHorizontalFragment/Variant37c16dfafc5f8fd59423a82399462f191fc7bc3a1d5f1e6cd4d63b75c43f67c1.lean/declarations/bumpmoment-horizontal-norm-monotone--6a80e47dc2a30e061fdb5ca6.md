# bumpMoment_horizontal_norm_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11a11dd5-4a98-4783-15d8-a815362dbaf0",
  "kind": "theorem",
  "lexical_name": "bumpMoment_horizontal_norm_monotone",
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
  "slug": "bumpmoment-horizontal-norm-monotone--6a80e47dc2a30e061fdb5ca6",
  "source": {
    "blob": "516a2df6d6d5ea4545f61977b43afffad0759d34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalFragment/Variant37c16dfafc5f8fd59423a82399462f191fc7bc3a1d5f1e6cd4d63b75c43f67c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a80e47dc2a30e061fdb5ca64cc85253c351ed9981162ac12d604cb0ca695a3a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalFragment/Variant37c16dfafc5f8fd59423a82399462f191fc7bc3a1d5f1e6cd4d63b75c43f67c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11a11dd5-4a98-4783-15d8-a815362dbaf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMoment_horizontal_norm_monotone (t : ℝ) :
    MonotoneOn (fun x : ℝ => ‖bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)‖)
      (Ici 0) := by
  have hm : MonotoneOn
      (fun x : ℝ => ‖bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)‖^2) (Ici 0) := by
    apply monotoneOn_of_hasDerivWithinAt_nonneg (convex_Ici 0)
    · have hc := bumpMoment_continuous 0
      apply Continuous.continuousOn
      fun_prop
    · intro x _
      exact (bumpMoment_horizontal_norm_sq_hasDerivAt t x).hasDerivWithinAt
    · intro x hx
      have hx' : 0 < x := by simpa only [interior_Ici, mem_Ioi] using hx
      exact mul_nonneg (by norm_num)
        (bumpMoment_derivative_pairing_nonneg _ (by simpa using hx'))
  intro x hx y hy hxy
  have hh := hm hx hy hxy
  nlinarith [norm_nonneg (bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)),
    norm_nonneg (bumpMoment 0 ((y : ℂ) + (t : ℂ) * Complex.I))]

/-- The exact imaginary-axis bump value never exceeds its inward horizontal translate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalFragment/Variant37c16dfafc5f8fd59423a82399462f191fc7bc3a1d5f1e6cd4d63b75c43f67c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalFragment/Variant37c16dfafc5f8fd59423a82399462f191fc7bc3a1d5f1e6cd4d63b75c43f67c1.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `516a2df6d6d5ea4545f61977b43afffad0759d34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
