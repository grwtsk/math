# log_three_less_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2eaca74-516c-3144-ee33-2a08dfa30d23",
  "kind": "theorem",
  "lexical_name": "log_three_less_two",
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
  "slug": "log-three-less-two--b69ac95744366c25e12a6b72",
  "source": {
    "blob": "93842453ac8e2cd9ab3a932c2aa42ca54cfd18ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 67,
    "path": "GRWTSK/Analysis/PrimeIncidenceDecoderBoundary/Variante0e500f539f4b1c72e6999d39aae7b7355ad05f5b97ee2589bdf605df01942ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b69ac95744366c25e12a6b7258f0e3af27a07de2562c85bd85086a0b78de69bc",
  "verification": {
    "reference": "docs/verification/Analysis/PrimeIncidenceDecoderBoundary/Variante0e500f539f4b1c72e6999d39aae7b7355ad05f5b97ee2589bdf605df01942ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2eaca74-516c-3144-ee33-2a08dfa30d23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_three_less_two : Real.log (3 : ℝ) < 2 := by
  apply (Real.log_lt_iff_lt_exp (by norm_num)).mpr
  have he : Real.exp (2 : ℝ) = Real.exp 1 ^ 2 := by simp [← Real.exp_nat_mul]
  rw [he]
  nlinarith [Real.exp_one_gt_two]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrimeIncidenceDecoderBoundary/Variante0e500f539f4b1c72e6999d39aae7b7355ad05f5b97ee2589bdf605df01942ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrimeIncidenceDecoderBoundary/Variante0e500f539f4b1c72e6999d39aae7b7355ad05f5b97ee2589bdf605df01942ba.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93842453ac8e2cd9ab3a932c2aa42ca54cfd18ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
