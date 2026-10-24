# isOpen_of_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81b13a4a-b3ae-7c76-9968-dd5fbef31674",
  "kind": "theorem",
  "lexical_name": "isOpen_of_mem_nhds",
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
  "slug": "isopen-of-mem-nhds--4ecfc3755299c5c3ba70ff1b",
  "source": {
    "blob": "50595f09d50a3d32037ed65853a87615d4e61f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 264,
    "path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ecfc3755299c5c3ba70ff1bc260e9fefc2fb538cccb6efe9799f68c48a8daf2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81b13a4a-b3ae-7c76-9968-dd5fbef31674`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_of_mem_nhds [ContinuousMul G] (H : Subgroup G) {g : G} (hg : (H : Set G) ∈ 𝓝 g) :
    IsOpen (H : Set G) := by
  refine isOpen_iff_mem_nhds.2 fun x hx ↦ ?_
  have hg' : g ∈ H := SetLike.mem_coe.1 (mem_of_mem_nhds hg)
  have : Filter.Tendsto (fun y ↦ y * (x⁻¹ * g)) (𝓝 x) (𝓝 g) :=
    (continuous_id.mul continuous_const).tendsto' _ _ (mul_inv_cancel_left _ _)
  simpa only [SetLike.mem_coe, Filter.mem_map',
    H.mul_mem_cancel_right (H.mul_mem (H.inv_mem hx) hg')] using this hg

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50595f09d50a3d32037ed65853a87615d4e61f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
