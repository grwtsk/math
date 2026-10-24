# restr_mem_maximalAtlas_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:281f063a-65bf-f508-3c7b-8fab7ed38a7d",
  "kind": "theorem",
  "lexical_name": "restr_mem_maximalAtlas_aux1",
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
  "slug": "restr-mem-maximalatlas-aux1--847a487e62895e13624f107a",
  "source": {
    "blob": "6501cdb014cd733473f22b64d4e147f04ba12ea7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:847a487e62895e13624f107a9e9c9ef97714ecca0c4176f6a1d354aed18153a2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:281f063a-65bf-f508-3c7b-8fab7ed38a7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem restr_mem_maximalAtlas_aux1 [ClosedUnderRestriction G]
    {e e' : OpenPartialHomeomorph M H} (he : e ∈ G.maximalAtlas M) (he' : e' ∈ atlas H M)
    {s : Set M} (hs : IsOpen s) :
    (e.restr s).symm ≫ₕ e' ∈ G := by
  have hs'' : IsOpen (e '' (e.source ∩ s)) := by
    rw [isOpen_image_iff_of_subset_source _ inter_subset_left]
    exact e.open_source.inter hs
  have : (e.restr (e.source ∩ s)).symm ≫ₕ e' ∈ G := by
    apply G.mem_of_eqOnSource (closedUnderRestriction' (he e' he').1 hs'')
    exact e.restr_symm_trans (e.open_source.inter hs) hs'' inter_subset_left
  refine G.mem_of_eqOnSource this ?_
  exact EqOnSource.trans' (Setoid.symm e.restr_inter_source).symm' (eqOnSource_refl e')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6501cdb014cd733473f22b64d4e147f04ba12ea7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
