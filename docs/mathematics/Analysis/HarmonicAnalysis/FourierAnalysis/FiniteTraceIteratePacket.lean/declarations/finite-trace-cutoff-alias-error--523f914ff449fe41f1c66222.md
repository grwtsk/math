# finite_trace_cutoff_alias_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66b1f58e-a04e-cddd-6784-d520f528a03c",
  "kind": "theorem",
  "lexical_name": "finite_trace_cutoff_alias_error",
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
  "slug": "finite-trace-cutoff-alias-error--523f914ff449fe41f1c66222",
  "source": {
    "blob": "07c561c1e13299baec78548ce80ac721d4ecf17c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 205,
    "path": "GRWTSK/Analysis/Fourier/FiniteTraceIteratePacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:523f914ff449fe41f1c6622254401c8cf5084f4d7047adfcec366d237f2d1a61",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66b1f58e-a04e-cddd-6784-d520f528a03c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_trace_cutoff_alias_error
    (t : TraceShapedInput γ m)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M) :
    ‖torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket t M)‖ ≤
      aliasMass q (tracePacket t K) + omittedMass t K M := by
  have hlarge := integralProjection_large_eq_small_add_omitted t hKM
  have hdiff :
      torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket t M) =
      (torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket t K)) -
        omittedIntegral t K M := by
    rw [hlarge]
    abel
  rw [hdiff]
  exact (norm_sub_le _ _).trans
    (add_le_add
      (torsionProjection_error_le q (tracePacket t K))
      (omittedIntegral_norm_le t K M))

/-- If the selected Fourier test vanishes on *each* omitted term's
n*length argument, its actual finite coefficient vanishes. This does
not assert a theorem about omitted primitive geodesics beyond the
supplied candidate family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteTraceIteratePacket.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07c561c1e13299baec78548ce80ac721d4ecf17c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
