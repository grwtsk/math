# IsSeqCompact.image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3ee582f-f45c-7b8f-235f-5a0c5fd581f9",
  "kind": "theorem",
  "lexical_name": "IsSeqCompact.image",
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
  "slug": "isseqcompact-image--d0151e8eb52a5e2ea63597ae",
  "source": {
    "blob": "ae9139a6671e75e5e8d2f7fa20c66b31e9a6e1e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0151e8eb52a5e2ea63597aeaca6e19ea53320aaa591deccd07d2946bbf9a7dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3ee582f-f45c-7b8f-235f-5a0c5fd581f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSeqCompact.image (f_cont : SeqContinuous f) {K : Set X} (K_cpt : IsSeqCompact K) :
    IsSeqCompact (f '' K) := by
  intro ys ys_in_fK
  choose xs xs_in_K fxs_eq_ys using ys_in_fK
  obtain ⟨a, a_in_K, phi, phi_mono, xs_phi_lim⟩ := K_cpt xs_in_K
  refine ⟨f a, mem_image_of_mem f a_in_K, phi, phi_mono, ?_⟩
  exact (f_cont xs_phi_lim).congr fun x ↦ fxs_eq_ys (phi x)

/-- The range of sequentially continuous function on a sequentially compact space is sequentially
compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae9139a6671e75e5e8d2f7fa20c66b31e9a6e1e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
