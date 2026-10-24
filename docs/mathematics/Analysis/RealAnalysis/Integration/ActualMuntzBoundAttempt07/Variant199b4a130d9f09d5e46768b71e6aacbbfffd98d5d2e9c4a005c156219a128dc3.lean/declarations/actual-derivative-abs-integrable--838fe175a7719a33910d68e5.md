# actual_derivative_abs_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7752fa10-5b03-68f7-0e4a-d48483b7708c",
  "kind": "theorem",
  "lexical_name": "actual_derivative_abs_integrable",
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
  "slug": "actual-derivative-abs-integrable--838fe175a7719a33910d68e5",
  "source": {
    "blob": "4d5033aa7231ff0e735ea40eaabec867b0157d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 162,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt07/Variant199b4a130d9f09d5e46768b71e6aacbbfffd98d5d2e9c4a005c156219a128dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:838fe175a7719a33910d68e5c4259b30f24f7ed2e0ca1a4f6302b973e7be456c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt07/Variant199b4a130d9f09d5e46768b71e6aacbbfffd98d5d2e9c4a005c156219a128dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7752fa10-5b03-68f7-0e4a-d48483b7708c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_derivative_abs_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun u : ℝ => |deriv (actualLogSource A) u|) :=
  (actualLogSource_contDiff (show 0<A by linarith)).continuous_deriv_one.abs.integrable_of_hasCompactSupport
    (actualLogSource_deriv_hasCompactSupport (show 0<A by linarith)).abs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt07/Variant199b4a130d9f09d5e46768b71e6aacbbfffd98d5d2e9c4a005c156219a128dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt07/Variant199b4a130d9f09d5e46768b71e6aacbbfffd98d5d2e9c4a005c156219a128dc3.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d5033aa7231ff0e735ea40eaabec867b0157d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
