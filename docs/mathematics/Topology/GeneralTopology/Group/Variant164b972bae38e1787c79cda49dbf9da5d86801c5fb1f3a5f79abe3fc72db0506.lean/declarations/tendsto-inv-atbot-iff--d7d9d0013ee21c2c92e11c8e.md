# tendsto_inv_atBot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e320aa2f111277704b85494ae0d39baac6a36ab0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:513b6f61-ac61-254d-17f5-0b6077537942",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ed796a3-8d0a-44d7-9163-14ec2ae6518b",
  "kind": "theorem",
  "lexical_name": "tendsto_inv_atBot_iff",
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
  "slug": "tendsto-inv-atbot-iff--d7d9d0013ee21c2c92e11c8e",
  "source": {
    "blob": "e320aa2f111277704b85494ae0d39baac6a36ab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7d9d0013ee21c2c92e11c8e75b63e4c1fb1c2e492d0722ff46a4bd08409fc7d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ed796a3-8d0a-44d7-9163-14ec2ae6518b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_inv_atBot_iff : Tendsto (fun x => (f x)⁻¹) l atBot ↔ Tendsto f l atTop :=
  (OrderIso.inv G).tendsto_atTop_iff

end OrderedCommGroup

section LinearOrderedCommGroup

variable [CommGroup G] [LinearOrder G]

/-- $\lim_{x\to+\infty}|x|_m=+\infty$ -/
@[to_additive r"$\lim_{x\to+\infty}|x|=+\infty$"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Group/Variant164b972bae38e1787c79cda49dbf9da5d86801c5fb1f3a5f79abe3fc72db0506.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e320aa2f111277704b85494ae0d39baac6a36ab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
