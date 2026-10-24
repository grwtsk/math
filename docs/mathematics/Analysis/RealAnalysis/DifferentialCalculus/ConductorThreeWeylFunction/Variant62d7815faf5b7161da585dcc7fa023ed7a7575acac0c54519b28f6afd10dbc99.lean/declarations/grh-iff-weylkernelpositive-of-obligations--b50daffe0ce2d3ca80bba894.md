# grh_iff_weylKernelPositive_of_obligations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8de4d782ccb67d2e6d47760bd0f76a213097646",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62d7815faf5b7161da585dcc7fa023ed7a7575acac0c54519b28f6afd10dbc99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d5c248a-a02d-8aae-65d3-85803ce38501",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b664c10-102e-79fc-77ce-90c8e273dcec",
  "kind": "theorem",
  "lexical_name": "grh_iff_weylKernelPositive_of_obligations",
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
  "slug": "grh-iff-weylkernelpositive-of-obligations--b50daffe0ce2d3ca80bba894",
  "source": {
    "blob": "d8de4d782ccb67d2e6d47760bd0f76a213097646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant62d7815faf5b7161da585dcc7fa023ed7a7575acac0c54519b28f6afd10dbc99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b50daffe0ce2d3ca80bba894ceac4bac9f2cd4575d8e3d2b9f44d5ee2fdf38d9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant62d7815faf5b7161da585dcc7fa023ed7a7575acac0c54519b28f6afd10dbc99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b664c10-102e-79fc-77ce-90c8e273dcec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grh_iff_weylKernelPositive_of_obligations
    (hGRH : GRHIffConductorThreeWeylHerglotz)
    (hRepresentation : HerglotzImpliesPositiveNevanlinnaKernel) :
    GRHForConductorThreeCharacter ↔
      DifferentiableOn ℂ conductorThreeWeylFunction upperHalfPlane ∧
      HasPositiveNevanlinnaKernel conductorThreeWeylFunction :=
  hGRH.trans
    (weylFunction_herglotz_iff_kernelPositive_of_representation
      hRepresentation)

end

end Surface.Core.ConductorThreeWeylFunction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant62d7815faf5b7161da585dcc7fa023ed7a7575acac0c54519b28f6afd10dbc99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant62d7815faf5b7161da585dcc7fa023ed7a7575acac0c54519b28f6afd10dbc99.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8de4d782ccb67d2e6d47760bd0f76a213097646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
