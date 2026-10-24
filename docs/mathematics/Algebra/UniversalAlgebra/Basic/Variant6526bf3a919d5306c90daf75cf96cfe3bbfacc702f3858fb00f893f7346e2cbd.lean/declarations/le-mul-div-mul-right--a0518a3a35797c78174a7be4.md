# le_mul_div_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335ef50464487b5763d4ad885d55d83b00964f1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 809,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/6526bf3a919d5306c90daf75cf96cfe3bbfacc702f3858fb00f893f7346e2cbd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7d5c374-4b27-3189-ae49-1b8583f8f778",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3bfa96b-140e-c337-8bc1-8f8ffebaa0b4",
  "kind": "lemma",
  "lexical_name": "le_mul_div_mul_right",
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
  "slug": "le-mul-div-mul-right--a0518a3a35797c78174a7be4",
  "source": {
    "blob": "335ef50464487b5763d4ad885d55d83b00964f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 819,
    "line": 809,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant6526bf3a919d5306c90daf75cf96cfe3bbfacc702f3858fb00f893f7346e2cbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0518a3a35797c78174a7be4cdbefb1ede4966861ed181671cba494839cfd1ee",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant6526bf3a919d5306c90daf75cf96cfe3bbfacc702f3858fb00f893f7346e2cbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3bfa96b-140e-c337-8bc1-8f8ffebaa0b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 809–819.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_mul_div_mul_right (h : a / b ≤ 0) : a / b ≤ a * c / (b * c) := by
  obtain rfl | hc := eq_or_ne c 0
  · simpa
  · rw [mul_div_mul_right _ _ hc]

end Preorder

section Preorder
variable [Preorder G₀] [ZeroLEOneClass G₀] {a : G₀}

/-- See `div_self` for the version with equality when `a ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant6526bf3a919d5306c90daf75cf96cfe3bbfacc702f3858fb00f893f7346e2cbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant6526bf3a919d5306c90daf75cf96cfe3bbfacc702f3858fb00f893f7346e2cbd.lean#L809).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335ef50464487b5763d4ad885d55d83b00964f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
