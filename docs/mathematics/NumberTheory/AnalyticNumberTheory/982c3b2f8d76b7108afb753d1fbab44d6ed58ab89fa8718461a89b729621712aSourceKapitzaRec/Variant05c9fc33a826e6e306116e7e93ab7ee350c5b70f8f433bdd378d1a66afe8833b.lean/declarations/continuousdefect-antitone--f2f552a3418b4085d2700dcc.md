# continuousDefect_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a85ae9cc-167b-214b-30c8-d78818507240",
  "kind": "theorem",
  "lexical_name": "continuousDefect_antitone",
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
  "slug": "continuousdefect-antitone--f2f552a3418b4085d2700dcc",
  "source": {
    "blob": "d490fca8218694b6ef94ce679ce6169633acf747",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 263,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712aSourceKapitzaRec/Variant05c9fc33a826e6e306116e7e93ab7ee350c5b70f8f433bdd378d1a66afe8833b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f552a3418b4085d2700dcc910a2f7e34d12a3f6eb2b9ed11cf67e764a00095",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712aSourceKapitzaRec/Variant05c9fc33a826e6e306116e7e93ab7ee350c5b70f8f433bdd378d1a66afe8833b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a85ae9cc-167b-214b-30c8-d78818507240`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousDefect_antitone {R A : ℝ} (hR : 0 ≤ R) (hRA : R ≤ A) :
    continuousDefect A ≤ continuousDefect R := by
  have hA : 0 ≤ A := hR.trans hRA
  have hdA : 0 < 7 * A ^ 4 + 272 * A ^ 2 + 7344 := by positivity
  have hdR : 0 < 7 * R ^ 4 + 272 * R ^ 2 + 7344 := by positivity
  have hs : 0 ≤ A ^ 2 - R ^ 2 := by nlinarith
  have ht : 0 ≤ 1904 * A ^ 2 * R ^ 2 + 102816 * (A ^ 2 + R ^ 2) + 1997568 := by
    positivity
  have hm := mul_nonneg hs ht
  unfold continuousDefect
  apply (div_le_div_iff₀ hdA hdR).mpr
  nlinarith only [hm]

/-- Exactly the finite-prefix expression used by `EstimateTailReduction.bounded_radius_lower`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712aSourceKapitzaRec/Variant05c9fc33a826e6e306116e7e93ab7ee350c5b70f8f433bdd378d1a66afe8833b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712aSourceKapitzaRec/Variant05c9fc33a826e6e306116e7e93ab7ee350c5b70f8f433bdd378d1a66afe8833b.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d490fca8218694b6ef94ce679ce6169633acf747` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
