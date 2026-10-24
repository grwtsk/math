# remainder_shift_bounds_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed106f40-3e3c-6ddd-82b4-3e5e5b4e8bc7",
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
  "slug": "remainder-shift-bounds-at-radius--ab91998fb2c26676e1cd832e",
  "source": {
    "blob": "a6bbf6b988f45485cd7527dc5a653e84295c4104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalUniformEquivalence/Variantd5406b0cfa7c4185c51724667a5bd9dc48a2fe397771bb502a71b57bba4a2b0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab91998fb2c26676e1cd832ef098590e3618f41ae3cbb481555f4b100420d6a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalUniformEquivalence/Variantd5406b0cfa7c4185c51724667a5bd9dc48a2fe397771bb502a71b57bba4a2b0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed106f40-3e3c-6ddd-82b4-3e5e5b4e8bc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–45.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalUniformEquivalence/Variantd5406b0cfa7c4185c51724667a5bd9dc48a2fe397771bb502a71b57bba4a2b0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalUniformEquivalence/Variantd5406b0cfa7c4185c51724667a5bd9dc48a2fe397771bb502a71b57bba4a2b0d.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6bbf6b988f45485cd7527dc5a653e84295c4104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
