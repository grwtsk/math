# denominator_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a0dba08-6f6a-fca2-3b6a-480984067a3e",
  "kind": "theorem",
  "lexical_name": "denominator_lower",
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
  "slug": "denominator-lower--45db86ef6cfa6153d9e59be1",
  "source": {
    "blob": "4d0a0a3872bd96721dce77683488b15898cc803a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 42,
    "path": "GRWTSK/Analysis/Complex/RationalComplexQuotient.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45db86ef6cfa6153d9e59be1bfb269feb7eb36908457259587c4a7e044b659d6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a0dba08-6f6a-fca2-3b6a-480984067a3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denominator_lower (h d : ℚ) (c : QComplex)
    (hh : 0 < h) (hd : 0 < d)
    (hbound : d ^ 2 ≤ h ^ 2 * normSq c * normSq (add c one)) :
    (d : ℝ) ≤ (h : ℝ) * ‖embed c‖ * ‖embed c + 1‖ := by
  have hhR : (0 : ℝ) < h := by exact_mod_cast hh
  have hdR : (0 : ℝ) < d := by exact_mod_cast hd
  have hsq : (d : ℝ) ^ 2 ≤ (h : ℝ) ^ 2 * ‖embed c‖ ^ 2 * ‖embed c + 1‖ ^ 2 := by
    have ht : (d : ℝ) ^ 2 ≤ (h : ℝ) ^ 2 * (normSq c : ℝ) *
        (normSq (add c one) : ℝ) := by exact_mod_cast hbound
    simpa only [cast_normSq, embed_add, embed_one] using ht
  have hp : 0 ≤ (h : ℝ) * ‖embed c‖ * ‖embed c + 1‖ := by positivity
  have he : ((h : ℝ) * ‖embed c‖ * ‖embed c + 1‖) ^ 2 =
      (h : ℝ) ^ 2 * ‖embed c‖ ^ 2 * ‖embed c + 1‖ ^ 2 := by ring
  nlinarith

end QComplex

/-- One final quantization charges BOTH components and rounds its error upward.
This is used for the quotient and again, separately, for final accumulation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalComplexQuotient.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d0a0a3872bd96721dce77683488b15898cc803a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
