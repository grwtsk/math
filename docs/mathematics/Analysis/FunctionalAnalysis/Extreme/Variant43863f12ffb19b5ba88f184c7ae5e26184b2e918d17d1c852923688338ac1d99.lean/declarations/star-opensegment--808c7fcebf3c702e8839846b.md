# star_openSegment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f091ecae-84d4-878b-1ac6-e1ada846402b",
  "kind": "lemma",
  "lexical_name": "star_openSegment",
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
  "slug": "star-opensegment--808c7fcebf3c702e8839846b",
  "source": {
    "blob": "326bbf8804716ccbf3108711e4582ce50b2f67bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 311,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:808c7fcebf3c702e8839846b057a4be05822a8b531177a8931a12912e9f7f174",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f091ecae-84d4-878b-1ac6-e1ada846402b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma star_openSegment (x y : E) :
    star (openSegment 𝕜 x y) = openSegment 𝕜 (star x) (star y) := by
  suffices ∀ x y : E, openSegment 𝕜 x y ⊆ star (openSegment 𝕜 (star x) (star y)) from
    le_antisymm (by simpa [star_subset] using this x y) (by simpa using this (star x) (star y))
  exact fun x y a ⟨b, c, hb, hc, hbc, ha⟩ ↦ ⟨star b, star c, by grind [star_one]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant43863f12ffb19b5ba88f184c7ae5e26184b2e918d17d1c852923688338ac1d99.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `326bbf8804716ccbf3108711e4582ce50b2f67bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
