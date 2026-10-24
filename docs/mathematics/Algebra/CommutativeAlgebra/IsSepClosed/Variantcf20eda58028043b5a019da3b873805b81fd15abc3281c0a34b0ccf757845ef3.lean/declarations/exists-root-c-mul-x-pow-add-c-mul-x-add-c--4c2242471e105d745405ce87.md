# exists_root_C_mul_X_pow_add_C_mul_X_add_C'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcf3681f6bda45a3b6925916728ab1c7234fc630",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2b47ba9-1e9b-e0ed-f642-56e3ee32ae06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:940738b6-0eb4-4ef6-9714-d27d35660d57",
  "kind": "theorem",
  "lexical_name": "exists_root_C_mul_X_pow_add_C_mul_X_add_C'",
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
  "slug": "exists-root-c-mul-x-pow-add-c-mul-x-add-c--4c2242471e105d745405ce87",
  "source": {
    "blob": "bcf3681f6bda45a3b6925916728ab1c7234fc630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 118,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c2242471e105d745405ce875573a6883a8d383455905f973890da2a450bf03e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:940738b6-0eb4-4ef6-9714-d27d35660d57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_root_C_mul_X_pow_add_C_mul_X_add_C'
    [IsSepClosed k] (p n : ℕ) (a b c : k) [CharP k p] (hn : p ∣ n) (hn' : 2 ≤ n) (hb : b ≠ 0) :
    ∃ x, a * x ^ n + b * x + c = 0 :=
  exists_root_C_mul_X_pow_add_C_mul_X_add_C a b c ((CharP.cast_eq_zero_iff k p n).2 hn) hn' hb

variable (k) in
/-- A separably closed perfect field is also algebraically closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf3681f6bda45a3b6925916728ab1c7234fc630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
