# isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f41fe48d299df80fe901de5e54301038b15b21b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0517cdc-a64b-14be-47e8-9ba724f2528b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d2d798c-3321-1081-12d7-ace9c82a0bec",
  "kind": "theorem",
  "lexical_name": "isClosed",
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
  "slug": "isclosed--6a7baabf660f7881d166fdcd",
  "source": {
    "blob": "9f41fe48d299df80fe901de5e54301038b15b21b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a7baabf660f7881d166fdcd41a782a06f153c6c3778331b27b07fe1c3fd6d68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d2d798c-3321-1081-12d7-ace9c82a0bec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed [ContinuousMul G] (U : OpenSubgroup G) : IsClosed (U : Set G) := by
  apply isOpen_compl_iff.1
  refine' isOpen_iff_forall_mem_open.2 fun x hx => ⟨(fun y => y * x⁻¹) ⁻¹' U, _, _, _⟩
  · refine' fun u hux hu => hx _
    simp only [Set.mem_preimage, SetLike.mem_coe] at hux hu ⊢
    convert U.mul_mem (U.inv_mem hux) hu
    simp
  · exact U.isOpen.preimage (continuous_mul_right _)
  · simp [one_mem]
#align open_subgroup.is_closed OpenSubgroup.isClosed
#align open_add_subgroup.is_closed OpenAddSubgroup.isClosed

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f41fe48d299df80fe901de5e54301038b15b21b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
