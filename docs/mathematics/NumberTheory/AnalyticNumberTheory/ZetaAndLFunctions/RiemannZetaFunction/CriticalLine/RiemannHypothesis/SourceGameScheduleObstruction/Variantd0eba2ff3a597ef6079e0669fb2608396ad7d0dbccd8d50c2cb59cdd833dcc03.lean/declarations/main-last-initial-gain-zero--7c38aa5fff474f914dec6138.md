# main_last_initial_gain_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f0a44fc-981b-f6cc-ece7-05629ac308e2",
  "kind": "theorem",
  "lexical_name": "main_last_initial_gain_zero",
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
  "slug": "main-last-initial-gain-zero--7c38aa5fff474f914dec6138",
  "source": {
    "blob": "772003c3692bafb28bc8f2ece7235998834a323a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGameScheduleObstruction/Variantd0eba2ff3a597ef6079e0669fb2608396ad7d0dbccd8d50c2cb59cdd833dcc03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c38aa5fff474f914dec6138e6c77ba35272629f5f59329ede950cbdb641f86f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGameScheduleObstruction/Variantd0eba2ff3a597ef6079e0669fb2608396ad7d0dbccd8d50c2cb59cdd833dcc03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f0a44fc-981b-f6cc-ece7-05629ac308e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem main_last_initial_gain_zero {A : ℝ} (hA : 1 ≤ A) :
    mainLastEventGain A 0 = 0 := by
  have hx : (2 : ℝ) ≤ Real.exp (2 * A) := by
    have he := Real.add_one_le_exp (2 * A)
    linarith
  have hN : 2 ≤ ⌊Real.exp (2 * A)⌋₊ :=
    (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mpr hx
  have hn : (0 : ℕ) ≠ sourceEventCount A - 1 := by
    unfold sourceEventCount
    omega
  simp [mainLastEventGain, main_first_initial_gain, hn]

/-- The refined schedule preserves the complete native first-prime signed total. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGameScheduleObstruction/Variantd0eba2ff3a597ef6079e0669fb2608396ad7d0dbccd8d50c2cb59cdd833dcc03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGameScheduleObstruction/Variantd0eba2ff3a597ef6079e0669fb2608396ad7d0dbccd8d50c2cb59cdd833dcc03.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `772003c3692bafb28bc8f2ece7235998834a323a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
