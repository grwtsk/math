# contDiff_unnormalizedWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a6fbfcf-3302-e7bb-fc8c-6cf0a72e764d",
  "kind": "theorem",
  "lexical_name": "contDiff_unnormalizedWeight",
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
  "slug": "contdiff-unnormalizedweight--f2de7cc6f43ec9cf34be0bfd",
  "source": {
    "blob": "12288ba947808187a77ca6f8729ae47383d63338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variantbda298e19f234f5dcdd08b4b4f167be8440e30c2a80677cbff1695e20894e4f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2de7cc6f43ec9cf34be0bfd2df996a405a50b5317a7141b3ad443249896b0fb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variantbda298e19f234f5dcdd08b4b4f167be8440e30c2a80677cbff1695e20894e4f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a6fbfcf-3302-e7bb-fc8c-6cf0a72e764d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiff_unnormalizedWeight
    (i : I) :
    ContDiff ℝ ⊤ (fun x : E => F.unnormalizedWeight x i) := by
  have hexp :
      ContDiff ℝ ⊤ (fun x : E => Real.exp (F.statistic i x)) :=
    Real.contDiff_exp.comp (F.statistic i).contDiff
  simpa [unnormalizedWeight, Pi.smul_apply, smul_eq_mul] using
    hexp.const_smul (F.baseWeight i)

/-- Exact all-orders iterated derivative of one log-affine weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variantbda298e19f234f5dcdd08b4b4f167be8440e30c2a80677cbff1695e20894e4f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variantbda298e19f234f5dcdd08b4b4f167be8440e30c2a80677cbff1695e20894e4f9.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12288ba947808187a77ca6f8729ae47383d63338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
