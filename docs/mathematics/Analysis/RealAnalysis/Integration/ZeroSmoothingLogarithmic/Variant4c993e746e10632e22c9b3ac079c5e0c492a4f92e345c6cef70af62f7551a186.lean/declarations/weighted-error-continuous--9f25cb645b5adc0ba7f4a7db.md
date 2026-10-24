# weighted_error_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0eba596fa99caed8888b176fe27f8acb9457ec0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcbe05f2-a224-3c87-d7a3-845ccb1ba242",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:910fcbab-eb4d-55ac-7086-ce296c07d1bd",
  "kind": "theorem",
  "lexical_name": "weighted_error_continuous",
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
  "slug": "weighted-error-continuous--9f25cb645b5adc0ba7f4a7db",
  "source": {
    "blob": "0eba596fa99caed8888b176fe27f8acb9457ec0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f25cb645b5adc0ba7f4a7db9a537d28997059a78af617213fe980ce7fbf63b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:910fcbab-eb4d-55ac-7086-ce296c07d1bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_error_continuous (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Continuous (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq
        (sourceFourier (smoothedTest A ε hε) ξ - sourceFourier (actualTest A) ξ)) := by
  have hs := BridgeFourier.sourceFourier_continuous (smoothedTest_integrable A ε hA hε)
  have ha := BridgeFourier.sourceFourier_continuous (actualTest_integrable A hA)
  have harg : Continuous (fun ξ : ℝ ↦ 1 + 4 * ξ ^ 2) := by fun_prop
  have hlog : Continuous (fun ξ : ℝ ↦ Real.log (1 + 4 * ξ ^ 2)) :=
    harg.log (by intro ξ; positivity)
  have hw : Continuous logarithmicWeight := by
    unfold logarithmicWeight
    exact continuous_const.add (hlog.div_const 2)
  exact hw.mul (Complex.continuous_normSq.comp (hs.sub ha))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eba596fa99caed8888b176fe27f8acb9457ec0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
