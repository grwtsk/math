# norm_sq_toLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aff8b853-de53-0cc5-a023-2f3f1c22ec78",
  "kind": "theorem",
  "lexical_name": "norm_sq_toLp",
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
  "slug": "norm-sq-tolp--ffdb783e33d2788e501b4a36",
  "source": {
    "blob": "7568bf2a3a07e02886e9242feda896e9d827c3fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CandidateRealizationLiteralCheck/Variant11cd87eb5364449b517624c08e5e18c7c0007ad41cec230b6198d2637f6da97b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffdb783e33d2788e501b4a360c624e06ef7e6226f3278299181f74b8cc13e4dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CandidateRealizationLiteralCheck/Variant11cd87eb5364449b517624c08e5e18c7c0007ad41cec230b6198d2637f6da97b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aff8b853-de53-0cc5-a023-2f3f1c22ec78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem norm_sq_toLp (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    ‖hf.toLp f‖ ^ 2 = ∫ t : ℝ, ‖f t‖ ^ 2 := by
  rw [@norm_sq_eq_re_inner ℂ, L2.inner_def]
  rw [← integral_re]
  · apply integral_congr_ae
    filter_upwards [hf.coeFn_toLp] with t ht
    rw [ht, inner_self_eq_norm_sq_to_K]
    rw [← RCLike.ofReal_pow, RCLike.ofReal_re]
  · exact L2.integrable_inner _ _

/-- The full-line vector has the exact angular Plancherel norm, with no missing Jacobian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CandidateRealizationLiteralCheck/Variant11cd87eb5364449b517624c08e5e18c7c0007ad41cec230b6198d2637f6da97b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CandidateRealizationLiteralCheck/Variant11cd87eb5364449b517624c08e5e18c7c0007ad41cec230b6198d2637f6da97b.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7568bf2a3a07e02886e9242feda896e9d827c3fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
