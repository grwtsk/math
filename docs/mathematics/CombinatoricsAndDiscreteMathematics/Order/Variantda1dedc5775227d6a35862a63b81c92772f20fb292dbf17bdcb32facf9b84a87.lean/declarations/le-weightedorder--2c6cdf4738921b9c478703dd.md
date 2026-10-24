# le_weightedOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1deeecb9de62504fd2418d334e1c860f4251931",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1dd39b6e-beef-5e91-1e83-b2fac61b03bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f8be50f-b7bd-ef27-5ba1-9ef48cedc2ef",
  "kind": "theorem",
  "lexical_name": "le_weightedOrder",
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
  "slug": "le-weightedorder--2c6cdf4738921b9c478703dd",
  "source": {
    "blob": "f1deeecb9de62504fd2418d334e1c860f4251931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantda1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c6cdf4738921b9c478703ddc58eff937491beb9ebc94edf0c758da07b1f38b6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantda1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f8be50f-b7bd-ef27-5ba1-9ef48cedc2ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_weightedOrder {n : ℕ∞} (h : ∀ d : σ →₀ ℕ, weight w d < n → coeff R d f = 0) :
    n ≤ f.weightedOrder w := by
  cases n
  · rw [top_le_iff, weightedOrder_eq_top_iff]
    ext d; exact h d (ENat.coe_lt_top _)
  · apply nat_le_weightedOrder;
    simpa only [ENat.some_eq_coe, Nat.cast_lt] using h

/-- The order of a formal power series is exactly `n` if and only if some coefficient of weight `n`
is nonzero, and the `d`th coefficient is `0` for all `d` such that `weight w d < n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantda1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantda1dedc5775227d6a35862a63b81c92772f20fb292dbf17bdcb32facf9b84a87.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1deeecb9de62504fd2418d334e1c860f4251931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
