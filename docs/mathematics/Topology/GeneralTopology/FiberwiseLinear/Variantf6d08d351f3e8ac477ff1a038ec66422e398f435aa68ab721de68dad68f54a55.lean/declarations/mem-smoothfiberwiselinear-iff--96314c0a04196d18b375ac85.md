# mem_smoothFiberwiseLinear_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77f08210-fb92-840e-dead-dbd9a082e1c7",
  "kind": "theorem",
  "lexical_name": "mem_smoothFiberwiseLinear_iff",
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
  "slug": "mem-smoothfiberwiselinear-iff--96314c0a04196d18b375ac85",
  "source": {
    "blob": "2e209f150f17bcfa39c3566993fc2859041e84e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 304,
    "path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96314c0a04196d18b375ac85dd525b9a6389184f3059418acc4e97254acba64a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77f08210-fb92-840e-dead-dbd9a082e1c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_smoothFiberwiseLinear_iff (e : LocalHomeomorph (B × F) (B × F)) :
    e ∈ smoothFiberwiseLinear B F IB ↔
      ∃ (φ : B → F ≃L[𝕜] F) (U : Set B) (hU : IsOpen U) (hφ :
        SmoothOn IB 𝓘(𝕜, F →L[𝕜] F) (fun x => φ x : B → F →L[𝕜] F) U) (h2φ :
        SmoothOn IB 𝓘(𝕜, F →L[𝕜] F) (fun x => (φ x).symm : B → F →L[𝕜] F) U),
        e.EqOnSource (FiberwiseLinear.localHomeomorph φ hU hφ.continuousOn h2φ.continuousOn) :=
  mem_aux
#align mem_smooth_fiberwise_linear_iff mem_smoothFiberwiseLinear_iff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e209f150f17bcfa39c3566993fc2859041e84e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
