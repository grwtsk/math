# WithSeminorms.first_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36666bbe-dc02-48fb-2770-8e1f063b9527",
  "kind": "theorem",
  "lexical_name": "WithSeminorms.first_countable",
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
  "slug": "withseminorms-first-countable--650840bda8af647bcd872ef6",
  "source": {
    "blob": "ba56343cf89d6a690c97c79be18555888ac929ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 990,
    "line": 978,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:650840bda8af647bcd872ef6b7c4453b79cc7a77f8f9ea1fd5468804b5fe3c7e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36666bbe-dc02-48fb-2770-8e1f063b9527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 978–990.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WithSeminorms.first_countable (hp : WithSeminorms p) :
    TopologicalSpace.FirstCountableTopology E := by
  have := hp.topologicalAddGroup
  let _ : UniformSpace E := TopologicalAddGroup.toUniformSpace E
  have : UniformAddGroup E := comm_topologicalAddGroup_is_uniform
  have : (𝓝 (0 : E)).IsCountablyGenerated := by
    rw [p.withSeminorms_iff_nhds_eq_iInf.mp hp]
    exact Filter.iInf.isCountablyGenerated _
  have : (uniformity E).IsCountablyGenerated := UniformAddGroup.uniformity_countably_generated
  exact UniformSpace.firstCountableTopology E
#align with_seminorms.first_countable WithSeminorms.first_countable

end TopologicalProperties
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean#L978).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba56343cf89d6a690c97c79be18555888ac929ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
