# IsOpen.ae_eq_zero_of_integral_smooth_smul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "505ffcd28914f509cd3472fef1bd3fc6b8d5534c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78bb5a2c-bde8-72a0-8ba5-a9af6fe1b5bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:875966e9-a967-4377-331d-672aaa790fe3",
  "kind": "theorem",
  "lexical_name": "IsOpen.ae_eq_zero_of_integral_smooth_smul_eq_zero",
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
  "slug": "isopen-ae-eq-zero-of-integral-smooth-smul-eq-zero--64d4b01b4a078d34d146d79f",
  "source": {
    "blob": "505ffcd28914f509cd3472fef1bd3fc6b8d5534c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64d4b01b4a078d34d146d79fa78b0dc11ff2c5f7866268628e6435f4f9d96c8e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:875966e9-a967-4377-331d-672aaa790fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpen.ae_eq_zero_of_integral_smooth_smul_eq_zero {U : Set M} (hU : IsOpen U)
    (hf : LocallyIntegrableOn f U μ)
    (h : ∀ g : M → ℝ,
      ContMDiff I 𝓘(ℝ) ∞ g → HasCompactSupport g → tsupport g ⊆ U → ∫ x, g x • f x ∂μ = 0) :
    ∀ᵐ x ∂μ, x ∈ U → f x = 0 :=
  haveI := I.locallyCompactSpace
  haveI := ChartedSpace.locallyCompactSpace H M
  haveI := hU.locallyCompactSpace
  haveI := I.secondCountableTopology
  haveI := ChartedSpace.secondCountable_of_sigmaCompact H M
  hU.ae_eq_zero_of_integral_smooth_smul_eq_zero' _
    (isSigmaCompact_iff_sigmaCompactSpace.mpr inferInstance) hf h

/-- If two locally integrable functions on a finite-dimensional real manifold have the same integral
when multiplied by any smooth compactly supported function, then they coincide almost everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `505ffcd28914f509cd3472fef1bd3fc6b8d5534c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
