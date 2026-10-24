# inv_right₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "046fab91c2418b5d0d73e22307300bd51ceb1333",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/110ff46e55e4bb55c82f68c0501dc257267c2ed75a9f629657be82b17004f811.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df472280-4fcc-5d54-9a75-78f375f75e7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ae4b873-fe44-1368-8256-688a01388cb0",
  "kind": "theorem",
  "lexical_name": "inv_right₀",
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
  "slug": "inv-right--32a9c7cd562c764cf15a0bd4",
  "source": {
    "blob": "046fab91c2418b5d0d73e22307300bd51ceb1333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 44,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Semiconj/Variant110ff46e55e4bb55c82f68c0501dc257267c2ed75a9f629657be82b17004f811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32a9c7cd562c764cf15a0bd4a905373ce8efee84b01277f5cde5bd008c5007f6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Semiconj/Variant110ff46e55e4bb55c82f68c0501dc257267c2ed75a9f629657be82b17004f811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ae4b873-fe44-1368-8256-688a01388cb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_right₀ (h : SemiconjBy a x y) : SemiconjBy a x⁻¹ y⁻¹ := by
  by_cases ha : a = 0
  · simp only [ha, zero_left]
  by_cases hx : x = 0
  · subst x
    simp only [SemiconjBy, mul_zero, @eq_comm _ _ (y * a), mul_eq_zero] at h
    simp [h.resolve_right ha]
  · have := mul_ne_zero ha hx
    rw [h.eq, mul_ne_zero_iff] at this
    exact @units_inv_right _ _ _ (Units.mk0 x hx) (Units.mk0 y this.1) h
#align semiconj_by.inv_right₀ SemiconjBy.inv_right₀

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Semiconj/Variant110ff46e55e4bb55c82f68c0501dc257267c2ed75a9f629657be82b17004f811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Semiconj/Variant110ff46e55e4bb55c82f68c0501dc257267c2ed75a9f629657be82b17004f811.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `046fab91c2418b5d0d73e22307300bd51ceb1333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
