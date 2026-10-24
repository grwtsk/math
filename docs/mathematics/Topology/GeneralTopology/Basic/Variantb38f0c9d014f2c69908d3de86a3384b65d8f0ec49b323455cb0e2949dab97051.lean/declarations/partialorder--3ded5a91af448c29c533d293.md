# partialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c076130c4fb132bca03fe95d53e71a8bd430184e540fb1b4c8f8615628e16db",
  "kind": "instance",
  "lexical_name": "partialOrder",
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
  "slug": "partialorder--3ded5a91af448c29c533d293",
  "source": {
    "blob": "61b1912b18fe576f2d4fa513ec6b0e85187d0247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ded5a91af448c29c533d293351519c6affaf3ee1a485a52c0f4d94a4fc9b908",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c076130c4fb132bca03fe95d53e71a8bd430184e540fb1b4c8f8615628e16db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance partialOrder : PartialOrder (Prepartition I) where
  le_refl _ I hI := ⟨I, hI, le_rfl⟩
  le_trans _ _ _ h₁₂ h₂₃ _ hI₁ :=
    let ⟨_, hI₂, hI₁₂⟩ := h₁₂ hI₁
    let ⟨I₃, hI₃, hI₂₃⟩ := h₂₃ hI₂
    ⟨I₃, hI₃, hI₁₂.trans hI₂₃⟩
  le_antisymm := by
    suffices ∀ {π₁ π₂ : Prepartition I}, π₁ ≤ π₂ → π₂ ≤ π₁ → π₁.boxes ⊆ π₂.boxes from
      fun π₁ π₂ h₁ h₂ => injective_boxes (Subset.antisymm (this h₁ h₂) (this h₂ h₁))
    intro π₁ π₂ h₁ h₂ J hJ
    rcases h₁ hJ with ⟨J', hJ', hle⟩; rcases h₂ hJ' with ⟨J'', hJ'', hle'⟩
    obtain rfl : J = J'' := π₁.eq_of_le hJ hJ'' (hle.trans hle')
    obtain rfl : J' = J := le_antisymm ‹_› ‹_›
    assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b1912b18fe576f2d4fa513ec6b0e85187d0247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
