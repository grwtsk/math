# sup_sq_eq_mul_mul_mabs_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5eb5fbd0-8c4a-7e4d-0924-f6a018491756",
  "kind": "lemma",
  "lexical_name": "sup_sq_eq_mul_mul_mabs_div",
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
  "slug": "sup-sq-eq-mul-mul-mabs-div--edc5b9cb40c38c8995bd29ec",
  "source": {
    "blob": "c65a24e913cdce70b81dfd54b78bca948998d3f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 154,
    "path": "GRWTSK/Algebra/GroupTheory/Abs/Variantf49954a81c18c65fa245625464420871f8142934c311f8faaa993ce6ae0e477b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edc5b9cb40c38c8995bd29ec117700b752112242107953f740acbbbe79659f3a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Abs/Variantf49954a81c18c65fa245625464420871f8142934c311f8faaa993ce6ae0e477b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5eb5fbd0-8c4a-7e4d-0924-f6a018491756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sup_sq_eq_mul_mul_mabs_div (a b : α) : (a ⊔ b) ^ 2 = a * b * |b / a|ₘ := by
  rw [← inf_mul_sup a b, ← sup_div_inf_eq_mabs_div, div_eq_mul_inv, ← mul_assoc, mul_comm,
     mul_assoc, ← pow_two, inv_mul_cancel_left]

@[to_additive two_nsmul_inf_eq_add_sub_abs_sub]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Abs/Variantf49954a81c18c65fa245625464420871f8142934c311f8faaa993ce6ae0e477b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Abs/Variantf49954a81c18c65fa245625464420871f8142934c311f8faaa993ce6ae0e477b.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c65a24e913cdce70b81dfd54b78bca948998d3f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
