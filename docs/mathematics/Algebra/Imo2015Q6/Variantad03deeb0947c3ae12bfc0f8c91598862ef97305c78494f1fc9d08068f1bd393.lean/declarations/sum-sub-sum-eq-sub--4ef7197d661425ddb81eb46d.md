# sum_sub_sum_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dff4316401e74ec63ac264015bb26a0ea6ab3211",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12678fee-1220-3813-a9ff-e5cbd779858a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3069141b-79a4-8fab-df45-1102e712765d",
  "kind": "lemma",
  "lexical_name": "sum_sub_sum_eq_sub",
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
  "slug": "sum-sub-sum-eq-sub--4ef7197d661425ddb81eb46d",
  "source": {
    "blob": "dff4316401e74ec63ac264015bb26a0ea6ab3211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 146,
    "path": "GRWTSK/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ef7197d661425ddb81eb46d38a869848e74eb243401b0d7eff23248fb363872",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3069141b-79a4-8fab-df45-1102e712765d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_sub_sum_eq_sub : ∑ x ∈ pool a (t + 1), x - ∑ x ∈ pool a t, x = a t - b := by
  simp_rw [pool, sum_map, Equiv.coe_toEmbedding, Equiv.subRight_apply]
  have nms : a t ∉ (pool a t).erase 0 := by
    rw [mem_erase, not_and_or]; exact .inr (notMem_pool_self ha)
  rw [sum_insert nms, sum_erase_eq_sub (h := zero_mem_pool ha hbN ht), sum_sub_distrib, sum_const,
    nsmul_one, hbN _ ht]
  omega

/-- The telescoping sum giving the part of the problem's expression within the modulus signs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dff4316401e74ec63ac264015bb26a0ea6ab3211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
