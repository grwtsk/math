# index_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b4e97d5-b015-fc28-9dbf-6a5a2d162025",
  "kind": "lemma",
  "lexical_name": "index_subtype",
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
  "slug": "index-subtype--e42b33f31acb39b69a6ec07e",
  "source": {
    "blob": "65314b1c9412d1667680e45ead8b4067c4de0a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/Index/Variant598f1e489c64e704f6db4dbf6e0be5d993f4d22416564a95221b3807fb0c29cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e42b33f31acb39b69a6ec07e7cdf5291a3c6610d3e3afee4bd85b254fae5dd55",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Index/Variant598f1e489c64e704f6db4dbf6e0be5d993f4d22416564a95221b3807fb0c29cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b4e97d5-b015-fc28-9dbf-6a5a2d162025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] public lemma index_subtype [Nontrivial R] {S : Submodule R M} :
    S.subtype.index = - finrank R (M ⧸ S) := by
  rw [index_of_injective S.injective_subtype, S.range_subtype]

variable [StrongRankCondition R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Index/Variant598f1e489c64e704f6db4dbf6e0be5d993f4d22416564a95221b3807fb0c29cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Index/Variant598f1e489c64e704f6db4dbf6e0be5d993f4d22416564a95221b3807fb0c29cc.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65314b1c9412d1667680e45ead8b4067c4de0a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
