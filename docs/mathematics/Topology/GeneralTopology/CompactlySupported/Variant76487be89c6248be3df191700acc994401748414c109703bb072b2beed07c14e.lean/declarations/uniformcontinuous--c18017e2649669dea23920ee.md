# uniformContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f1d98aa-f2ca-2a9e-b9d6-5b1a2118db60",
  "kind": "theorem",
  "lexical_name": "uniformContinuous",
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
  "slug": "uniformcontinuous--c18017e2649669dea23920ee",
  "source": {
    "blob": "2d2ed610a1d2885c77ed3a187294efbce21166ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 625,
    "line": 615,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant76487be89c6248be3df191700acc994401748414c109703bb072b2beed07c14e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c18017e2649669dea23920ee76086dce3f612827567ae663360dd6b3e52cd8dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlySupported/Variant76487be89c6248be3df191700acc994401748414c109703bb072b2beed07c14e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f1d98aa-f2ca-2a9e-b9d6-5b1a2118db60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 615–625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous (f : F) : UniformContinuous (f : β → γ) :=
  (map_continuous f).uniformContinuous_of_tendsto_cocompact
  (HasCompactSupport.is_zero_at_infty (hasCompactSupport f))

end Uniform

section ZeroAtInfty

variable [TopologicalSpace β] [TopologicalSpace γ] [Zero γ]
  [FunLike F β γ] [CompactlySupportedContinuousMapClass F β γ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlySupported/Variant76487be89c6248be3df191700acc994401748414c109703bb072b2beed07c14e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant76487be89c6248be3df191700acc994401748414c109703bb072b2beed07c14e.lean#L615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d2ed610a1d2885c77ed3a187294efbce21166ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
