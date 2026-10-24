# innerContent_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abe5251e-12a1-861a-c0ad-8e602f81bb32",
  "kind": "theorem",
  "lexical_name": "innerContent_bot",
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
  "slug": "innercontent-bot--79b13c05d46f504157ac9adf",
  "source": {
    "blob": "8685ee6555367d06b0f7b373c3d9dd971b9bcdac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 145,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79b13c05d46f504157ac9adf3ac75aa24cc38209d12455bcf7c29fbe38838c3e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abe5251e-12a1-861a-c0ad-8e602f81bb32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerContent_bot : μ.innerContent ⊥ = 0 := by
  refine le_antisymm ?_ (zero_le _)
  rw [← μ.empty]
  refine iSup₂_le fun K hK => ?_
  have : K = ⊥ := by
    ext1
    rw [subset_empty_iff.mp hK, Compacts.coe_bot]
  rw [this]

/-- This is "unbundled", because that is required for the API of `inducedOuterMeasure`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variant8b936110df8978b50ae9e847d9d667bff61f4e6e2085445d831f8a07b688fd3d.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8685ee6555367d06b0f7b373c3d9dd971b9bcdac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
