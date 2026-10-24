# IsSubordinate.disjUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:073fcfb1-fe53-9f87-a29c-9e0871c5725a",
  "kind": "theorem",
  "lexical_name": "IsSubordinate.disjUnion",
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
  "slug": "issubordinate-disjunion--c64cc3f9d4e1aedf78d4b0b4",
  "source": {
    "blob": "8e79d4035730d837a1e32ff22f53eed4727d753e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 388,
    "path": "GRWTSK/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c64cc3f9d4e1aedf78d4b0b41d83c032563559341f828fe535170df5fb86bc26",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:073fcfb1-fe53-9f87-a29c-9e0871c5725a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSubordinate.disjUnion [Fintype ι] (h₁ : IsSubordinate π₁ r) (h₂ : IsSubordinate π₂ r)
    (h : Disjoint π₁.iUnion π₂.iUnion) : IsSubordinate (π₁.disjUnion π₂ h) r := by
  refine' fun J hJ => (Finset.mem_union.1 hJ).elim (fun hJ => _) fun hJ => _
  · rw [disjUnion_tag_of_mem_left _ hJ]
    exact h₁ _ hJ
  · rw [disjUnion_tag_of_mem_right _ hJ]
    exact h₂ _ hJ
#align box_integral.tagged_prepartition.is_subordinate.disj_union BoxIntegral.TaggedPrepartition.IsSubordinate.disjUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e79d4035730d837a1e32ff22f53eed4727d753e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
