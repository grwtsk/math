# profiniteCompletion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6981a535ae588153ff31f814c9aba1a16ea59179ca2f2230acc8cf135280c083",
  "kind": "def",
  "lexical_name": "profiniteCompletion",
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
  "slug": "profinitecompletion--df17c86deb7ce8279329e0c1",
  "source": {
    "blob": "3de3924839e882e77c302a4cfa0a58223bb80e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 191,
    "path": "GRWTSK/Algebra/GroupTheory/Completion/Variantcde38b842c1bdf2442dd4459cc917c90c447b3e3688f81cf3439cd6352882459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df17c86deb7ce8279329e0c146e3d0cc71ff246f386dcda3683eca92392dae32",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Completion/Variantcde38b842c1bdf2442dd4459cc917c90c447b3e3688f81cf3439cd6352882459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6981a535ae588153ff31f814c9aba1a16ea59179ca2f2230acc8cf135280c083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def profiniteCompletion : GrpCat.{u} ⥤ ProfiniteGrp.{u} where
  obj G := ProfiniteCompletion.completion G
  map f := ProfiniteCompletion.lift <| f ≫ ProfiniteCompletion.eta _
  map_id G := by
    apply ProfiniteCompletion.lift_unique
    cat_disch
  map_comp f g := by
    apply ProfiniteCompletion.lift_unique
    cat_disch

namespace ProfiniteCompletion

/-- The hom-set equivalence exhibiting the adjunction. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Completion/Variantcde38b842c1bdf2442dd4459cc917c90c447b3e3688f81cf3439cd6352882459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Completion/Variantcde38b842c1bdf2442dd4459cc917c90c447b3e3688f81cf3439cd6352882459.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de3924839e882e77c302a4cfa0a58223bb80e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
