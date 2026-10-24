# coeff_modByMonic_mem_pow_natDegree_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c59f28d9f5dc670b87a020d7a07f00f672ea4920",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85281a9f-7724-c14d-8447-45767bca2047",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93a77144-a58f-1994-0a3c-cb0eef687617",
  "kind": "lemma",
  "lexical_name": "coeff_modByMonic_mem_pow_natDegree_mul",
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
  "slug": "coeff-modbymonic-mem-pow-natdegree-mul--814681ea8cf5babac6d62bb3",
  "source": {
    "blob": "c59f28d9f5dc670b87a020d7a07f00f672ea4920",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 80,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:814681ea8cf5babac6d62bb33a6dcfb34f70285f432fca4902bf336bf0356098",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93a77144-a58f-1994-0a3c-cb0eef687617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_modByMonic_mem_pow_natDegree_mul (p q : S[X])
    (Mp : Submodule R S) (hp : ∀ i, p.coeff i ∈ Mp) (hp' : 1 ∈ Mp)
    (Mq : Submodule R S) (hq : ∀ i, q.coeff i ∈ Mq) (hq' : 1 ∈ Mq) (i : ℕ) :
    (p %ₘ q).coeff i ∈ Mq ^ p.natDegree * Mp := by
  delta modByMonic
  split_ifs with H
  · refine SetLike.le_def.mp ?_ (coeff_divModByMonicAux_mem_span_pow_mul_span (R := R) p q H i).2
    gcongr <;> exact sup_le (by simpa) (by simpa [Submodule.span_le, Set.range_subset_iff])
  · rw [← one_mul (p.coeff i), ← one_pow p.natDegree]
    exact Submodule.mul_mem_mul (Submodule.pow_mem_pow Mq hq' _) (hp i)

/-- For polynomials `p q : R[X]`, the coefficients of `p /ₘ q` can be written as sums of products of
coefficients of `p` and `q`.

Precisely, each summand needs at most one coefficient of `p` and `deg p` coefficients of `q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CoeffMem/Variant43d2c769d3173e60288ad180e16f0157c155bcb470c3d3ef7cfc67d78b0b74de.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c59f28d9f5dc670b87a020d7a07f00f672ea4920` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
