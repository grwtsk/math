# decay_exponents_do_not_force_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8f7c949-8e1f-767b-83ca-5125ce5b2bdb",
  "kind": "theorem",
  "lexical_name": "decay_exponents_do_not_force_contraction",
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
  "slug": "decay-exponents-do-not-force-contraction--44a43193bfb0db32a2ccea6b",
  "source": {
    "blob": "d304043ce381f5d4de0e1e13501bc5b7ab79a84f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44a43193bfb0db32a2ccea6b52573fcbf76e04a5a7c61c1990e0a2f4ff79c4b0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8f7c949-8e1f-767b-83ca-5125ce5b2bdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decay_exponents_do_not_force_contraction :
    ∃ E : ℝ → ℝ,
      (∀ q : ℝ, 0 < q → DifferentiableAt ℝ E q) ∧
      (∀ q : ℝ, 0 < q → |E q| ≤ 1 / Real.sqrt q) ∧
      (∀ q : ℝ, 0 < q → |deriv E q| ≤ 28 / (q * Real.sqrt q)) ∧
      ¬ |E 1 - 2 * E 2| ≤ 1 :=
  ⟨oscillatoryRemainder, fun q hq ↦ (remainder_hasDerivAt q hq).differentiableAt,
    remainder_abs_le, remainder_derivative_abs_le_twenty_eight,
    prime_two_filter_not_contractive⟩

end
end PrimeFilterContractionGuardScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d304043ce381f5d4de0e1e13501bc5b7ab79a84f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
