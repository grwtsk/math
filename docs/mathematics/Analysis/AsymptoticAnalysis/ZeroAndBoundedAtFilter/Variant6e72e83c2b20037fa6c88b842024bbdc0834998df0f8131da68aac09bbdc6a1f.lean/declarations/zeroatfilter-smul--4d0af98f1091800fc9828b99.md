# ZeroAtFilter.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bccdab31-bf2a-eaa7-bb4f-9d05f936a86a",
  "kind": "theorem",
  "lexical_name": "ZeroAtFilter.smul",
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
  "slug": "zeroatfilter-smul--4d0af98f1091800fc9828b99",
  "source": {
    "blob": "9e5af74eeca1fc3b7f39cfac71fa28d35a26c299",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 57,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d0af98f1091800fc9828b99358a905acbe1d7f82ec3c37aada2c3d03e0e7488",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bccdab31-bf2a-eaa7-bb4f-9d05f936a86a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZeroAtFilter.smul [TopologicalSpace β] [Zero β]
    [SMulZeroClass 𝕜 β] [ContinuousConstSMul 𝕜 β] {l : Filter α} {f : α → β} (c : 𝕜)
    (hf : ZeroAtFilter l f) : ZeroAtFilter l (c • f) := by simpa using! hf.const_smul c

variable (𝕜) in
/-- `zeroAtFilterSubmodule l` is the submodule of `f : α → β` which
tend to zero along `l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant6e72e83c2b20037fa6c88b842024bbdc0834998df0f8131da68aac09bbdc6a1f.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e5af74eeca1fc3b7f39cfac71fa28d35a26c299` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
