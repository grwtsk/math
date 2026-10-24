# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MultilinearMap.Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.LinearMap.compMultilinearMapₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1cfa2aa86d00c2f9ea5bb04e6d4577cd0a404e13c99416dd859bd91c8eed361",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MultilinearMap.Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.LinearMap.compMultilinearMapₗ",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-multilinearmap-varianta5--820dbedf52d2cfb70337e098",
  "source": {
    "blob": "5673e3ee94a2d607bd6a91444f39c8d0be9992ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 928,
    "line": 917,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:820dbedf52d2cfb70337e0988bc175f385fb37c13a801a72b015e464052bc29e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1cfa2aa86d00c2f9ea5bb04e6d4577cd0a404e13c99416dd859bd91c8eed361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 917–928.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MultilinearMap.Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.LinearMap.compMultilinearMapₗ [LinearMap.CompatibleSMul M₂ M₃ S R] (g : M₂ →ₗ[R] M₃) :
    MultilinearMap R M₁ M₂ →ₗ[S] MultilinearMap R M₁ M₃ where
  toFun := g.compMultilinearMap
  map_add' := g.compMultilinearMap_add
  map_smul' := g.compMultilinearMap_smul

variable (S) in
/-- An isomorphism of multilinear maps given an isomorphism between their codomains.

This is `LinearMap.compMultilinearMap` as an `S`-linear equivalence,
and the multilinear version of `LinearEquiv.congrRight`. -/
@[simps! apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean#L917).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5673e3ee94a2d607bd6a91444f39c8d0be9992ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
