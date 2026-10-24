# majorant_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f74bfb5-7bc8-1215-c252-d318d28bb10b",
  "kind": "theorem",
  "lexical_name": "majorant_integral_le",
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
  "slug": "majorant-integral-le--58783ae243a4b14ed867347f",
  "source": {
    "blob": "d53a2c43c1827ea04aad4b3940771d1767928b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58783ae243a4b14ed867347f8a697da18489dafa00a46a1e96a2f2cc373206a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f74bfb5-7bc8-1215-c252-d318d28bb10b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem majorant_integral_le (q C : ℝ) (N : ℕ) (hq : 0 < q) (hC : 0 ≤ C)
    (hN : 1 ≤ N) :
    (∫ t in (1 : ℝ)..(N : ℝ), q * (C / (q * t * Real.sqrt (q * t)))) ≤
      2 * C / Real.sqrt q := by
  have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hi := (intervalIntegrable_iff_integrableOn_Icc_of_le hNr).mpr
    (majorant_integrableOn q C N hq)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t ht ↦ majorant_primitive_hasDerivAt q C t hq
      (lt_of_lt_of_le zero_lt_one ((Set.uIcc_of_le hNr ▸ ht).1))) hi
  rw [he]
  simp only [mul_one, neg_mul, neg_div]
  have hnonneg : 0 ≤ 2 * C / Real.sqrt (q * (N : ℝ)) := by positivity
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d53a2c43c1827ea04aad4b3940771d1767928b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
