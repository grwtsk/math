# riesz_zero_exponential_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c09c5a8a-91e8-b99e-ddf7-fe0e21c69d81",
  "kind": "theorem",
  "lexical_name": "riesz_zero_exponential_norm_le",
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
  "slug": "riesz-zero-exponential-norm-le--a89fa64b9b51ef27aaaa9250",
  "source": {
    "blob": "8efa9bdd38506dec34f6a5f7fcfbbb867f6bcf33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 173,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a89fa64b9b51ef27aaaa9250107c9a14265170a3badbf47113e39ad563b12d04",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c09c5a8a-91e8-b99e-ddf7-fe0e21c69d81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_zero_exponential_norm_le (A : ℝ) (hA : 1 ≤ A) (o : ZeroOccurrence) :
    ‖Complex.exp (2 * (A : ℂ) * shiftedValue o)‖ ≤ Real.exp A := by
  rw [Complex.norm_exp]
  apply Real.exp_le_exp.mpr
  norm_num only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re,
    Complex.ofReal_im, Complex.re_ofNat, Complex.im_ofNat, mul_zero, zero_mul,
    zero_add, sub_zero]
  have hs := (shiftedValue_strip o).2
  nlinarith

/-- Every actual exponential Riesz weight is controlled by the unconditional strip majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8efa9bdd38506dec34f6a5f7fcfbbb867f6bcf33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
