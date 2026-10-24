# tentSensitivity_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83c4063b-5907-79e4-b889-178599d8d7fd",
  "kind": "theorem",
  "lexical_name": "tentSensitivity_one_le",
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
  "slug": "tentsensitivity-one-le--839e98470aa8bfae74046ebd",
  "source": {
    "blob": "69e8ee54d817d84dbf1b96a7a821e0ae8b8c84c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 77,
    "path": "GRWTSK/Analysis/Complex/TentKernelEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:839e98470aa8bfae74046ebd3e714c4c94975f5a4703abc9fec22d87d4eb7df9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83c4063b-5907-79e4-b889-178599d8d7fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tentSensitivity_one_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    tentSensitivity x h 1 ≤ 4 * (x + h) * Real.log (x + h) := by
  have hlog : Real.log x ≤ Real.log (x + h) :=
    Real.log_le_log (by linarith) (by linarith)
  have hlog0 : 0 ≤ Real.log x := Real.log_nonneg (by linarith)
  have hlogb : 0 ≤ Real.log (x + h) := Real.log_nonneg (by linarith)
  have h1 (a b : ℝ) : sensitivity a b 1 = (b - a) * Real.log b := by
    simp [sensitivity, densityBound]
  have h2 (a b : ℝ) (ha0 : 0 < a) (hab : a ≤ b) :
      sensitivity a b 2 = (b - a) * Real.log b * b := by
    have hl := Real.log_le_log ha0 hab
    norm_num [sensitivity, densityBound, max_eq_right hl, Real.exp_log (ha0.trans_le hab)]
  have he : tentSensitivity x h 1 = (2 * x - h) * Real.log x +
      2 * (x + h) * Real.log (x + h) := by
    unfold tentSensitivity
    norm_num only [one_add_one_eq_two]
    rw [h2 (x - h) x (by linarith) (by linarith), h1, h1,
      h2 x (x + h) (by linarith) (by linarith)]
    field_simp [hh.ne']
    <;> ring
  rw [he]
  have hprod := mul_le_mul hlog (show 2 * x - h ≤ 2 * (x + h) by linarith)
    (by linarith : 0 ≤ 2 * x - h) hlogb
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentKernelEnclosure.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e8ee54d817d84dbf1b96a7a821e0ae8b8c84c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
