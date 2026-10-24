# actual_primitive_absolute_cap_consumes_to_tent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8d2d236-b95c-682c-81a3-7de4c7ace33e",
  "kind": "theorem",
  "lexical_name": "actual_primitive_absolute_cap_consumes_to_tent",
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
  "slug": "actual-primitive-absolute-cap-consumes-to-tent--33d646cfb5ad63a6470a4bf5",
  "source": {
    "blob": "25b8042b0b769b00aa886c7a6267f1abdbefbe57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 194,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant48263fce10fe7ee1813e661a86c32ecebdda93a9838a4c3ee1724e61845505f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33d646cfb5ad63a6470a4bf568b03e5c8e01fe26c0b74e035e685d58f36f6170",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant48263fce10fe7ee1813e661a86c32ecebdda93a9838a4c3ee1724e61845505f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8d2d236-b95c-682c-81a3-7de4c7ace33e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_primitive_absolute_cap_consumes_to_tent {x B : ℝ} (hx : 0 < x)
    (h16 : |actualPrimitive (16 * x)| ≤ B) (h4 : |actualPrimitive (4 * x)| ≤ B)
    (h1 : |actualPrimitive x| ≤ B) : |TentAbsolutePayment.signedTent x| ≤ 3 * B := by
  rw [← actual_primitive_three_scale_tent hx]
  have hfirst := abs_add_le (actualPrimitive (16 * x) - (3 / 2) * actualPrimitive (4 * x))
    ((1 / 2) * actualPrimitive x)
  have hsecond := abs_sub_le (actualPrimitive (16 * x)) (0 : ℝ)
    ((3 / 2) * actualPrimitive (4 * x))
  simp only [sub_zero, zero_sub, abs_neg] at hsecond
  have hscale4 : |(3 / 2 : ℝ) * actualPrimitive (4 * x)| =
      (3 / 2) * |actualPrimitive (4 * x)| := by rw [abs_mul]; norm_num
  have hscale1 : |(1 / 2 : ℝ) * actualPrimitive x| = (1 / 2) * |actualPrimitive x| := by
    rw [abs_mul]
    norm_num
  rw [hscale1] at hfirst
  rw [hscale4] at hsecond
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteTentPrimitiveIdentity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant48263fce10fe7ee1813e661a86c32ecebdda93a9838a4c3ee1724e61845505f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant48263fce10fe7ee1813e661a86c32ecebdda93a9838a4c3ee1724e61845505f4.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25b8042b0b769b00aa886c7a6267f1abdbefbe57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
