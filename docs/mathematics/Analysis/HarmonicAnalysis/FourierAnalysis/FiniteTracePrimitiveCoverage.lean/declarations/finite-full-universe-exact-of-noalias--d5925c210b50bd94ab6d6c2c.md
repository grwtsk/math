# finite_full_universe_exact_of_noAlias

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d6a8974-6453-dd5a-a4d4-20309e5dad22",
  "kind": "theorem",
  "lexical_name": "finite_full_universe_exact_of_noAlias",
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
  "slug": "finite-full-universe-exact-of-noalias--d5925c210b50bd94ab6d6c2c",
  "source": {
    "blob": "f5a4c670beb8dce56684d1af6473e2b68a71c495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 277,
    "path": "GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5925c210b50bd94ab6d6c2cea4a63536fa093ada55342d23872756a1eac3851",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTracePrimitiveCoverage.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d6a8974-6453-dd5a-a4d4-20309e5dad22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_full_universe_exact_of_noAlias
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (c : FiniteFourierSupportCertificate t)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M)
    (hK : AdmissibleCutoff t c K)
    (hcover : CoversContributingCandidates t u c.radius)
    (hno : NoAlias q (tracePacket t K)) :
    torsionProjection q (tracePacket t K) =
      integralProjection (tracePacket (fullInput t u) M) := by
  have hbound :=
    finite_full_universe_error_le_alias_of_support t u c q hKM hK hcover
  have hzero : aliasMass q (tracePacket t K) = 0 := by
    have hset := aliasSources_eq_empty_of_noAlias q (tracePacket t K) hno
    simp [aliasMass, hset]
  rw [hzero] at hbound
  have hnorm :
      ‖torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket (fullInput t u) M)‖ = 0 :=
    le_antisymm hbound (norm_nonneg _)
  exact sub_eq_zero.mp (norm_eq_zero.mp hnorm)

/-!
## Bounded hostile and positive fixtures

These are algebraic source-ID fixtures, NOT genuine geodesics or
smooth Selberg tests. They demonstrate that the coverage condition
accepts a truly omitted primitive only when its length is beyond B,
and rejects an omitted primitive with a potentially contributing length.
-/

/-- A selected singleton {false}; the unselected true candidate has
configurable length r. Only the selected source needs positive length
in this input, and its length is always 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTracePrimitiveCoverage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a4c670beb8dce56684d1af6473e2b68a71c495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
