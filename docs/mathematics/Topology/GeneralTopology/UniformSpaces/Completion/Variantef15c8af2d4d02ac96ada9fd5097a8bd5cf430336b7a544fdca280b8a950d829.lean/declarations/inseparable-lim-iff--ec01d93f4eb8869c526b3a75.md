# inseparable_lim_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:425cda5c-465a-ef66-dc34-8424c4a34cf3",
  "kind": "theorem",
  "lexical_name": "inseparable_lim_iff",
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
  "slug": "inseparable-lim-iff--ec01d93f4eb8869c526b3a75",
  "source": {
    "blob": "cfabdf2b6755ce4b58fd2fd690cdb819010c425a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantef15c8af2d4d02ac96ada9fd5097a8bd5cf430336b7a544fdca280b8a950d829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec01d93f4eb8869c526b3a75d0743ae21a5c911346f29ed91a9e9e47f7b0a354",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Completion/Variantef15c8af2d4d02ac96ada9fd5097a8bd5cf430336b7a544fdca280b8a950d829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:425cda5c-465a-ef66-dc34-8424c4a34cf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inseparable_lim_iff [CompleteSpace α] {f g : CauchyFilter α} :
    haveI := f.2.1.nonempty; Inseparable (lim f.1) (lim g.1) ↔ Inseparable f g :=
  inseparable_iff_of_le_nhds f.2.le_nhds_lim g.2.le_nhds_lim

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Completion/Variantef15c8af2d4d02ac96ada9fd5097a8bd5cf430336b7a544fdca280b8a950d829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantef15c8af2d4d02ac96ada9fd5097a8bd5cf430336b7a544fdca280b8a950d829.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfabdf2b6755ce4b58fd2fd690cdb819010c425a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
