# integralNormalization_aeval_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06dd5a2f76c6c2e0a75f5766f9d36e177a35ff0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:792015a0-ae52-b7ff-9993-041e9b126445",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:962f463c-ad5e-45fb-7a74-65e3137a0e82",
  "kind": "theorem",
  "lexical_name": "integralNormalization_aeval_eq_zero",
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
  "slug": "integralnormalization-aeval-eq-zero--64a8ccba55e006a41f902622",
  "source": {
    "blob": "06dd5a2f76c6c2e0a75f5766f9d36e177a35ff0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 147,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64a8ccba55e006a41f90262221e3e6a3fad78c69d5ef72ae691e64b502d2b1f0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:962f463c-ad5e-45fb-7a74-65e3137a0e82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralNormalization_aeval_eq_zero [Algebra R S] {f : R[X]} {z : S} (hz : aeval z f = 0)
    (inj : ∀ x : R, algebraMap R S x = 0 → x = 0) :
    aeval (z * algebraMap R S f.leadingCoeff) (integralNormalization f) = 0 :=
  integralNormalization_eval₂_eq_zero (algebraMap R S) hz inj
#align polynomial.integral_normalization_aeval_eq_zero Polynomial.integralNormalization_aeval_eq_zero

end IsDomain

end IntegralNormalization

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06dd5a2f76c6c2e0a75f5766f9d36e177a35ff0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
