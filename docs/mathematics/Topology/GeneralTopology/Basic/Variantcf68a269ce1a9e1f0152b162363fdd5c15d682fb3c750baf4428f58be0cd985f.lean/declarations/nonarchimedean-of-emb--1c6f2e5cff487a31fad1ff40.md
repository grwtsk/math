# nonarchimedean_of_emb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:289467f1-4101-dbaf-d76a-5e40f8feeb32",
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
  "slug": "nonarchimedean-of-emb--1c6f2e5cff487a31fad1ff40",
  "source": {
    "blob": "86408c3e617a807cfc9f762379ffe756e726b9f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c6f2e5cff487a31fad1ff4014324c141a11e36017527c340d1a1d269a148a48",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:289467f1-4101-dbaf-d76a-5e40f8feeb32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonarchimedean_of_emb (f : G →* H) (emb : OpenEmbedding f) : NonarchimedeanGroup H :=
  { is_nonarchimedean := fun U hU =>
      have h₁ : f ⁻¹' U ∈ nhds (1 : G) := by
        apply emb.continuous.tendsto
        rwa [f.map_one]
      let ⟨V, hV⟩ := is_nonarchimedean (f ⁻¹' U) h₁
      ⟨{ Subgroup.map f V with isOpen' := emb.isOpenMap _ V.isOpen }, Set.image_subset_iff.2 hV⟩ }
#align nonarchimedean_group.nonarchimedean_of_emb NonarchimedeanGroup.nonarchimedean_of_emb
#align nonarchimedean_add_group.nonarchimedean_of_emb NonarchimedeanAddGroup.nonarchimedean_of_emb

/-- An open neighborhood of the identity in the cartesian product of two nonarchimedean groups
contains the cartesian product of an open neighborhood in each group. -/
@[to_additive NonarchimedeanAddGroup.prod_subset "An open neighborhood of the identity in
the cartesian product of two nonarchimedean groups contains the cartesian product of
an open neighborhood in each group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86408c3e617a807cfc9f762379ffe756e726b9f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
