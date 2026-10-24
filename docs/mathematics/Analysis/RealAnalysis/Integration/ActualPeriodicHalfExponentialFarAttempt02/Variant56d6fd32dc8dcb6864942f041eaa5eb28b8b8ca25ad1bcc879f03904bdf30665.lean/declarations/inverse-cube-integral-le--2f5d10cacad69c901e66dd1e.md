# inverse_cube_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:783d096b-943a-d361-e766-4a4b2d110661",
  "kind": "theorem",
  "lexical_name": "inverse_cube_integral_le",
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
  "slug": "inverse-cube-integral-le--2f5d10cacad69c901e66dd1e",
  "source": {
    "blob": "c512bc8400c6302bd1686e4b9a1bd70afffdc72e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt02/Variant56d6fd32dc8dcb6864942f041eaa5eb28b8b8ca25ad1bcc879f03904bdf30665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f5d10cacad69c901e66dd1e118b765232e4df23dc9fb02080082cd97747ae38",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt02/Variant56d6fd32dc8dcb6864942f041eaa5eb28b8b8ca25ad1bcc879f03904bdf30665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:783d096b-943a-d361-e766-4a4b2d110661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_cube_integral_le {v b : ℝ} (hv : 0 < v) (hvb : v ≤ b) :
    (∫ u in v..b, 1 / u ^ 3) ≤ 1 / (2 * v ^ 2) := by
  have hp (u : ℝ) (hu : u ∈ uIcc v b) : 0 < u := by
    rw [uIcc_of_le hvb] at hu
    exact hv.trans_le hu.1
  have hd (u : ℝ) (hu : u ∈ uIcc v b) :
      HasDerivAt (fun u : ℝ => -(1 / (2 * u ^ 2))) (1 / u ^ 3) u := by
    have h := (((hasDerivAt_id u).pow 2).const_mul 2).inv
      (mul_pos (by norm_num) (sq_pos_of_pos (hp u hu))).ne'
    convert h.neg using 1 <;> try rfl
    simp only [id_eq]
    field_simp
    ring
  have hc : ContinuousOn (fun u : ℝ => 1 / u ^ 3) (uIcc v b) :=
    continuousOn_const.div (continuousOn_id.pow 3) (fun u hu => (pow_pos (hp u hu) 3).ne')
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt hd hc.intervalIntegrable
  rw [he]
  have hbp : 0 < b := hv.trans_le hvb
  have hb : 0 ≤ 1 / (2 * b ^ 2) := by positivity
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt02/Variant56d6fd32dc8dcb6864942f041eaa5eb28b8b8ca25ad1bcc879f03904bdf30665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt02/Variant56d6fd32dc8dcb6864942f041eaa5eb28b8b8ca25ad1bcc879f03904bdf30665.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c512bc8400c6302bd1686e4b9a1bd70afffdc72e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
