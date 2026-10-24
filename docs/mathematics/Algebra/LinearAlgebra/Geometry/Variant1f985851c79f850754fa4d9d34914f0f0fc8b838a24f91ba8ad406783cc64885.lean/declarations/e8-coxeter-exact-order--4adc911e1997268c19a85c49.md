# e8_coxeter_exact_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d7d2750eaf0f7d1abf5026250675cc32f3c3ae7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d1f0299-602f-b3b2-5657-9fecb82a2b58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebf54f0c-d58c-2718-0bfe-3f1015cfd901",
  "kind": "theorem",
  "lexical_name": "e8_coxeter_exact_order",
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
  "slug": "e8-coxeter-exact-order--4adc911e1997268c19a85c49",
  "source": {
    "blob": "9d7d2750eaf0f7d1abf5026250675cc32f3c3ae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 387,
    "path": "GRWTSK/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4adc911e1997268c19a85c49ad4d863fdcb92e5199822e8aa977b8c4f7e6fb62",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebf54f0c-d58c-2718-0bfe-3f1015cfd901`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem e8_coxeter_exact_order : e8Coxeter ^ 30 = 1 ∧
    ∀ k : Fin 29, e8Coxeter ^ (k.val+1) ≠ 1 := by
  constructor
  · rw [e8_pow_certificate 30 (by omega)]
    decide +kernel
  · intro k
    rw [e8_pow_certificate (k.val+1) (by omega)]
    have h : ∀ j : Fin 29, e8Powers[j.val+1]! ≠ 1 := by decide +kernel
    exact h k

/-- Exact geometric data for `e8CQ` on its stated carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7d2750eaf0f7d1abf5026250675cc32f3c3ae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
