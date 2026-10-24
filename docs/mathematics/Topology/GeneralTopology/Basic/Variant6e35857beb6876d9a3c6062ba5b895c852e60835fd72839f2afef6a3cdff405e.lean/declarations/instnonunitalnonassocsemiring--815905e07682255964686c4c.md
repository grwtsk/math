# instNonUnitalnonAssocSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b0e0af85f185c3d97b2fba265c0723974440e7b300f69fa7164c8e8b4870dc7",
  "kind": "instance",
  "lexical_name": "instNonUnitalnonAssocSemiring",
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
  "slug": "instnonunitalnonassocsemiring--815905e07682255964686c4c",
  "source": {
    "blob": "a417d840b1b428a363b894bc6e68ec36c75e78fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 265,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:815905e07682255964686c4ca21e105a3513574d2e3cba5487a87a6c99878f34",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b0e0af85f185c3d97b2fba265c0723974440e7b300f69fa7164c8e8b4870dc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNonUnitalnonAssocSemiring [NonUnitalNonAssocSemiring R]
    [IsTopologicalSemiring R] : NonUnitalNonAssocSemiring (SeparationQuotient R) :=
  surjective_mk.nonUnitalNonAssocSemiring mk mk_zero mk_add mk_mul mk_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a417d840b1b428a363b894bc6e68ec36c75e78fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
