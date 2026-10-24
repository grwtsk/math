# finsetEquivSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:465a9abe6b944fa829b09f1cfb1a964f5f16995370536544c3954409cac3e295",
  "kind": "def",
  "lexical_name": "finsetEquivSet",
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
  "slug": "finsetequivset--80175497fa45cf90584c4c59",
  "source": {
    "blob": "af04803ae323d939ac3e1286bca22111158249cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 267,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80175497fa45cf90584c4c59b21fa4dd9e6de6edd2eda6b884cf5e85eee08c6c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:465a9abe6b944fa829b09f1cfb1a964f5f16995370536544c3954409cac3e295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def finsetEquivSet : Finset α ≃ Set α where
  toFun := (↑)
  invFun := by classical exact fun s => s.toFinset
  left_inv s := by convert Finset.toFinset_coe s
  right_inv s := by classical exact s.coe_toFinset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af04803ae323d939ac3e1286bca22111158249cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
