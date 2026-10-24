# source_strip_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53a408b3-304a-d83b-36e5-587b6c7b6775",
  "kind": "lemma",
  "lexical_name": "source_strip_integral",
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
  "slug": "source-strip-integral--0eaebb3cec7f52dfd3f0dd0b",
  "source": {
    "blob": "148e2294d2771674d145ee0b0313dae42a47d61c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eaebb3cec7f52dfd3f0dd0bdaa0dd563d49c2c55717051c3f627ef41880cf65",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53a408b3-304a-d83b-36e5-587b6c7b6775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma source_strip_integral (z s : ℂ)
    (hz : -(1 / 2 : ℝ) < z.re ∧ z.re < 1 / 2) (hs : 1 < s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * expandedSummand A z) (Ioi 1) ∧
      (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) * expandedSummand A z) = sourceKernel z s := by
  have hminus : 0 < (s - 2 * z).re := by
    norm_num [Complex.mul_re]
    linarith [hz.2]
  have hplus : 0 < (s + 2 * z).re := by
    norm_num [Complex.mul_re]
    linarith [hz.1]
  have hs0 : 0 < s.re := by linarith
  exact ⟨expandedSummand_integrable z s hminus hplus hs0,
    integral_expandedSummand z s hminus hplus hs0⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148e2294d2771674d145ee0b0313dae42a47d61c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
