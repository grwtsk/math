# norm_extendTo𝕜'_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1322ee5-4a94-e36f-3e77-e3e26236a3bd",
  "kind": "theorem",
  "lexical_name": "norm_extendTo𝕜'_bound",
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
  "slug": "norm-extendto-bound--fab9433ce253b21faf0d5a49",
  "source": {
    "blob": "5c14fc7dc6813c031883e2b39c8206b46893ec20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 111,
    "path": "GRWTSK/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab9433ce253b21faf0d5a4957ea868786d22ad0c96cd56e135984b11b176396",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1322ee5-4a94-e36f-3e77-e3e26236a3bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_extendTo𝕜'_bound (fr : F →L[ℝ] ℝ) (x : F) :
    ‖(fr.toLinearMap.extendTo𝕜' x : 𝕜)‖ ≤ ‖fr‖ * ‖x‖ := by
  set lm : F →ₗ[𝕜] 𝕜 := fr.toLinearMap.extendTo𝕜'
  by_cases h : lm x = 0
  · rw [h, norm_zero]
    apply mul_nonneg <;> exact norm_nonneg _
  rw [← mul_le_mul_left (norm_pos_iff.2 h), ← sq]
  calc
    ‖lm x‖ ^ 2 = fr (conj (lm x : 𝕜) • x) := fr.toLinearMap.norm_extendTo𝕜'_apply_sq x
    _ ≤ ‖fr (conj (lm x : 𝕜) • x)‖ := le_abs_self _
    _ ≤ ‖fr‖ * ‖conj (lm x : 𝕜) • x‖ := le_opNorm _ _
    _ = ‖(lm x : 𝕜)‖ * (‖fr‖ * ‖x‖) := by rw [norm_smul, norm_conj, mul_left_comm]

/-- Extend `fr : F →L[ℝ] ℝ` to `F →L[𝕜] 𝕜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c14fc7dc6813c031883e2b39c8206b46893ec20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
