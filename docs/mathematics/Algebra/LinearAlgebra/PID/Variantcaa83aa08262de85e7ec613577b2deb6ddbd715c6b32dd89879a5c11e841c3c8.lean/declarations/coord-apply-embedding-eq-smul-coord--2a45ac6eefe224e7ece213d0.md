# coord_apply_embedding_eq_smul_coord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7d74178-7ae9-3813-c342-1a37add5be3e",
  "kind": "lemma",
  "lexical_name": "coord_apply_embedding_eq_smul_coord",
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
  "slug": "coord-apply-embedding-eq-smul-coord--2a45ac6eefe224e7ece213d0",
  "source": {
    "blob": "b5afef672f3b4238f35d3d69c040cb35f1afe227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 478,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a45ac6eefe224e7ece213d05c4ca6cf3f7ddb761e9c6582ff640022a9006a17",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7d74178-7ae9-3813-c342-1a37add5be3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma coord_apply_embedding_eq_smul_coord {i : Fin n} :
    snf.bM.coord (snf.f i) ∘ₗ N.subtype = snf.a i • snf.bN.coord i := by
  ext m
  simp [Pi.smul_apply (snf.a i)]

/-- Given a Smith-normal-form pair of bases for `N ⊆ M`, and a linear endomorphism `f` of `M`
that preserves `N`, the diagonal of the matrix of the restriction `f` to `N` does not depend on
which of the two bases for `N` is used. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5afef672f3b4238f35d3d69c040cb35f1afe227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
