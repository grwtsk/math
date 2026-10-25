# frame_defect_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9ce9c71-f146-0065-5ef5-5963d0c3290d",
  "kind": "theorem",
  "lexical_name": "frame_defect_identity",
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
  "slug": "frame-defect-identity--2c8a594acd6fe7b3d71a37e0",
  "source": {
    "blob": "3f1f5547a7e3972705bf5dc9531620238775a327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSourcePhaseFrame/Variant36ab31f073e648c96fad88f63415eaffc56a5f8f2ca5f6dbb85235e5c8f7e586.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c8a594acd6fe7b3d71a37e06824997d36cdcb35a03a699b84fa1f1a66890c77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSourcePhaseFrame/Variant36ab31f073e648c96fad88f63415eaffc56a5f8f2ca5f6dbb85235e5c8f7e586.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9ce9c71-f146-0065-5ef5-5963d0c3290d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frame_defect_identity (δ γ x y : ℝ) :
    (1 + (δ ^ 2 + γ ^ 2) ^ 2) * (x ^ 2 + secondProbe δ γ x y ^ 2) -
      4 * δ ^ 2 * γ ^ 2 * (x ^ 2 + y ^ 2) =
      (x + (δ ^ 2 - γ ^ 2) * secondProbe δ γ x y) ^ 2 +
        (2 * δ * γ * secondProbe δ γ x y) ^ 2 := by
  unfold secondProbe
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSourcePhaseFrame/Variant36ab31f073e648c96fad88f63415eaffc56a5f8f2ca5f6dbb85235e5c8f7e586.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BranchSourcePhaseFrame/Variant36ab31f073e648c96fad88f63415eaffc56a5f8f2ca5f6dbb85235e5c8f7e586.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f1f5547a7e3972705bf5dc9531620238775a327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
