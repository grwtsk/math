# StrictCompatibleFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:937fb5181735754c74d0fd6143455302959b9762a794ad4c3f5c3ac6ba3140ca",
  "kind": "structure",
  "lexical_name": "StrictCompatibleFamily",
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
  "slug": "strictcompatiblefamily--9a57d1a4f173d9229916d8a7",
  "source": {
    "blob": "c4a9de8d66f7c0a25e8cb52501c7869622d9a939",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a57d1a4f173d9229916d8a784b2ec881d698b174535ce26e92fd1bd6339db50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:937fb5181735754c74d0fd6143455302959b9762a794ad4c3f5c3ac6ba3140ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StrictCompatibleFamily {M : BitMatrix}
    {target : BitInterval M} (cover : BitIntervalCover M target) where
  sectionAt :
    ∀ interval : BitInterval M,
      interval ∈ cover.pieces → BitLookupSection M interval
  sectionAgreement :
    ∀ (left right : BitInterval M)
      (leftMem : left ∈ cover.pieces) (rightMem : right ∈ cover.pieces)
      (idx : Fin (M.rows * M.cols))
      (leftHit : left.Contains idx)
      (rightHit : right.Contains idx),
        sectionAt left leftMem idx leftHit =
          sectionAt right rightMem idx rightHit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4a9de8d66f7c0a25e8cb52501c7869622d9a939` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
