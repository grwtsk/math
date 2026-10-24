# actualCriticalAdjustedLowerColumnTrace_abs_le_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f57802a9-0a8f-f30a-dcf0-b7caad7d0657",
  "kind": "theorem",
  "lexical_name": "actualCriticalAdjustedLowerColumnTrace_abs_le_square",
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
  "slug": "actualcriticaladjustedlowercolumntrace-abs-le-square--b1d31b8f8c950bf0a90b3e4e",
  "source": {
    "blob": "d61ca71d83795c2070f6ab8126f39503f9a3e328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 264,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variante46d9d5625ec527778ec9e2f16a2a3ef4a4f47e857c326b00fa27f1b2eca66cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1d31b8f8c950bf0a90b3e4e0e10a0375d7eb3786a396c4ce8d39fd896786158",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variante46d9d5625ec527778ec9e2f16a2a3ef4a4f47e857c326b00fa27f1b2eca66cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f57802a9-0a8f-f30a-dcf0-b7caad7d0657`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalAdjustedLowerColumnTrace_abs_le_square {A : ℝ} (hA : 91 ≤ A) :
    |actualCriticalAdjustedLowerColumnTrace A| ≤
      25728 * (Real.log 4 + 4 + Real.log 2) / A ^ 2 := by
  have hU := Nat.lt_floor_add_one (A ^ 2)
  have hUs : A ^ 2 ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
    simp only [Nat.cast_add, Nat.cast_one]
    exact hU.le
  exact (actualCriticalAdjustedLowerColumnTrace_abs_le hA).trans
    (div_le_div_of_nonneg_left (by positivity) (by positivity : 0 < A ^ 2) hUs)

/-- Only this complete finite correction vanishes; the signed interior remains actual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variante46d9d5625ec527778ec9e2f16a2a3ef4a4f47e857c326b00fa27f1b2eca66cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variante46d9d5625ec527778ec9e2f16a2a3ef4a4f47e857c326b00fa27f1b2eca66cb.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d61ca71d83795c2070f6ab8126f39503f9a3e328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
