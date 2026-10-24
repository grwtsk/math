# sum_testKernel_sq_re_eq_integral_norm_bigF_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:743b6fb2-14ea-a455-1604-c5a926441beb",
  "kind": "theorem",
  "lexical_name": "sum_testKernel_sq_re_eq_integral_norm_bigF_sq",
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
  "slug": "sum-testkernel-sq-re-eq-integral-norm-bigf-sq--3510e05356729a91661006bd",
  "source": {
    "blob": "24651d3b4e3943f8a21e03ecc9b507c29f4f3c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 118,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3510e05356729a91661006bdcb5f617a56b123bead5202e256ab02a48da42375",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:743b6fb2-14ea-a455-1604-c5a926441beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_testKernel_sq_re_eq_integral_norm_bigF_sq
    (h : IsAdmissible lam eta) (hZ : IsConjInvariant Z m) :
    (∑ z ∈ Z, ∑ s ∈ Z, (m z * m s : ℂ) * testKernel eta (z - s) ^ 2).re
      = ∫ u in Set.Ioo (-lam) lam, ∫ v in Set.Ioo (-lam) lam,
          ‖bigF eta Z m u v‖ ^ 2 := by
  rw [sum_testKernel_sq_eq_integral_norm_bigF_sq h hZ]
  simp only [integral_complex_ofReal, Complex.ofReal_re]

/-! ## The first-range coefficient estimate -/

/-- The real part of the Bessel coefficient of a symmetric `L²` element, expressed in squared
norms of Hilbert-space pairings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24651d3b4e3943f8a21e03ecc9b507c29f4f3c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
