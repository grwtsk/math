# sourceColumn_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cc65fc8-31fb-f6e9-1d71-a538d36f661c",
  "kind": "theorem",
  "lexical_name": "sourceColumn_hasDerivAt",
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
  "slug": "sourcecolumn-hasderivat--aa68f559ad119e8be0a924de",
  "source": {
    "blob": "8ba514ee01e9b01337df7a2c2f19528b5c6b4449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 268,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt03/Variantb45a819eb55a7750c8748834775777b780ffa01f3b96ac274af6fa7a3eacf29b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa68f559ad119e8be0a924dea347fdaa19bb05237961f0ae9f9c89467cebd648",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt03/Variantb45a819eb55a7750c8748834775777b780ffa01f3b96ac274af6fa7a3eacf29b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cc65fc8-31fb-f6e9-1d71-a538d36f661c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sourceColumn_hasDerivAt {A : ℝ} (hA : 0 < A) (u t : ℝ) :
    HasDerivAt (sourceColumn A u) (sourceColumnTimeDeriv A t u) t := by
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt
  have h := ((((hasDerivAt_id t).div_const 2).exp).div_const (Real.sqrt u)).mul
    (hc.comp t ((hasDerivAt_id t).add_const (Real.log u)))
  convert h using 1 <;> try rfl
  dsimp only [sourceColumnTimeDeriv, Function.comp_apply, id_eq]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt03/Variantb45a819eb55a7750c8748834775777b780ffa01f3b96ac274af6fa7a3eacf29b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt03/Variantb45a819eb55a7750c8748834775777b780ffa01f3b96ac274af6fa7a3eacf29b.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ba514ee01e9b01337df7a2c2f19528b5c6b4449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
