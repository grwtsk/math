# integrable_exp_mul_of_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d3296eb-a8ae-9cf9-782b-be2e633831b5",
  "kind": "lemma",
  "lexical_name": "integrable_exp_mul_of_abs_le",
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
  "slug": "integrable-exp-mul-of-abs-le--0e2938a9fa0b6dee88218e2d",
  "source": {
    "blob": "883c2b712afc8fbc98050e857165c78eb6d6840c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e2938a9fa0b6dee88218e2de2c4ef0c7ad2eceee93c0e0c300e6ff78dd1bf16",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d3296eb-a8ae-9cf9-782b-be2e633831b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_exp_mul_of_abs_le
    (hu_int_pos : Integrable (fun ω ↦ exp (u * X ω)) μ)
    (hu_int_neg : Integrable (fun ω ↦ exp (- u * X ω)) μ)
    (htu : |t| ≤ |u|) :
    Integrable (fun ω ↦ exp (t * X ω)) μ := by
  refine integrable_exp_mul_of_le_of_le (a := -|u|) (b := |u|) ?_ ?_ ?_ ?_
  · rcases le_total 0 u with hu | hu
    · rwa [abs_of_nonneg hu]
    · simpa [abs_of_nonpos hu]
  · rcases le_total 0 u with hu | hu
    · rwa [abs_of_nonneg hu]
    · rwa [abs_of_nonpos hu]
  · rw [neg_le]
    exact (neg_le_abs t).trans htu
  · exact (le_abs_self t).trans htu

/-- If `ω ↦ exp (u * X ω)` is integrable at `u ≥ 0`, then it is integrable on `[0, u]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `883c2b712afc8fbc98050e857165c78eb6d6840c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
