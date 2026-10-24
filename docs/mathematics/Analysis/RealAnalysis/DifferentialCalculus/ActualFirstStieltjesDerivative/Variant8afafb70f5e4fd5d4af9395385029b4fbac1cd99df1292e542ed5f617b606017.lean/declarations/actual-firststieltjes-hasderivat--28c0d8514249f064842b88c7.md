# actual_firstStieltjes_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:216404d0-680c-843f-95c3-b753c3e6a348",
  "kind": "theorem",
  "lexical_name": "actual_firstStieltjes_hasDerivAt",
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
  "slug": "actual-firststieltjes-hasderivat--28c0d8514249f064842b88c7",
  "source": {
    "blob": "d4e06473af4d8b9e2c91cd582e35635deaa82856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstStieltjesDerivative/Variant8afafb70f5e4fd5d4af9395385029b4fbac1cd99df1292e542ed5f617b606017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28c0d8514249f064842b88c7ba32aabb651024a8e51aa1be0ddcde2837fc96fb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstStieltjesDerivative/Variant8afafb70f5e4fd5d4af9395385029b4fbac1cd99df1292e542ed5f617b606017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:216404d0-680c-843f-95c3-b753c3e6a348`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_firstStieltjes_hasDerivAt :
    HasDerivAt riemannZeta₀ (-(firstStieltjesConstant : ℂ)) (1 : ℂ) :=
  ActualStieltjesBoundary.actual_regular_zeta_hasDerivAt_of_termTSum
    ActualStieltjesParameter.termTSum_hasDerivAt_one

end ContinuousResearch.ActualFirstStieltjesDerivative

#print ContinuousResearch.ActualFirstStieltjesDerivative.actual_firstStieltjes_deriv
#print axioms ContinuousResearch.ActualFirstStieltjesDerivative.actual_firstStieltjes_deriv
#print ContinuousResearch.ActualFirstStieltjesDerivative.actual_firstStieltjes_hasDerivAt
#print axioms ContinuousResearch.ActualFirstStieltjesDerivative.actual_firstStieltjes_hasDerivAt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstStieltjesDerivative/Variant8afafb70f5e4fd5d4af9395385029b4fbac1cd99df1292e542ed5f617b606017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstStieltjesDerivative/Variant8afafb70f5e4fd5d4af9395385029b4fbac1cd99df1292e542ed5f617b606017.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e06473af4d8b9e2c91cd582e35635deaa82856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
