# toGHSpace_eq_toGHSpace_iff_isometryEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e786f61a-0d48-bcc0-40e3-8d0de236de47",
  "kind": "theorem",
  "lexical_name": "toGHSpace_eq_toGHSpace_iff_isometryEquiv",
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
  "slug": "toghspace-eq-toghspace-iff-isometryequiv--221e85f5f1c45551827be2d0",
  "source": {
    "blob": "4d14b4e4a378ba13143b6a683a028f724e8b75bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 141,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:221e85f5f1c45551827be2d0991cd25b026d970eae4c949ca1ea34b551d1d862",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e786f61a-0d48-bcc0-40e3-8d0de236de47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toGHSpace_eq_toGHSpace_iff_isometryEquiv {X : Type u} [MetricSpace X] [CompactSpace X]
    [Nonempty X] {Y : Type v} [MetricSpace Y] [CompactSpace Y] [Nonempty Y] :
    toGHSpace X = toGHSpace Y ↔ Nonempty (X ≃ᵢ Y) :=
  ⟨by
    simp only [toGHSpace]
    rw [Quotient.eq]
    rintro ⟨e⟩
    have I :
      (NonemptyCompacts.kuratowskiEmbedding X ≃ᵢ NonemptyCompacts.kuratowskiEmbedding Y) =
        (range (kuratowskiEmbedding X) ≃ᵢ range (kuratowskiEmbedding Y)) := by
      dsimp only [NonemptyCompacts.kuratowskiEmbedding]; rfl
    have f := (kuratowskiEmbedding.isometry X).isometryEquivOnRange
    have g := (kuratowskiEmbedding.isometry Y).isometryEquivOnRange.symm
    exact ⟨f.trans <| (cast I e).trans g⟩, by
    rintro ⟨e⟩
    simp only [toGHSpace, Quotient.eq']
    have f := (kuratowskiEmbedding.isometry X).isometryEquivOnRange.symm
    have g := (kuratowskiEmbedding.isometry Y).isometryEquivOnRange
    have I :
      (range (kuratowskiEmbedding X) ≃ᵢ range (kuratowskiEmbedding Y)) =
        (NonemptyCompacts.kuratowskiEmbedding X ≃ᵢ NonemptyCompacts.kuratowskiEmbedding Y) := by
      dsimp only [NonemptyCompacts.kuratowskiEmbedding]; rfl
    rw [Quotient.eq]
    exact ⟨cast I ((f.trans e).trans g)⟩⟩

/-- Distance on `GHSpace`: the distance between two nonempty compact spaces is the infimum
Hausdorff distance between isometric copies of the two spaces in a metric space. For the definition,
we only consider embeddings in `ℓ^∞(ℝ)`, but we will prove below that it works for all spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d14b4e4a378ba13143b6a683a028f724e8b75bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
