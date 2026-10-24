# scaled_step_formulas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09a08c48-8575-0e79-886b-5687d797cc75",
  "kind": "theorem",
  "lexical_name": "scaled_step_formulas",
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
  "slug": "scaled-step-formulas--192f9a5ad12b3d86c7f3f850",
  "source": {
    "blob": "a378784662cc5a7e93ae72dc96d99407338c42ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 105,
    "path": "GRWTSK/Analysis/Complex/IntegerDyadicTrace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:192f9a5ad12b3d86c7f3f8505d3aef94d73cf5e174d3df7f6701f9cd42d84ac9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09a08c48-8575-0e79-886b-5687d797cc75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_step_formulas (bits : ℕ) (a : GridState) :
    scaleQ bits * (QComplex.mul (decode bits a).value (decode bits a).value).re =
        (realProduct a : ℚ) / (scaleZ bits : ℚ) ∧
    scaleQ bits * (QComplex.mul (decode bits a).value (decode bits a).value).im =
        (imagProduct a : ℚ) / (scaleZ bits : ℚ) ∧
    scaleQ bits * ((decode bits a).error *
        (2 * QComplex.rect (decode bits a).value + (decode bits a).error) + roundoffQ bits) =
        (errorProduct bits a : ℚ) / (scaleZ bits : ℚ) := by
  have hp := scaleQ_pos bits
  have hn := ne_of_gt hp
  simp only [decode, QComplex.mul, QComplex.rect, roundoffQ, realProduct,
    imagProduct, errorProduct, Int.cast_add, Int.cast_sub, Int.cast_mul,
    Int.cast_pow, Int.cast_ofNat, Int.cast_abs, cast_scaleZ,
    abs_div, abs_of_pos hp]
  constructor
  · field_simp [hn] <;> ring
  constructor <;> field_simp [hn] <;> ring

/-- Each accepted transition is EXACTLY the inherited rational step, including the error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntegerDyadicTrace.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a378784662cc5a7e93ae72dc96d99407338c42ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
