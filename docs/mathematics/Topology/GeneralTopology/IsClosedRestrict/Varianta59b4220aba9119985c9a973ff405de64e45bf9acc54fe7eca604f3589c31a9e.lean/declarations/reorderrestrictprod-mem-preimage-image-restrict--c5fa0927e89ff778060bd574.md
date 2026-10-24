# reorderRestrictProd_mem_preimage_image_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:180248b3-76d7-8289-583b-c1f02e46bff6",
  "kind": "lemma",
  "lexical_name": "reorderRestrictProd_mem_preimage_image_restrict",
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
  "slug": "reorderrestrictprod-mem-preimage-image-restrict--c5fa0927e89ff778060bd574",
  "source": {
    "blob": "3daeeeb0e4b249fa2fc33d2d44c387a102705ee3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5fa0927e89ff778060bd57434e5dbfda0f9372bf3f57fbc1849af1f1038cb43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:180248b3-76d7-8289-583b-c1f02e46bff6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reorderRestrictProd_mem_preimage_image_restrict (p : Sᶜ.restrict '' s × (Π i : S, α i)) :
    reorderRestrictProd S s p ∈ Sᶜ.restrict ⁻¹' (Sᶜ.restrict '' s) := by
  obtain ⟨y, hy_mem_s, hy_eq⟩ := p.1.2
  exact ⟨y, hy_mem_s, hy_eq.trans (restrict_compl_reorderRestrictProd p).symm⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daeeeb0e4b249fa2fc33d2d44c387a102705ee3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
