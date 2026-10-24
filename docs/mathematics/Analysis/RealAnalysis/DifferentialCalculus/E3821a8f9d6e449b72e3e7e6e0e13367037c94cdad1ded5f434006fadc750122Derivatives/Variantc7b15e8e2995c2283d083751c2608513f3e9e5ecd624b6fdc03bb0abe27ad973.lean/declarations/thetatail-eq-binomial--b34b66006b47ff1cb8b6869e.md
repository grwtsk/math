# thetaTail_eq_binomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f29d3fa-c770-165d-b0ad-2edef884c995",
  "kind": "theorem",
  "lexical_name": "thetaTail_eq_binomial",
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
  "slug": "thetatail-eq-binomial--b34b66006b47ff1cb8b6869e",
  "source": {
    "blob": "ed535f20a92d2fde3911d4583fe0d1b127a08193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variantc7b15e8e2995c2283d083751c2608513f3e9e5ecd624b6fdc03bb0abe27ad973.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b34b66006b47ff1cb8b6869e113fab3ab3d27089f229f790607a2e188dc09fc0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variantc7b15e8e2995c2283d083751c2608513f3e9e5ecd624b6fdc03bb0abe27ad973.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f29d3fa-c770-165d-b0ad-2edef884c995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_eq_binomial (r : ℕ) (t : ℝ) :
    thetaTail (r + 1) t =
      (∑ i ∈ Finset.range (r + 1), tailBinomialCoeff r i t * sourcePowerTail i t) /
        (r.factorial : ℝ) := by
  simp only [thetaTail]
  rw [integral_div]
  rw [← integral_source_coeff_sum r (fun i => tailBinomialCoeff r i t) t]
  simp_rw [tailBinomialCoeff_sum]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variantc7b15e8e2995c2283d083751c2608513f3e9e5ecd624b6fdc03bb0abe27ad973.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variantc7b15e8e2995c2283d083751c2608513f3e9e5ecd624b6fdc03bb0abe27ad973.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed535f20a92d2fde3911d4583fe0d1b127a08193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
