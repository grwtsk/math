# stageThreeSixteenGap_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dd46db4-379a-bbc6-a9d6-05c981471aa1",
  "kind": "theorem",
  "lexical_name": "stageThreeSixteenGap_pos",
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
  "slug": "stagethreesixteengap-pos--4642cec40ae0ddb52caacf35",
  "source": {
    "blob": "a43ff15fae6628b6f57324576d7b4aed4c0b6a25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 38,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4642cec40ae0ddb52caacf35e7770e2c3cbbb79f8970a205ef11567e110c23bc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dd46db4-379a-bbc6-a9d6-05c981471aa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stageThreeSixteenGap_pos
    {x : ℝ} (hx : x ∈ Set.Ioo (9 : ℝ) 16) :
    0 < stageThreeSixteenGap x := by
  have ht : 0 < canonicalTentReal 1 x := by
    unfold canonicalTentReal
    apply (tent_pos_iff (squareCenter 3) (squareRadius 3) x
      (squareRadius_pos 3)).2
    norm_num [squareCenter, squareRadius] at hx ⊢
    exact hx
  have hrec : sixteenPivot < 1 / x := by
    unfold sixteenPivot
    exact one_div_lt_one_div_of_lt (by linarith [hx.1]) hx.2
  calc
    stageThreeSixteenGap x =
      canonicalTentReal 1 x * (1 / x - sixteenPivot) := by
        unfold stageThreeSixteenGap
        ring
    _ > 0 := mul_pos ht (sub_pos.mpr hrec)

/-- On the actual stage-four interior the reciprocal weight lies
strictly below the same pivot. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43ff15fae6628b6f57324576d7b4aed4c0b6a25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
