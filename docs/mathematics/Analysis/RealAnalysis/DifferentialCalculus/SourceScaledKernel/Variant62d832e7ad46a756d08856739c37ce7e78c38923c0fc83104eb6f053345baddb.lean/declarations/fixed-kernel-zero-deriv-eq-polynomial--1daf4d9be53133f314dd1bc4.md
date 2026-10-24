# fixed_kernel_zero_deriv_eq_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f47e5184-22f4-92e6-6201-30ccd35880fb",
  "kind": "theorem",
  "lexical_name": "fixed_kernel_zero_deriv_eq_polynomial",
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
  "slug": "fixed-kernel-zero-deriv-eq-polynomial--1daf4d9be53133f314dd1bc4",
  "source": {
    "blob": "a3053a6ee4028934f237cb5de0bcf0839e2c16fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 243,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1daf4d9be53133f314dd1bc44e006144333c68028241131f7fba3ba5a62eab79",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f47e5184-22f4-92e6-6201-30ccd35880fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem fixed_kernel_zero_deriv_eq_polynomial (n : ℕ) (hn : n ≤ 8)
    (x : ℝ) (hx0 : 0 ≤ x) (hx2 : x ≤ 2) :
    iteratedDeriv n (fixedKernel 0) x =
      iteratedDeriv n (fun q ↦ endpointExpandedZero (2 - q)) x := by
  have he : EqOn (fixedKernel 0) (fun q ↦ endpointExpandedZero (2 - q)) (Ioo (0 : ℝ) 2) := by
    intro q hq
    change fixedKernel 0 q = endpointExpandedZero (2 - q)
    rw [endpoint_expanded_zero_eq]
    have h := fixed_kernel_zero_endpoint (2 - q) (by linarith [hq.2]) (by linarith [hq.1])
    rw [show 2 - (2 - q) = q by ring] at h
    exact h
  have hd := he.iteratedDeriv_of_isOpen isOpen_Ioo n
  have hc1 := fixed_kernel_zero_cont_diff_eight.continuous_iteratedDeriv n
    (by exact_mod_cast hn)
  have hp : ContDiff ℝ (n : ℕ) (fun q : ℝ ↦ endpointExpandedZero (2 - q)) := by
    unfold endpointExpandedZero
    fun_prop
  have hc2 := hp.continuous_iteratedDeriv n (le_refl _)
  have hclosed := hd.closure hc1 hc2
  rw [closure_Ioo (by norm_num : (0 : ℝ) ≠ 2)] at hclosed
  exact hclosed ⟨hx0, hx2⟩

/-- The native second fixed kernel has exact seventh-order endpoint factorization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3053a6ee4028934f237cb5de0bcf0839e2c16fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
