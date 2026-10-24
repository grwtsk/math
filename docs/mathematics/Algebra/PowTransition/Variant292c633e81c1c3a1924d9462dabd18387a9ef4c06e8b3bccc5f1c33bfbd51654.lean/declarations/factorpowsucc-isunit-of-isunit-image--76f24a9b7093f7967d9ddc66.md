# factorPowSucc.isUnit_of_isUnit_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63077f54dd26743062476b81030b79d24097c54f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be8e09dd-88ed-49ff-b302-5641409540e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b9e244a-dd25-6b81-7dc8-448a8414ed7a",
  "kind": "lemma",
  "lexical_name": "factorPowSucc.isUnit_of_isUnit_image",
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
  "slug": "factorpowsucc-isunit-of-isunit-image--76f24a9b7093f7967d9ddc66",
  "source": {
    "blob": "63077f54dd26743062476b81030b79d24097c54f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 133,
    "path": "GRWTSK/Algebra/PowTransition/Variant292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76f24a9b7093f7967d9ddc66a9ad747a3123ada41403247d7dbc988063511c38",
  "verification": {
    "reference": "docs/verification/Algebra/PowTransition/Variant292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b9e244a-dd25-6b81-7dc8-448a8414ed7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma factorPowSucc.isUnit_of_isUnit_image {n : ℕ} (npos : n > 0) {a : R ⧸ I ^ (n + 1)}
    (h : IsUnit (factorPow I n.le_succ a)) : IsUnit a := by
  rcases isUnit_iff_exists.mp h with ⟨b, hb, _⟩
  rcases factor_surjective (pow_le_pow_right n.le_succ) b with ⟨b', hb'⟩
  rw [← hb', ← map_one (factorPow I n.le_succ), ← map_mul] at hb
  apply (RingHom.sub_mem_ker_iff (factorPow I n.le_succ)).mpr at hb
  rw [factor_ker (pow_le_pow_right n.le_succ)] at hb
  rcases Ideal.mem_image_of_mem_map_of_surjective (Ideal.Quotient.mk (I ^ (n + 1)))
    Ideal.Quotient.mk_surjective hb with ⟨c, hc, eq⟩
  apply isUnit_of_mul_eq_one _ (b' * (1 - ((Ideal.Quotient.mk (I ^ (n + 1))) c)))
  calc
    _ = (a * b' - 1) * (1 - ((Ideal.Quotient.mk (I ^ (n + 1))) c)) +
        (1 - ((Ideal.Quotient.mk (I ^ (n + 1))) c)) := by ring
    _ = 1 := by
      rw [← eq, mul_sub, mul_one, sub_add_sub_cancel', sub_eq_self, ← map_mul,
        Ideal.Quotient.eq_zero_iff_mem, pow_add]
      apply Ideal.mul_mem_mul hc (Ideal.mul_le_left (I := I ^ (n - 1)) _)
      simpa only [← pow_add, Nat.sub_add_cancel npos] using hc
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowTransition/Variant292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowTransition/Variant292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63077f54dd26743062476b81030b79d24097c54f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
