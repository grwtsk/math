# NonUnitalSubring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:effc5cc576c50488cceab3dcf2d91a5e8ad2487631ec1ecf9adaf848ce91da1d",
  "kind": "structure",
  "lexical_name": "NonUnitalSubring",
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
  "slug": "nonunitalsubring--7e6e3c56dc1f706a4f9ccb66",
  "source": {
    "blob": "78ea3c05a5929e1689791d2353b865926ac15687",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e6e3c56dc1f706a4f9ccb669f97da8299152abb2aabcbeca9ddc867c81fbbbe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:effc5cc576c50488cceab3dcf2d91a5e8ad2487631ec1ecf9adaf848ce91da1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NonUnitalSubring (R : Type u) [NonUnitalNonAssocRing R] extends
  NonUnitalSubsemiring R, AddSubgroup R

/-- Reinterpret a `NonUnitalSubring` as a `NonUnitalSubsemiring`. -/
add_decl_doc NonUnitalSubring.toNonUnitalSubsemiring

/-- Reinterpret a `NonUnitalSubring` as an `AddSubgroup`. -/
add_decl_doc NonUnitalSubring.toAddSubgroup

namespace NonUnitalSubring

/-- The underlying submonoid of a `NonUnitalSubring`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ea3c05a5929e1689791d2353b865926ac15687` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
