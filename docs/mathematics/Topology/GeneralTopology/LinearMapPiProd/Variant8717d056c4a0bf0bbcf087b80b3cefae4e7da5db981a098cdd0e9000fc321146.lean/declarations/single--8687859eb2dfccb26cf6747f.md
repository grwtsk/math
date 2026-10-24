# single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19b864799c8404b50041acfb18ac85400dc5a7bf40cca88554ed1bb8ffc5b7ed",
  "kind": "def",
  "lexical_name": "single",
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
  "slug": "single--8687859eb2dfccb26cf6747f",
  "source": {
    "blob": "51cb365840f352a8028b62e5da95e0cb9d84d621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8687859eb2dfccb26cf6747f86e0ab0e72530d0216b04fe3941c37e916b0663c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19b864799c8404b50041acfb18ac85400dc5a7bf40cca88554ed1bb8ffc5b7ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def single [DecidableEq ι] (i : ι) : φ i →L[R] (∀ i, φ i) where
  toLinearMap := .single R φ i
  cont := continuous_single _

end Pi

section Ring

variable {R : Type*} [Ring R]
  {M : Type*} [TopologicalSpace M] [AddCommGroup M] [Module R M]
  {M₂ : Type*} [TopologicalSpace M₂] [AddCommGroup M₂] [Module R M₂]
  {M₃ : Type*} [TopologicalSpace M₃] [AddCommGroup M₃] [Module R M₃]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51cb365840f352a8028b62e5da95e0cb9d84d621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
