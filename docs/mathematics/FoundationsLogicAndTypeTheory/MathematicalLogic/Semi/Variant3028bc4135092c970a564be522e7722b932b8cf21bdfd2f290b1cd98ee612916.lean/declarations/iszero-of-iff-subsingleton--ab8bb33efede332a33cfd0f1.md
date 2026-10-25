# isZero_of_iff_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5757a52b-574f-3a11-54d8-82bf78721570",
  "kind": "lemma",
  "lexical_name": "isZero_of_iff_subsingleton",
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
  "slug": "iszero-of-iff-subsingleton--ab8bb33efede332a33cfd0f1",
  "source": {
    "blob": "314d8be94fe34e5c3760811a838eefbb489da690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 338,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semi/Variant3028bc4135092c970a564be522e7722b932b8cf21bdfd2f290b1cd98ee612916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab8bb33efede332a33cfd0f1a006add54b06550b4f59cd08f2a9fbebd1ad92f6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Semi/Variant3028bc4135092c970a564be522e7722b932b8cf21bdfd2f290b1cd98ee612916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5757a52b-574f-3a11-54d8-82bf78721570`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isZero_of_iff_subsingleton {M : Type*} [AddCommMonoid M] [Module R M] :
    IsZero (of R M) ↔ Subsingleton M := isZero_iff_subsingleton

end AddCommMonoid

section SMul

variable {M N : SemimoduleCat.{v} R}
variable {S : Type*} [Monoid S] [DistribMulAction S N] [SMulCommClass R S N]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Semi/Variant3028bc4135092c970a564be522e7722b932b8cf21bdfd2f290b1cd98ee612916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semi/Variant3028bc4135092c970a564be522e7722b932b8cf21bdfd2f290b1cd98ee612916.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `314d8be94fe34e5c3760811a838eefbb489da690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
