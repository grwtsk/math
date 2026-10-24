# nonarchimedean_of_emb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:091f19f5-3df7-a07b-bdb1-1db28727e570",
  "kind": "theorem",
  "lexical_name": "nonarchimedean_of_emb",
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
  "slug": "nonarchimedean-of-emb--c94aaa2462a5b981234c224c",
  "source": {
    "blob": "4f656218f17302bc3ec20c22c212a288e45cbcf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta190b5f294a6903fc53553c709da74737acb287f41306533cdbbf204b5874415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c94aaa2462a5b981234c224c3cc9cdfe6c65e761bc305a0db257d9f65c4054d0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta190b5f294a6903fc53553c709da74737acb287f41306533cdbbf204b5874415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:091f19f5-3df7-a07b-bdb1-1db28727e570`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonarchimedean_of_emb (f : G →* H) (emb : IsOpenEmbedding f) : NonarchimedeanGroup H :=
  { is_nonarchimedean := fun U hU =>
      have h₁ : f ⁻¹' U ∈ 𝓝 (1 : G) := by
        apply emb.continuous.tendsto
        rwa [f.map_one]
      let ⟨V, hV⟩ := is_nonarchimedean (f ⁻¹' U) h₁
      ⟨{ Subgroup.map f V with isOpen' := emb.isOpenMap _ V.isOpen }, Set.image_subset_iff.2 hV⟩ }

/-- An open neighborhood of the identity in the Cartesian product of two nonarchimedean groups
contains the Cartesian product of an open neighborhood in each group. -/
@[to_additive NonarchimedeanAddGroup.prod_subset /-- An open neighborhood of the identity in
the Cartesian product of two nonarchimedean groups contains the Cartesian product of
an open neighborhood in each group. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta190b5f294a6903fc53553c709da74737acb287f41306533cdbbf204b5874415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta190b5f294a6903fc53553c709da74737acb287f41306533cdbbf204b5874415.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f656218f17302bc3ec20c22c212a288e45cbcf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
