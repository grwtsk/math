# Atom.claim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9075aa2639feb3a0e896f92dbbbecf715d353b9495d1f614d52e7570714bafa5",
  "kind": "def",
  "lexical_name": "Atom.claim",
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
  "slug": "atom-claim--b763eae4ee393fadaf2bc7ec",
  "source": {
    "blob": "9ddcc6a274bbb29e8927183c59664855a2b17acd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f52482e6c65616e/Varianta660d741ab6a2e319f764b13ada12ea04a325fcf7ad7316539b59ed80cfcbbde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b763eae4ee393fadaf2bc7ecb759f3d1a85441ea31cc6a816201e63918b52435",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f52482e6c65616e/Varianta660d741ab6a2e319f764b13ada12ea04a325fcf7ad7316539b59ed80cfcbbde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9075aa2639feb3a0e896f92dbbbecf715d353b9495d1f614d52e7570714bafa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.claim (ctx : Context) : Atom -> Prop
  | .finiteZetaCarrier => ∃ n : Nat, ctx.HasFiniteZetaTrace n
  | .finiteLoweringToTrace => ∃ n : Nat, ctx.HasFiniteZetaTrace n
  | .analyticZetaObject => ctx.HasAnalyticZetaObject
  | .seriesDomain => ctx.HasSeriesDomain
  | .meromorphicContinuation => ctx.HasMeromorphicContinuation
  | .functionalEquation => ctx.HasFunctionalEquation
  | .nontrivialZeroPredicate => ∃ z : ctx.Zero, ctx.IsNontrivialZero z
  | .criticalLinePredicate => ∃ z : ctx.Zero, ctx.OnCriticalLine z
  | .finiteHeightZeroCheck => ∃ n : Nat, ctx.HasFiniteZetaTrace n
  | .bitTraceMatchesAnalyticZero => ∃ n : Nat, ctx.TraceMatchesAnalyticZero n
  | .finiteStagesExhaustAllZeros => ctx.FiniteStagesExhaustZeros
  | .finalAllZerosOnCriticalLine => finalClaim ctx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f52482e6c65616e/Varianta660d741ab6a2e319f764b13ada12ea04a325fcf7ad7316539b59ed80cfcbbde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f52482e6c65616e/Varianta660d741ab6a2e319f764b13ada12ea04a325fcf7ad7316539b59ed80cfcbbde.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ddcc6a274bbb29e8927183c59664855a2b17acd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
