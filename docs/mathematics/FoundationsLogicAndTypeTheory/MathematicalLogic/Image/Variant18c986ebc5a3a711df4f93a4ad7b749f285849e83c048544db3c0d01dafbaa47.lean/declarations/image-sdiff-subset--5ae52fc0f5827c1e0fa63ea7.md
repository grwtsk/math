# image_sdiff_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7742beb3-22ce-0f5d-bb9e-97b384d5c666",
  "kind": "theorem",
  "lexical_name": "image_sdiff_subset",
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
  "slug": "image-sdiff-subset--5ae52fc0f5827c1e0fa63ea7",
  "source": {
    "blob": "30af0b82b2fed14cb95764375d0b943cd8ff4725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variant18c986ebc5a3a711df4f93a4ad7b749f285849e83c048544db3c0d01dafbaa47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ae52fc0f5827c1e0fa63ea76e5f91354d8cd589609fd7c30167c2069517539c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variant18c986ebc5a3a711df4f93a4ad7b749f285849e83c048544db3c0d01dafbaa47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7742beb3-22ce-0f5d-bb9e-97b384d5c666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_sdiff_subset (f : α → β) (s t : Set α) : f '' (s \ t) ⊆ f '' s ∩ f '' tᶜ :=
  image_inter_subset f s tᶜ

@[deprecated (since := "2026-06-03")] alias image_diff_subset := image_sdiff_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variant18c986ebc5a3a711df4f93a4ad7b749f285849e83c048544db3c0d01dafbaa47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variant18c986ebc5a3a711df4f93a4ad7b749f285849e83c048544db3c0d01dafbaa47.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30af0b82b2fed14cb95764375d0b943cd8ff4725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
