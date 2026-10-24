# gram_equality_of_unitary_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61f53ea7-3886-6e8a-0127-fc02bbf7c9f0",
  "kind": "theorem",
  "lexical_name": "gram_equality_of_unitary_transport",
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
  "slug": "gram-equality-of-unitary-transport--6c2f9f4a4db05afe9d3c09a5",
  "source": {
    "blob": "4c0abb7cf7d141be13b914abf4ffb1da7794d337",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 25,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/AF35e890d13c0f8f5/Variant08dcfd421def7572aca62247e6755adcff119af9948f57ab35dbc1ce4df9f50d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c2f9f4a4db05afe9d3c09a5e0e438a2e7e2fae58caf178be7e6dca0ead4fe40",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/AF35e890d13c0f8f5/Variant08dcfd421def7572aca62247e6755adcff119af9948f57ab35dbc1ce4df9f50d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61f53ea7-3886-6e8a-0127-fc02bbf7c9f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gram_equality_of_unitary_transport
    (transport : E ≃ₗᵢ[𝕜] F)
    (trajectory : Index → E)
    (left right : Index) :
    gram (𝕜 := 𝕜) (E := F) (fun index ↦ transport (trajectory index)) left right =
      gram (𝕜 := 𝕜) (E := E) trajectory left right := by
  exact transport.inner_map_map (trajectory left) (trajectory right)

end Mathematics.Trajectory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/AF35e890d13c0f8f5/Variant08dcfd421def7572aca62247e6755adcff119af9948f57ab35dbc1ce4df9f50d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/AF35e890d13c0f8f5/Variant08dcfd421def7572aca62247e6755adcff119af9948f57ab35dbc1ce4df9f50d.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c0abb7cf7d141be13b914abf4ffb1da7794d337` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
