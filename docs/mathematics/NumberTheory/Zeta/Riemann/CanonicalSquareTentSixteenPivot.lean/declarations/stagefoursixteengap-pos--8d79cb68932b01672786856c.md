# stageFourSixteenGap_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02eb0f07-4b54-4f7f-d94a-97ba472ab62a",
  "kind": "theorem",
  "lexical_name": "stageFourSixteenGap_pos",
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
  "slug": "stagefoursixteengap-pos--8d79cb68932b01672786856c",
  "source": {
    "blob": "a43ff15fae6628b6f57324576d7b4aed4c0b6a25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d79cb68932b01672786856c1a44fc49d80ea59feb8651681bcf5ebd4c8af75e",
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

Occurrence: `result:02eb0f07-4b54-4f7f-d94a-97ba472ab62a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stageFourSixteenGap_pos
    {x : ℝ} (hx : x ∈ Set.Ioo (16 : ℝ) 25) :
    0 < stageFourSixteenGap x := by
  have ht : 0 < canonicalTentReal 2 x := by
    unfold canonicalTentReal
    apply (tent_pos_iff (squareCenter 4) (squareRadius 4) x
      (squareRadius_pos 4)).2
    norm_num [squareCenter, squareRadius] at hx ⊢
    exact hx
  have hrec : 1 / x < sixteenPivot := by
    unfold sixteenPivot
    exact one_div_lt_one_div_of_lt (by norm_num : (0 : ℝ) < 16) hx.1
  calc
    stageFourSixteenGap x =
      canonicalTentReal 2 x * (sixteenPivot - 1 / x) := by
        unfold stageFourSixteenGap
        ring
    _ > 0 := mul_pos ht (sub_pos.mpr hrec)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenPivot
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43ff15fae6628b6f57324576d7b4aed4c0b6a25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
