# actual_bump_edge_unit_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7686cda-0c53-5c95-7de1-0b549b8b20ee",
  "kind": "theorem",
  "lexical_name": "actual_bump_edge_unit_lower",
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
  "slug": "actual-bump-edge-unit-lower--5be992378bd855e00435c494",
  "source": {
    "blob": "d9e23669f6630852e9664ff3161c86bfcf18b60f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5be992378bd855e00435c4948f97150b1971f3be67a3fbd109db34ddd9d2b55f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7686cda-0c53-5c95-7de1-0b549b8b20ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bump_edge_unit_lower {A s : ℝ} (hA : 8 ≤ A)
    (hs : 1 ≤ s) (hs2 : s ≤ 2) :
    1 / (A ^ 4 * Real.sqrt A) ≤ scaledBump A (A - s) := by
  have hpos : 0 < A := by linarith
  have hx : A - s ∈ Icc (-A) A := by constructor <;> linarith
  rw [scaledBump_eq_indicator A hpos, indicator_of_mem hx]
  have heq : bumpInterior A (A - s) =
      (s ^ 4 * (2 - s / A) ^ 4) / (A ^ 4 * Real.sqrt A) := by
    unfold bumpInterior
    field_simp [hpos.ne', (Real.sqrt_pos.mpr hpos).ne']
    ; ring
  rw [heq]
  apply div_le_div_of_nonneg_right _ (by positivity)
  have hs4 : 1 ≤ s ^ 4 := one_le_pow₀ hs
  have hfactor : 1 ≤ 2 - s / A := by
    have hu : s / A ≤ 1 := (div_le_iff₀ hpos).mpr (by linarith)
    linarith
  have hf4 : 1 ≤ (2 - s / A) ^ 4 := one_le_pow₀ hfactor
  exact one_le_mul_of_one_le_of_one_le hs4 hf4

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9e23669f6630852e9664ff3161c86bfcf18b60f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
