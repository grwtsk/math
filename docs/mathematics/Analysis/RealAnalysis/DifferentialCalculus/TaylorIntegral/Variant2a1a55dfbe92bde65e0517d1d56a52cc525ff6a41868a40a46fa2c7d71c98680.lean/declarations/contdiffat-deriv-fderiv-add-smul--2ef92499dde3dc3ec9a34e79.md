# ContDiffAt.deriv_fderiv_add_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a174b01c8df2ead300c6a90c7225d60b8d4b0190",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a1a55dfbe92bde65e0517d1d56a52cc525ff6a41868a40a46fa2c7d71c98680.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46439bed-3167-c28a-f3b5-3fb9370d1b1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79ebea0a-14da-1649-82d7-d660616e1d89",
  "kind": "theorem",
  "lexical_name": "ContDiffAt.deriv_fderiv_add_smul",
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
  "slug": "contdiffat-deriv-fderiv-add-smul--2ef92499dde3dc3ec9a34e79",
  "source": {
    "blob": "a174b01c8df2ead300c6a90c7225d60b8d4b0190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TaylorIntegral/Variant2a1a55dfbe92bde65e0517d1d56a52cc525ff6a41868a40a46fa2c7d71c98680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ef92499dde3dc3ec9a34e799564ebc5b96993d0061c484154326c81f298296f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TaylorIntegral/Variant2a1a55dfbe92bde65e0517d1d56a52cc525ff6a41868a40a46fa2c7d71c98680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79ebea0a-14da-1649-82d7-d660616e1d89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffAt.deriv_fderiv_add_smul (hf : ContDiffAt 𝕜 (n + 1) f (x + t • y)) :
    deriv (fun (s : 𝕜) ↦ iteratedFDeriv 𝕜 n f (x + s • y) (fun _ ↦ y)) t =
    iteratedFDeriv 𝕜 (n + 1) f (x + t • y) (fun _ ↦ y) := by
  have hf' : DifferentiableAt 𝕜 (iteratedFDeriv 𝕜 n f) (x + t • y) := by
    apply hf.differentiableAt_iteratedFDeriv
    norm_cast
    exact lt_add_one n
  convert (hf'.continuousMultilinear_apply_const _).deriv_comp_add_smul
  exact hf'.iteratedFDeriv_succ_apply_left'

end NontriviallyNormedField

variable [NormedSpace ℝ E] [NormedSpace ℝ F]

variable {f : E → F} {x y : E} {n : ℕ}

variable [CompleteSpace F]

/-- *Taylor's theorem with remainder in integral form*. If `f` is `n + 1` times continuously
differentiable, then `f (x + y)` is given by
`∑ k in 0..n, D^k f(x; y,..,y) / k! + 1/n! ∫ t in 0..1, (1 - t) ^ n • D^{n+1}f (x + t • y; y,..,y)`,
where `D^k f` denotes the iterated derivative of `f`.

In the case that `n = 1`, this is a reformulation of the fundamental theorem of calculus, namely
`f (x + y) = f x + ∫ t in 0..1, D f(x + t • y; y)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TaylorIntegral/Variant2a1a55dfbe92bde65e0517d1d56a52cc525ff6a41868a40a46fa2c7d71c98680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TaylorIntegral/Variant2a1a55dfbe92bde65e0517d1d56a52cc525ff6a41868a40a46fa2c7d71c98680.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a174b01c8df2ead300c6a90c7225d60b8d4b0190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
