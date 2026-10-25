# SufficientRepresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c99d5352ff707cfb5bcf658ae00ffbfd61cd729e23f78df2fd5d5d142907ecc1",
  "kind": "structure",
  "lexical_name": "SufficientRepresentation",
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
  "slug": "sufficientrepresentation--49bc5588cd92bd7a47fa825f",
  "source": {
    "blob": "e6744ae61467f525ffc30fcb8d1009d93abfaef1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant6df2531817b08ca0e7072d7397acc61d074baf85c7280a1dbb21be744ee1ca48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49bc5588cd92bd7a47fa825f031028fd0c3082a84c7bf4bde003b8b6cee6b2ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant6df2531817b08ca0e7072d7397acc61d074baf85c7280a1dbb21be744ee1ca48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c99d5352ff707cfb5bcf658ae00ffbfd61cd729e23f78df2fd5d5d142907ecc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SufficientRepresentation {State : Type u} {Index : Type v}
    (C : CertificateFamily.{u, v, w} State Index) where
  /-- Carrier of the compressed representation. -/
  carrier : Type a
  /-- Compression map from states to the representation carrier. -/
  compress : State → carrier
  /-- Recovery map for each admitted observable from compressed data. -/
  recover : (i : Index) → carrier → C.value i
  recover_compress : ∀ i s, recover i (compress s) = C.observe i s

namespace SufficientRepresentation

variable {State : Type u} {Index : Type v} {C : CertificateFamily.{u, v, w} State Index}

/-- q factors through r when the compression carried by r still contains enough
information to reconstruct the compression carried by q. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant6df2531817b08ca0e7072d7397acc61d074baf85c7280a1dbb21be744ee1ca48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant6df2531817b08ca0e7072d7397acc61d074baf85c7280a1dbb21be744ee1ca48.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6744ae61467f525ffc30fcb8d1009d93abfaef1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
