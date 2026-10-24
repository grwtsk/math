# nonarchimedean_of_emb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24c3db7e-115a-50de-5d5a-54a0dde43c17",
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
  "slug": "nonarchimedean-of-emb--43b8e95272146f22328904a0",
  "source": {
    "blob": "da83ed6adcef1f61eac4fc81cbf77c126d912cec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43b8e95272146f22328904a065d8dc4922063270a42d568b72bfa7fbad448531",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24c3db7e-115a-50de-5d5a-54a0dde43c17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonarchimedean_of_emb (f : G →* H) (emb : IsOpenEmbedding f) : NonarchimedeanGroup H :=
  { is_nonarchimedean := fun U hU =>
      have h₁ : f ⁻¹' U ∈ 𝓝 (1 : G) := by
        apply emb.continuous.tendsto
        rwa [f.map_one]
      let ⟨V, hV⟩ := is_nonarchimedean (f ⁻¹' U) h₁
      ⟨{ Subgroup.map f V with isOpen' := emb.isOpenMap _ V.isOpen }, Set.image_subset_iff.2 hV⟩ }

/-- An open neighborhood of the identity in the cartesian product of two nonarchimedean groups
contains the cartesian product of an open neighborhood in each group. -/
@[to_additive NonarchimedeanAddGroup.prod_subset "An open neighborhood of the identity in
the cartesian product of two nonarchimedean groups contains the cartesian product of
an open neighborhood in each group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1b9b52f5364f617363c7521e2c7f4ef04adaa5880a17c6cd6389fee439affc92.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da83ed6adcef1f61eac4fc81cbf77c126d912cec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
