# disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5afcf25-6ceb-89fc-312e-f3996efa7079",
  "kind": "theorem",
  "lexical_name": "disjoint",
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
  "slug": "disjoint--cfde566c146490b26c65bc14",
  "source": {
    "blob": "8523ac5b697f244081cc7cc71dcd3632097616ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 176,
    "path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variant4beee96cf70e1b56c962661fe1a16c7386a106e4fc07c383eee4023185ff9bd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfde566c146490b26c65bc1409be2ab23ac54aab7c155542b02f61e5adb6122e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitPartition/Variant4beee96cf70e1b56c962661fe1a16c7386a106e4fc07c383eee4023185ff9bd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5afcf25-6ceb-89fc-312e-f3996efa7079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint {ν ν' : ι → ℤ} :
    ν ≠ ν' ↔ Disjoint (box n ν).toSet (box n ν').toSet := by
  rw [not_iff_comm, Set.not_disjoint_iff]
  refine ⟨fun ⟨x, hx, hx'⟩ ↦ ?_, fun h ↦ ⟨tag n ν, tag_mem n ν, h ▸ tag_mem n ν⟩⟩
  rw [← mem_box_iff_index.mp hx, ← mem_box_iff_index.mp hx']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitPartition/Variant4beee96cf70e1b56c962661fe1a16c7386a106e4fc07c383eee4023185ff9bd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitPartition/Variant4beee96cf70e1b56c962661fe1a16c7386a106e4fc07c383eee4023185ff9bd1.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8523ac5b697f244081cc7cc71dcd3632097616ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
