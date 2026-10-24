# factorsThroughLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c83040dd-67c0-8a8f-29b3-01ff5562aa91",
  "kind": "lemma",
  "lexical_name": "factorsThroughLocalization",
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
  "slug": "factorsthroughlocalization--f930dd7b9875abf4831cfe7c",
  "source": {
    "blob": "a88632971bc48805890f0d4f8f7f1dbbc72ed688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomotopy/Variantbacd555d942454fb377d0e4bb9a6e994ca0f968b464c165d26f15e1b6e835167.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f930dd7b9875abf4831cfe7c932cbf010d28bd365444aa7cf1a27e26766291fe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomotopy/Variantbacd555d942454fb377d0e4bb9a6e994ca0f968b464c165d26f15e1b6e835167.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c83040dd-67c0-8a8f-29b3-01ff5562aa91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma factorsThroughLocalization [CategoryWithWeakEquivalences C] :
    RightHomotopyRel.FactorsThroughLocalization (weakEquivalences C) := by
  rintro X Y f g ⟨P, ⟨h⟩⟩
  let L := (weakEquivalences C).Q
  rw [areEqualizedByLocalization_iff L]
  suffices L.map P.p₀ = L.map P.p₁ by
    simp only [← h.h₀, ← h.h₁, L.map_comp, this]
  have := Localization.inverts L (weakEquivalences C) P.ι (by
    rw [← weakEquivalence_iff]
    infer_instance)
  simp [← cancel_epi (L.map P.ι), ← L.map_comp]

variable {X Y : C}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomotopy/Variantbacd555d942454fb377d0e4bb9a6e994ca0f968b464c165d26f15e1b6e835167.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomotopy/Variantbacd555d942454fb377d0e4bb9a6e994ca0f968b464c165d26f15e1b6e835167.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a88632971bc48805890f0d4f8f7f1dbbc72ed688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
