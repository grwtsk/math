# convexBodyLT_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2484ecb-95ef-4d69-ad37-835b62ba83da",
  "kind": "theorem",
  "lexical_name": "convexBodyLT_mem",
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
  "slug": "convexbodylt-mem--55139aa31a32db8fd3c17ec3",
  "source": {
    "blob": "74653116c7f397063415db43507efd1c65a6c1ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55139aa31a32db8fd3c17ec331dfd91bfc3608d67a8945766bafd7cd9be9bfcb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2484ecb-95ef-4d69-ad37-835b62ba83da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexBodyLT_mem {x : K} :
    mixedEmbedding K x ∈ (convexBodyLT K f) ↔ ∀ w : InfinitePlace K, w x < f w := by
  simp_rw [mixedEmbedding, RingHom.prod_apply, Set.mem_prod, Set.mem_pi, Set.mem_univ,
    forall_true_left, mem_ball_zero_iff, Pi.ringHom_apply, ← Complex.norm_real,
    embedding_of_isReal_apply, Subtype.forall, ← forall₂_or_left, ← not_isReal_iff_isComplex, em,
    forall_true_left, norm_embedding_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74653116c7f397063415db43507efd1c65a6c1ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
