# instCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae4a4c81e7a91bde5d053f5ef4b1db6fd4322dda905a6ebca6506846bfad3b8f",
  "kind": "instance",
  "lexical_name": "instCommMonoid",
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
  "slug": "instcommmonoid--e3bb6b4e2a304b005d88d0a7",
  "source": {
    "blob": "16f5b5c17726ad4d50cc37af5b80f2f4bc76146e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 100,
    "path": "GRWTSK/Algebra/UInt/Variantf430b7859ce2ba7f57d896724ab604aa3c4764c8ed55090da4e2dd3b4d0deb8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3bb6b4e2a304b005d88d0a7fa236056856d70da9078e6f90c769df425ac4d29",
  "verification": {
    "reference": "docs/verification/Algebra/UInt/Variantf430b7859ce2ba7f57d896724ab604aa3c4764c8ed55090da4e2dd3b4d0deb8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae4a4c81e7a91bde5d053f5ef4b1db6fd4322dda905a6ebca6506846bfad3b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
      instance instCommMonoid : CommMonoid $typeName :=
        Function.Injective.commMonoid toBitVec toBitVec_injective
          toBitVec_one (fun _ _ => toBitVec_mul) (fun _ _ => toBitVec_pow _ _)

      open $typeName (
        toBitVec_zero toBitVec_add toBitVec_mul toBitVec_neg toBitVec_sub toBitVec_nsmul
        toBitVec_zsmul) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UInt/Variantf430b7859ce2ba7f57d896724ab604aa3c4764c8ed55090da4e2dd3b4d0deb8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UInt/Variantf430b7859ce2ba7f57d896724ab604aa3c4764c8ed55090da4e2dd3b4d0deb8b.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16f5b5c17726ad4d50cc37af5b80f2f4bc76146e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
