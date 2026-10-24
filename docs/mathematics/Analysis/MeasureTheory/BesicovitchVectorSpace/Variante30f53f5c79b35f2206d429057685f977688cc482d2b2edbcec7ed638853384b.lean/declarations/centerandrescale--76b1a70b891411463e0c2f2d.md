# centerAndRescale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ef7b09409d73bd59909dbdc560d92b427fd4e39a01c9b82cf7ba924c23c39fd",
  "kind": "def",
  "lexical_name": "centerAndRescale",
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
  "slug": "centerandrescale--76b1a70b891411463e0c2f2d",
  "source": {
    "blob": "6406f56be53736f4fe2d29ad74d2abd2e1fa4eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 73,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76b1a70b891411463e0c2f2d1e144fe5f8bd00e3534c926bf0342f7f47444abd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ef7b09409d73bd59909dbdc560d92b427fd4e39a01c9b82cf7ba924c23c39fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def centerAndRescale : SatelliteConfig E N τ where
  c i := (a.r (last N))⁻¹ • (a.c i - a.c (last N))
  r i := (a.r (last N))⁻¹ * a.r i
  rpos i := mul_pos (inv_pos.2 (a.rpos _)) (a.rpos _)
  h i j hij := by
    rcases a.h i j hij with (H | H)
    · left
      constructor
      · rw [dist_eq_norm, ← smul_sub, norm_smul, Real.norm_eq_abs,
          abs_of_nonneg (inv_nonneg.2 (a.rpos _).le)]
        refine' mul_le_mul_of_nonneg_left _ (inv_nonneg.2 (a.rpos _).le)
        rw [dist_eq_norm] at H
        convert H.1 using 2
        abel
      · rw [← mul_assoc, mul_comm τ, mul_assoc]
        refine' mul_le_mul_of_nonneg_left _ (inv_nonneg.2 (a.rpos _).le)
        exact H.2
    · right
      constructor
      · rw [dist_eq_norm, ← smul_sub, norm_smul, Real.norm_eq_abs,
          abs_of_nonneg (inv_nonneg.2 (a.rpos _).le)]
        refine' mul_le_mul_of_nonneg_left _ (inv_nonneg.2 (a.rpos _).le)
        rw [dist_eq_norm] at H
        convert H.1 using 2
        abel
      · rw [← mul_assoc, mul_comm τ, mul_assoc]
        refine' mul_le_mul_of_nonneg_left _ (inv_nonneg.2 (a.rpos _).le)
        exact H.2
  hlast i hi := by
    have H := a.hlast i hi
    constructor
    · rw [dist_eq_norm, ← smul_sub, norm_smul, Real.norm_eq_abs,
        abs_of_nonneg (inv_nonneg.2 (a.rpos _).le)]
      refine' mul_le_mul_of_nonneg_left _ (inv_nonneg.2 (a.rpos _).le)
      rw [dist_eq_norm] at H
      convert H.1 using 2
      abel
    · rw [← mul_assoc, mul_comm τ, mul_assoc]
      refine' mul_le_mul_of_nonneg_left _ (inv_nonneg.2 (a.rpos _).le)
      exact H.2
  inter i hi := by
    have H := a.inter i hi
    rw [dist_eq_norm, ← smul_sub, norm_smul, Real.norm_eq_abs,
      abs_of_nonneg (inv_nonneg.2 (a.rpos _).le), ← mul_add]
    refine' mul_le_mul_of_nonneg_left _ (inv_nonneg.2 (a.rpos _).le)
    rw [dist_eq_norm] at H
    convert H using 2
    abel
#align besicovitch.satellite_config.center_and_rescale Besicovitch.SatelliteConfig.centerAndRescale

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6406f56be53736f4fe2d29ad74d2abd2e1fa4eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
