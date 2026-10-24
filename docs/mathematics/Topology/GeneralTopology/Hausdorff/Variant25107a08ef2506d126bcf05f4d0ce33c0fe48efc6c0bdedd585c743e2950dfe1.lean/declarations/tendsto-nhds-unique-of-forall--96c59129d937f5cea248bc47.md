# tendsto_nhds_unique_of_forall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf1c0754-2247-4a5f-6bf5-37fdb6d50af9",
  "kind": "theorem",
  "lexical_name": "tendsto_nhds_unique_of_forall",
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
  "slug": "tendsto-nhds-unique-of-forall--96c59129d937f5cea248bc47",
  "source": {
    "blob": "ddf72e60d14630eb308d655c326bf191e5bdd935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96c59129d937f5cea248bc4762ce6868ce31375a8e2f6c133ca331117f14f744",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf1c0754-2247-4a5f-6bf5-37fdb6d50af9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhds_unique_of_forall [T2Space X] {f g : Y → X} {l : Filter Y} {a b : X}
    [NeBot l] (ha : Tendsto f l (𝓝 a)) (hb : Tendsto g l (𝓝 b)) (hfg : ∀ y, f y = g y) : a = b :=
  tendsto_nhds_unique_of_eventuallyEq ha hb (Eventually.of_forall hfg)

/-- If `s` and `t` are compact sets in a T₂ space, then the set neighborhoods filter of `s ∩ t`
is the infimum of set neighborhoods filters for `s` and `t`.

For general sets, only the `≤` inequality holds, see `nhdsSet_inter_le`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddf72e60d14630eb308d655c326bf191e5bdd935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
