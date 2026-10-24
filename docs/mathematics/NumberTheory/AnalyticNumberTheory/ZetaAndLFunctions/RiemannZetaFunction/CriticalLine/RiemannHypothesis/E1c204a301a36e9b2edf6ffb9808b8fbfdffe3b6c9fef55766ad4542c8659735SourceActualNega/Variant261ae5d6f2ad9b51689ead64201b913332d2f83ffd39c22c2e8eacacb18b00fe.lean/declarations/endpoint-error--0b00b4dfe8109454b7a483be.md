# endpoint_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e4cf2f2-3d34-0518-f7e9-fe4babddd7e6",
  "kind": "theorem",
  "lexical_name": "endpoint_error",
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
  "slug": "endpoint-error--0b00b4dfe8109454b7a483be",
  "source": {
    "blob": "f747b8082a29ce456e30d6211b00258740a0d828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant261ae5d6f2ad9b51689ead64201b913332d2f83ffd39c22c2e8eacacb18b00fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b00b4dfe8109454b7a483bec275d063f4f9fcbcc0a8c460fe335c1bd0b5a42a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant261ae5d6f2ad9b51689ead64201b913332d2f83ffd39c22c2e8eacacb18b00fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e4cf2f2-3d34-0518-f7e9-fe4babddd7e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpoint_error (A r : ℝ) (hA : 13 ≤ A) (hr : 0 ≤ r) (hr' : r ≤ 13) :
    |endpointPolynomial A r - actualLeadingEndpointPolynomial r| ≤ 5000000 / A := by
  have hp : 0 < A := by linarith
  let v := r / A
  let b := (2 - v) ^ 2
  let d := (1 - v) ^ 2
  have hv0 : 0 ≤ v := div_nonneg hr hp.le
  have hv1 : v ≤ 1 := (div_le_iff₀ hp).2 (by linarith)
  have hb0 : 0 ≤ b := sq_nonneg _
  have hb4 : b ≤ 4 := by dsimp [b]; nlinarith
  have hd0 : 0 ≤ d := sq_nonneg _
  have hd1 : d ≤ 1 := by dsimp [d]; nlinarith
  have hb : |b - 4| ≤ 4 * v := by
    rw [abs_of_nonpos (by linarith)]
    dsimp [b]
    nlinarith
  have hd : |d - 1| ≤ 2 * v := by
    rw [abs_of_nonpos (by linarith)]
    dsimp [d]
    nlinarith
  have hbb : |b ^ 2 - 16| ≤ 32 * v := by
    rw [show b ^ 2 - 16 = (b - 4) * (b + 4) by ring, abs_mul,
      abs_of_nonneg (by linarith : 0 ≤ b + 4)]
    have hh := mul_le_mul_of_nonneg_right hb (by linarith : 0 ≤ b + 4)
    have hh' := mul_le_mul_of_nonneg_left (by linarith : b + 4 ≤ 8) (by positivity : 0 ≤ 4 * v)
    nlinarith
  have hid : endpointPolynomial A r - actualLeadingEndpointPolynomial r =
      r ^ 2 * (48 * (b - 4) + 56 * b * (d - 1) - r ^ 2 / 4 * (b ^ 2 - 16)) := by
    unfold endpointPolynomial actualLeadingEndpointPolynomial
    dsimp [b, d, v]
    ring
  rw [hid, abs_mul, abs_of_nonneg (sq_nonneg r)]
  have ht : |48 * (b - 4) + 56 * b * (d - 1) - r ^ 2 / 4 * (b ^ 2 - 16)| ≤
      48 * (4 * v) + 56 * b * (2 * v) + r ^ 2 / 4 * (32 * v) := by
    calc
      _ ≤ |48 * (b - 4)| + |56 * b * (d - 1)| + |r ^ 2 / 4 * (b ^ 2 - 16)| :=
        (abs_sub _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
      _ = 48 * |b - 4| + 56 * b * |d - 1| + r ^ 2 / 4 * |b ^ 2 - 16| := by
        rw [abs_mul (48 : ℝ), abs_mul (56 * b), abs_mul (r ^ 2 / 4),
          abs_of_nonneg (by positivity : 0 ≤ (48 : ℝ)),
          abs_of_nonneg (by positivity : 0 ≤ 56 * b),
          abs_of_nonneg (by positivity : 0 ≤ r ^ 2 / 4)]
      _ ≤ _ := add_le_add (add_le_add (mul_le_mul_of_nonneg_left hb (by norm_num))
        (mul_le_mul_of_nonneg_left hd (by positivity)))
        (mul_le_mul_of_nonneg_left hbb (by positivity))
  have hr2 : r ^ 2 ≤ 169 := by nlinarith
  have htv : 48 * (4 * v) + 56 * b * (2 * v) + r ^ 2 / 4 * (32 * v) ≤ 1992 * v := by
    have hb' := mul_le_mul_of_nonneg_right hb4 hv0
    have hr' := mul_le_mul_of_nonneg_right hr2 hv0
    nlinarith
  have hmain := mul_le_mul_of_nonneg_left (ht.trans htv) (sq_nonneg r)
  have hh := mul_le_mul_of_nonneg_right hr2 (by positivity : 0 ≤ 1992 * v)
  have hvr : v ≤ 13 / A := div_le_div_of_nonneg_right hr' hp.le
  have hvb := mul_le_mul_of_nonneg_left hvr (by norm_num : (0 : ℝ) ≤ 169 * 1992)
  have hlast : (169 : ℝ) * 1992 * (13 / A) ≤ 5000000 / A := by
    rw [show (169 : ℝ) * 1992 * (13 / A) = (169 * 1992 * 13) / A by ring]
    apply (div_le_div_iff_of_pos_right hp).2
    norm_num
  exact hmain.trans (hh.trans (by nlinarith [hvb.trans hlast]))

/-- Finite source-polynomial convergence is uniform on the entire closed edge interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant261ae5d6f2ad9b51689ead64201b913332d2f83ffd39c22c2e8eacacb18b00fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant261ae5d6f2ad9b51689ead64201b913332d2f83ffd39c22c2e8eacacb18b00fe.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f747b8082a29ce456e30d6211b00258740a0d828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
