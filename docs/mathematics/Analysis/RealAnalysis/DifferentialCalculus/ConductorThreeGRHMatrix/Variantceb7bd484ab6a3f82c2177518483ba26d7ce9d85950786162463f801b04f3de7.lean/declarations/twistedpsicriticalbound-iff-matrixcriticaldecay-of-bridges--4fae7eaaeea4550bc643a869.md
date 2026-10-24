# twistedPsiCriticalBound_iff_matrixCriticalDecay_of_bridges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5d3ba6b15df4331faeabc1085b990a9371011c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec5116ff-46c2-fe62-1705-131e52ffcca5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9db6f834-05fd-a9ba-54ad-58cb31bf9ace",
  "kind": "theorem",
  "lexical_name": "twistedPsiCriticalBound_iff_matrixCriticalDecay_of_bridges",
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
  "slug": "twistedpsicriticalbound-iff-matrixcriticaldecay-of-bridges--4fae7eaaeea4550bc643a869",
  "source": {
    "blob": "f5d3ba6b15df4331faeabc1085b990a9371011c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeGRHMatrix/Variantceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fae7eaaeea4550bc643a869cbdcb92dcc16a67f194cc6bdff60d003a9aa4e2c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeGRHMatrix/Variantceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9db6f834-05fd-a9ba-54ad-58cb31bf9ace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twistedPsiCriticalBound_iff_matrixCriticalDecay_of_bridges
    (hPartial : PartialSummationCriticalBridge)
    (hReindex : CriticalReindexBridge) :
    TwistedPsiCriticalBound ↔
      MatrixCriticalDecay actualResidueSixCounts := by
  exact twistedPsiCriticalBound_iff_twistedThetaCriticalBound.trans
    (hPartial.trans
      (primeCharacterCriticalBound_iff_residueDifferenceCriticalBound.trans
        hReindex))

/-- After the checked partial-summation work, only quantitative reindexing is
needed for the classical middle path. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeGRHMatrix/Variantceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeGRHMatrix/Variantceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5d3ba6b15df4331faeabc1085b990a9371011c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
