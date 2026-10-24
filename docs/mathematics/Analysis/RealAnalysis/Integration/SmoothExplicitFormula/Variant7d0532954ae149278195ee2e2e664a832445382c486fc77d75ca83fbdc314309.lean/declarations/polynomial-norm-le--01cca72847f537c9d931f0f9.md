# polynomial_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32773b65-475a-8bf8-bf3b-eee6a6d86e69",
  "kind": "theorem",
  "lexical_name": "polynomial_norm_le",
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
  "slug": "polynomial-norm-le--01cca72847f537c9d931f0f9",
  "source": {
    "blob": "b425f973f9833ebb51b75823e783d29be23875f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01cca72847f537c9d931f0f93f81ce430cfdf44f96f4a368f8339e1a2ff64464",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32773b65-475a-8bf8-bf3b-eee6a6d86e69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem polynomial_norm_le (t : ℂ) (ht : 1 ≤ ‖t‖) :
    ‖transformPolynomial t‖ ≤ 266 * ‖t‖ ^ 4 := by
  have h2 : ‖t‖ ≤ ‖t‖ ^ 2 := by nlinarith [norm_nonneg t]
  have h3 : ‖t‖ ^ 2 ≤ ‖t‖ ^ 3 := by nlinarith [sq_nonneg (‖t‖ - 1)]
  have h4 : ‖t‖ ^ 3 ≤ ‖t‖ ^ 4 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) (pow_nonneg (norm_nonneg t) 3)]
  have hb : ‖transformPolynomial t‖ ≤
      ‖t‖ ^ 4 + 10 * ‖t‖ ^ 3 + 45 * ‖t‖ ^ 2 + 105 * ‖t‖ + 105 := by
    unfold transformPolynomial
    calc
      _ ≤ ‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2 - 105 * t‖ + ‖(105 : ℂ)‖ := norm_add_le _ _
      _ ≤ (‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2‖ + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ ≤ ((‖t ^ 4 - 10 * t ^ 3‖ + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_add_le _ _
      _ ≤ (((‖t ^ 4‖ + ‖10 * t ^ 3‖) + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ = _ := by norm_num [norm_mul, norm_pow]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b425f973f9833ebb51b75823e783d29be23875f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
