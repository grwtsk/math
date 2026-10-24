# correlationScaleDerivative_zero_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57d7087509d9790d2133ed882984e99fab88ffa1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fbc5138-efab-846f-1239-c4ec3c7735de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39a92e77-9904-1e11-df66-d3518b3ecdad",
  "kind": "theorem",
  "lexical_name": "correlationScaleDerivative_zero_of_lt",
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
  "slug": "correlationscalederivative-zero-of-lt--dcc73f6b8883162a46ad4836",
  "source": {
    "blob": "57d7087509d9790d2133ed882984e99fab88ffa1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcc73f6b8883162a46ad48363c22ce7f81fc90e39489d0e7fc03add6dc86f525",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39a92e77-9904-1e11-df66-d3518b3ecdad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlationScaleDerivative_zero_of_lt {A s : ℝ} (hA : 0 < A) (hs : 2 * A < s) :
    correlationScaleDerivative A s = 0 := by
  have he : (fun B => sourceCorrelation explicitSecondDerivative B s) =ᶠ[nhds A]
      (fun _ => (0 : ℝ)) := by
    filter_upwards [eventually_gt_nhds hA,
      eventually_lt_nhds (show A < s / 2 by linarith)] with B hB hBs
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs B s hB
      (by have := le_abs_self s; linarith)
  exact (sourceCorrelation_hasDerivAt_scale hA s).unique
    ((hasDerivAt_const A (0 : ℝ)).congr_of_eventuallyEq he)

/-- The independent correlation derivative vanishes at all strictly omitted positive indices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57d7087509d9790d2133ed882984e99fab88ffa1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
