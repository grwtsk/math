# remainder_shift_bounds_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c39d1e83-3dcf-f78c-25f2-2d46da49d67d",
  "kind": "theorem",
  "lexical_name": "remainder_shift_bounds_at_radius",
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
  "slug": "remainder-shift-bounds-at-radius--f78af5e092bb8de21b92ab51",
  "source": {
    "blob": "ad0dfd101a55b6a9d5159231b20a137086efea03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalUniformEquivalence/Varianta8c7ee9dfa895444b9cc446fdd771983f6b18dfa6113b0786ab781050585c1be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f78af5e092bb8de21b92ab511fb85ec0f56c04ae6e8b794d760be20b3e347a28",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalUniformEquivalence/Varianta8c7ee9dfa895444b9cc446fdd771983f6b18dfa6113b0786ab781050585c1be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c39d1e83-3dcf-f78c-25f2-2d46da49d67d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainder_shift_bounds_at_radius {R A : ℝ} (hR : 1 ≤ R) (hRA : R ≤ A) :
    (1 + halfEnergyValue R) * dirichletMoment 1 ≤
        (rationalRemainderContour A).re - (compensatedAngularContour A).re ∧
      (rationalRemainderContour A).re - (compensatedAngularContour A).re <
        3 * dirichletMoment 1 := by
  rw [rational_remainder_eq_constant_remainder A (hR.trans hRA)]
  have hlo := mul_le_mul_of_nonneg_right (halfEnergyValue_mono hR hRA)
    (dirichletMoment_nonneg 1)
  have hhi := mul_lt_mul_of_pos_right (halfEnergyValue_lt_two A)
    dirichletMoment_one_pos
  constructor <;> nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalUniformEquivalence/Varianta8c7ee9dfa895444b9cc446fdd771983f6b18dfa6113b0786ab781050585c1be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalUniformEquivalence/Varianta8c7ee9dfa895444b9cc446fdd771983f6b18dfa6113b0786ab781050585c1be.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad0dfd101a55b6a9d5159231b20a137086efea03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
