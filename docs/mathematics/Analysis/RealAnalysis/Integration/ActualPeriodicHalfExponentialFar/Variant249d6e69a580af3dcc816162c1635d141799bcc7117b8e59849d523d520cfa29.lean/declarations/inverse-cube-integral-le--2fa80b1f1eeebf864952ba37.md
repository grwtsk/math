# inverse_cube_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73c5c7ed-f0ba-c205-c434-1c8d4692025a",
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
  "slug": "inverse-cube-integral-le--2fa80b1f1eeebf864952ba37",
  "source": {
    "blob": "c141616799cd613b89fdb7a6c82365eb0783cff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFar/Variant249d6e69a580af3dcc816162c1635d141799bcc7117b8e59849d523d520cfa29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fa80b1f1eeebf864952ba37db64e0c717d270dafdb8d67e7f73ec274c40912c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFar/Variant249d6e69a580af3dcc816162c1635d141799bcc7117b8e59849d523d520cfa29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73c5c7ed-f0ba-c205-c434-1c8d4692025a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_cube_integral_le {v b : ℝ} (hv : 0 < v) (hvb : v ≤ b) :
    (∫ u in v..b, 1 / u ^ 3) ≤ 1 / (2 * v ^ 2) := by
  have hp (u : ℝ) (hu : u ∈ uIcc v b) : 0 < u := by
    rw [uIcc_of_le hvb] at hu
    exact hv.trans_le hu.1
  have hd (u : ℝ) (hu : u ∈ uIcc v b) :
      HasDerivAt (fun u : ℝ => -(1 / (2 * u ^ 2))) (1 / u ^ 3) u := by
    have h := ((hasDerivAt_inv (hp u hu).ne').pow 2).const_mul (-1 / 2 : ℝ)
    convert h using 1 <;> try rfl
    · funext x
      simp only [Pi.pow_apply, div_eq_mul_inv, mul_inv_rev, inv_pow]
      ring
    · field_simp [(hp u hu).ne']
      ring_nf
      simp only [mul_inv_cancel₀ (hp u hu).ne', one_mul]

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFar/Variant249d6e69a580af3dcc816162c1635d141799bcc7117b8e59849d523d520cfa29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFar/Variant249d6e69a580af3dcc816162c1635d141799bcc7117b8e59849d523d520cfa29.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c141616799cd613b89fdb7a6c82365eb0783cff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
