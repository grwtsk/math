# traceForm_eq_sum_finrank_nsmul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f408170123f729a4db1da8f1a17c727899bf781e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 428,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14739b29-3d23-081d-6a7b-45f261d9d962",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d2d1e53-c9cb-bccf-8502-5deeb6a43d5b",
  "kind": "lemma",
  "lexical_name": "traceForm_eq_sum_finrank_nsmul'",
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
  "slug": "traceform-eq-sum-finrank-nsmul--004f72f6fd208dc0f14c8424",
  "source": {
    "blob": "f408170123f729a4db1da8f1a17c727899bf781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 428,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:004f72f6fd208dc0f14c8424a91f6653778e2a8ca9c3c5ecd1127d780a2bbc99",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d2d1e53-c9cb-bccf-8502-5deeb6a43d5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma traceForm_eq_sum_finrank_nsmul' :
    traceForm K L M = ∑ χ ∈ {χ : Weight K L M | χ.IsNonZero}, finrank K (genWeightSpace M χ) •
      (χ : L →ₗ[K] K).smulRight (χ : L →ₗ[K] K) := by
  classical
  suffices ∑ χ ∈ {χ : Weight K L M | χ.IsZero}, finrank K (genWeightSpace M χ) •
      (χ : L →ₗ[K] K).smulRight (χ : L →ₗ[K] K) = 0 by
    rw [traceForm_eq_sum_finrank_nsmul,
      ← Finset.sum_filter_add_sum_filter_not (p := fun χ : Weight K L M ↦ χ.IsNonZero)]
    simp [this]
  refine Finset.sum_eq_zero fun χ hχ ↦ ?_
  replace hχ : (χ : L →ₗ[K] K) = 0 := by simpa [← Weight.coe_toLinear_eq_zero_iff] using hχ
  simp [hχ]

-- The reverse inclusion should also hold: TODO prove this!
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f408170123f729a4db1da8f1a17c727899bf781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
