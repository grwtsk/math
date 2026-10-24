# grh_conductorThree_iff_matrixCriticalDecay_of_forward

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
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13971f9a-b8be-c414-bbad-36980896a45a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4088735d-8a85-7ab8-90f9-23bbda27318f",
  "kind": "theorem",
  "lexical_name": "grh_conductorThree_iff_matrixCriticalDecay_of_forward",
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
  "slug": "grh-conductorthree-iff-matrixcriticaldecay-of-forward--f4decab081e4ded1e99b111e",
  "source": {
    "blob": "f5d3ba6b15df4331faeabc1085b990a9371011c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeGRHMatrix/Variantceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4decab081e4ded1e99b111e7e12f5ce5f75c702883f9783b4450df9a285cf17",
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

Occurrence: `result:4088735d-8a85-7ab8-90f9-23bbda27318f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grh_conductorThree_iff_matrixCriticalDecay_of_forward
    (hForward : GRHImpliesTwistedPsiCriticalBound) :
    GRHForConductorThreeCharacter ↔
      MatrixCriticalDecay actualResidueSixCounts :=
  grh_conductorThree_iff_matrixCriticalDecay_of_explicitFormula
    hForward twistedPsiCriticalBoundImpliesGRH_proved

/-- Fully explicit conditional composition of the target equivalence.  Every
remaining premise is named at the point of use. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeGRHMatrix/Variantceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeGRHMatrix/Variantceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5d3ba6b15df4331faeabc1085b990a9371011c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
