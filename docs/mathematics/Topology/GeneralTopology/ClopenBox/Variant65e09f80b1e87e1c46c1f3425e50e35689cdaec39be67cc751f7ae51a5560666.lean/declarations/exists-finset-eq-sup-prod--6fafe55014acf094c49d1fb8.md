# exists_finset_eq_sup_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c527e7620ce7a1b16958ee5f77eb9e1a5d46d2d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f59ffd60-deb1-a0dc-d4d4-cc8beb87e6fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bbb4239-c0d9-93b7-fdfe-c573860ad2b7",
  "kind": "theorem",
  "lexical_name": "exists_finset_eq_sup_prod",
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
  "slug": "exists-finset-eq-sup-prod--6fafe55014acf094c49d1fb8",
  "source": {
    "blob": "c527e7620ce7a1b16958ee5f77eb9e1a5d46d2d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fafe55014acf094c49d1fb89997a849d98bc5c9aeb697a9f5a5e8e9027147c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bbb4239-c0d9-93b7-fdfe-c573860ad2b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finset_eq_sup_prod (W : Clopens (X × Y)) :
    ∃ (I : Finset (Clopens X × Clopens Y)), W = I.sup fun i ↦ i.1 ×ˢ i.2 := by
  choose! U hxU V hxV hUV using fun x ↦ W.exists_prod_subset (a := x)
  rcases W.2.1.isCompact.elim_nhds_subcover (fun x ↦ U x ×ˢ V x) (fun x hx ↦
    (U x ×ˢ V x).2.isOpen.mem_nhds ⟨hxU x hx, hxV x hx⟩) with ⟨I, hIW, hWI⟩
  classical
  use I.image fun x ↦ (U x, V x)
  rw [Finset.sup_image]
  refine le_antisymm (fun x hx ↦ ?_) (Finset.sup_le fun x hx ↦ ?_)
  · rcases Set.mem_iUnion₂.1 (hWI hx) with ⟨i, hi, hxi⟩
    exact SetLike.le_def.1 (Finset.le_sup hi) hxi
  · exact hUV _ <| hIW _ hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c527e7620ce7a1b16958ee5f77eb9e1a5d46d2d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
