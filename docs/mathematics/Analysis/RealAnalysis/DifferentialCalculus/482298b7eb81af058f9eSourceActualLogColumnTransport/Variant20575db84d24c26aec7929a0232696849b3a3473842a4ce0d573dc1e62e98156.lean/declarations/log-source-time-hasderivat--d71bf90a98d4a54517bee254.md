# log_source_time_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58f28e17-e6cb-5a25-beaf-79f88b9ccdaa",
  "kind": "theorem",
  "lexical_name": "log_source_time_hasDerivAt",
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
  "slug": "log-source-time-hasderivat--d71bf90a98d4a54517bee254",
  "source": {
    "blob": "2e07caa79af822ac0c96df4b132a6dcc58929e1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant20575db84d24c26aec7929a0232696849b3a3473842a4ce0d573dc1e62e98156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d71bf90a98d4a54517bee25428526fe19ccd4d84fa5f687416fb4a39aef862f2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant20575db84d24c26aec7929a0232696849b3a3473842a4ce0d573dc1e62e98156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58f28e17-e6cb-5a25-beaf-79f88b9ccdaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_source_time_hasDerivAt {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    HasDerivAt (fun x => actualLogColumnSource A x s) (logTimeColumnDeriv A t s) t := by
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (t + s)).hasDerivAt
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  have hh := he.mul (hc.comp t ((hasDerivAt_id t).add_const s))
  convert hh using 1 <;> try rfl
  simp only [logTimeColumnDeriv, id_eq, Function.comp_apply]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant20575db84d24c26aec7929a0232696849b3a3473842a4ce0d573dc1e62e98156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant20575db84d24c26aec7929a0232696849b3a3473842a4ce0d573dc1e62e98156.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e07caa79af822ac0c96df4b132a6dcc58929e1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
