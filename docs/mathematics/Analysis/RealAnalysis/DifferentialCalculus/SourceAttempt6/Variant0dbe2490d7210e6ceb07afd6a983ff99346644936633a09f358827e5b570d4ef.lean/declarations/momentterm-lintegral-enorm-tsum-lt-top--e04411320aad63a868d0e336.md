# momentTerm_lintegral_enorm_tsum_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05a0833a-e51c-f89c-0d7b-f2f7d35a9bec",
  "kind": "theorem",
  "lexical_name": "momentTerm_lintegral_enorm_tsum_lt_top",
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
  "slug": "momentterm-lintegral-enorm-tsum-lt-top--e04411320aad63a868d0e336",
  "source": {
    "blob": "6cd32b8a795cb8e5f3be05bd4b8f48f35ea5540f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 277,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variant0dbe2490d7210e6ceb07afd6a983ff99346644936633a09f358827e5b570d4ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e04411320aad63a868d0e336d65dac57eef2a4f7deef0bdcbaac3040df001e6a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variant0dbe2490d7210e6ceb07afd6a983ff99346644936633a09f358827e5b570d4ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05a0833a-e51c-f89c-0d7b-f2f7d35a9bec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem momentTerm_lintegral_enorm_tsum_lt_top {x : ℝ} (hx : -2 < x) :
    (∑' n : ℕ, ∫⁻ t : ℝ in Ioi 0, ‖momentTerm x n t‖ₑ) < ⊤ := by
  calc
    _ = ∑' n : ℕ, ENNReal.ofReal (secondTerm x n) := by
      apply tsum_congr
      intro n
      rw [← ofReal_integral_norm_eq_lintegral_enorm (momentTerm_integrable hx n),
        momentTerm_integral_norm hx n]
    _ = ENNReal.ofReal (∑' n : ℕ, secondTerm x n) :=
      (ENNReal.ofReal_tsum_of_nonneg (secondTerm_nonneg x) (secondTerm_summable hx)).symm
    _ < ⊤ := ENNReal.ofReal_lt_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variant0dbe2490d7210e6ceb07afd6a983ff99346644936633a09f358827e5b570d4ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variant0dbe2490d7210e6ceb07afd6a983ff99346644936633a09f358827e5b570d4ef.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cd32b8a795cb8e5f3be05bd4b8f48f35ea5540f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
