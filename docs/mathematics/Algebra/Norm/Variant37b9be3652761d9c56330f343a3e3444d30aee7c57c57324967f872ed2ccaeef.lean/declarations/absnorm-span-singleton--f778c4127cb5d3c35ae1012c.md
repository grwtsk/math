# absNorm_span_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd2035349400e1bb55bf7b0f7062703a382a87ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f6b0510-f02b-95d9-b9d5-ab3f2fa12cfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd149d8a-4a7c-fb14-1ead-0421bb799ac3",
  "kind": "theorem",
  "lexical_name": "absNorm_span_singleton",
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
  "slug": "absnorm-span-singleton--f778c4127cb5d3c35ae1012c",
  "source": {
    "blob": "fd2035349400e1bb55bf7b0f7062703a382a87ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 139,
    "path": "GRWTSK/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f778c4127cb5d3c35ae1012c4354e1abaa84d9b9c303fb9dfeb84df5d824abb3",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd149d8a-4a7c-fb14-1ead-0421bb799ac3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absNorm_span_singleton [Module.Finite ℚ K] (x : K) :
    absNorm (spanSingleton R⁰ x) = |(Algebra.norm ℚ x)| := by
  have : IsDomain K := IsFractionRing.isDomain R
  obtain ⟨d, ⟨r, hr⟩⟩ := IsLocalization.exists_integer_multiple R⁰ x
  rw [absNorm_eq' d (Ideal.span {r})]
  · rw [Ideal.absNorm_span_singleton]
    simp_rw [Nat.cast_natAbs, Int.cast_abs, show ((Algebra.norm ℤ _) : ℚ) = algebraMap ℤ ℚ
      (Algebra.norm ℤ _) by rfl, ← Algebra.norm_localization ℤ ℤ⁰ (Sₘ := K) _]
    rw [hr, Algebra.smul_def, map_mul, abs_mul, mul_div_assoc, mul_div_cancel₀ _ (by
      rw [ne_eq, abs_eq_zero, Algebra.norm_eq_zero_iff, IsFractionRing.to_map_eq_zero_iff]
      exact nonZeroDivisors.coe_ne_zero _)]
  · ext
    simp_rw [Submodule.mem_smul_pointwise_iff_exists, mem_coe, mem_spanSingleton, Submodule.mem_map,
      Algebra.linearMap_apply, Submonoid.smul_def, Ideal.mem_span_singleton', exists_exists_eq_and,
      map_mul, hr, ← Algebra.smul_def, smul_comm (d : R)]

end IsLocalization

end FractionalIdeal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd2035349400e1bb55bf7b0f7062703a382a87ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
