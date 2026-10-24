# real_right_tendsto_complex_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1662e287-da5b-2f62-6b66-7efff3a0e413",
  "kind": "theorem",
  "lexical_name": "real_right_tendsto_complex_positive",
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
  "slug": "real-right-tendsto-complex-positive--93974404f888249592e55107",
  "source": {
    "blob": "7d0635e3a6a4cac3d838f6e5e735b933a50aff24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variant9c8bb6cf18839f98feffc9bf8a3b132142c76c4bf74704a48fa9dc97f00c7535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93974404f888249592e551075da36626125b6c88c9b49b5d1ed60765352558e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variant9c8bb6cf18839f98feffc9bf8a3b132142c76c4bf74704a48fa9dc97f00c7535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1662e287-da5b-2f62-6b66-7efff3a0e413`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_right_tendsto_complex_positive :
    Tendsto (fun s : ℝ => (s:ℂ)) (𝓝[>] (0:ℝ)) (𝓝[{u:ℂ|0<u.re}] (0:ℂ)) := by
  refine tendsto_nhdsWithin_iff.mpr ⟨?_,?_⟩
  · simpa only [Complex.ofReal_zero] using
      (Complex.continuous_ofReal.continuousAt (x:=(0:ℝ))).tendsto.mono_left
        nhdsWithin_le_nhds
  · filter_upwards [self_mem_nhdsWithin] with s hs
    simpa only [mem_ofPred_eq,Complex.ofReal_re,mem_Ioi] using hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variant9c8bb6cf18839f98feffc9bf8a3b132142c76c4bf74704a48fa9dc97f00c7535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variant9c8bb6cf18839f98feffc9bf8a3b132142c76c4bf74704a48fa9dc97f00c7535.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d0635e3a6a4cac3d838f6e5e735b933a50aff24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
