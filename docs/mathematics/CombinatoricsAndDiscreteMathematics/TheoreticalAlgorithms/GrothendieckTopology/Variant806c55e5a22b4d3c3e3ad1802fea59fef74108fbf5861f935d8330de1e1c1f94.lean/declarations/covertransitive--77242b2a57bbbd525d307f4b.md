# coverTransitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcf2bb8449de2ddaa9279c3511c04d574516ec5654598dc6a8dba441da29e531",
  "kind": "def",
  "lexical_name": "coverTransitive",
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
  "slug": "covertransitive--77242b2a57bbbd525d307f4b",
  "source": {
    "blob": "7b8ee53642422c260ef2e314af872a1d3fa31aae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 160,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GrothendieckTopology/Variant806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77242b2a57bbbd525d307f4b6cc74324adb1418b41ac93075a24a26ce5954954",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GrothendieckTopology/Variant806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcf2bb8449de2ddaa9279c3511c04d574516ec5654598dc6a8dba441da29e531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coverTransitive
    {M : BitMatrix}
    (cover : CoveringFamily M)
    (refinedPieces : List (BitInterval M))
    (hrefined :
      ∀ i : Fin (M.rows * M.cols),
        cover.target.Contains i ↔
          ∃ piece ∈ refinedPieces, piece.Contains i) :
    CoveringFamily M :=
  { target := cover.target
    pieces := refinedPieces
    coversExact := hrefined
    finiteSurface := true }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GrothendieckTopology/Variant806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GrothendieckTopology/Variant806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b8ee53642422c260ef2e314af872a1d3fa31aae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
