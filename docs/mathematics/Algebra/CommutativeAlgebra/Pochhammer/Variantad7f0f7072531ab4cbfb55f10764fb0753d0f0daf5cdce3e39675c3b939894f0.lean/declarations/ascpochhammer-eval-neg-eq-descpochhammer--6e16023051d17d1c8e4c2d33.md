# ascPochhammer_eval_neg_eq_descPochhammer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "481a161835e3d36f183fd32133e0d42c14462752",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c8be9b4-8067-6aa6-484c-7544cfdc0dc5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb4ad0ad-04e7-e59f-3e43-e7f91ed54dfb",
  "kind": "theorem",
  "lexical_name": "ascPochhammer_eval_neg_eq_descPochhammer",
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
  "slug": "ascpochhammer-eval-neg-eq-descpochhammer--6e16023051d17d1c8e4c2d33",
  "source": {
    "blob": "481a161835e3d36f183fd32133e0d42c14462752",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 389,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e16023051d17d1c8e4c2d33fc0749144602eade7113203bfc22220990b825da",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pochhammer/Variantad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb4ad0ad-04e7-e59f-3e43-e7f91ed54dfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ascPochhammer_eval_neg_eq_descPochhammer (r : R) : ∀ (k : ℕ),
    (ascPochhammer R k).eval (-r) = (-1) ^ k * (descPochhammer R k).eval r
  | 0 => by
    rw [ascPochhammer_zero, descPochhammer_zero]
    simp only [eval_one, pow_zero, mul_one]
  | (k + 1) => by
    rw [ascPochhammer_succ_right, mul_add, eval_add, eval_mul_X, ← Nat.cast_comm, eval_natCast_mul,
      Nat.cast_comm, ← mul_add, ascPochhammer_eval_neg_eq_descPochhammer r k, mul_assoc,
      descPochhammer_succ_right, mul_sub, eval_sub, eval_mul_X, ← Nat.cast_comm, eval_natCast_mul,
      pow_add, pow_one, mul_assoc ((-1) ^ k) (-1), mul_sub, neg_one_mul, neg_mul_eq_mul_neg,
      Nat.cast_comm, sub_eq_add_neg, neg_one_mul, neg_neg, ← mul_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pochhammer/Variantad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `481a161835e3d36f183fd32133e0d42c14462752` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
