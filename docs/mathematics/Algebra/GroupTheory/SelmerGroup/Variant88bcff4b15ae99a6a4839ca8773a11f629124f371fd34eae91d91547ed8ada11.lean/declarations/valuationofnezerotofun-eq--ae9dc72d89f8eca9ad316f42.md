# valuationOfNeZeroToFun_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c61352b-d1c0-d989-b701-60eef7aabd59",
  "kind": "theorem",
  "lexical_name": "valuationOfNeZeroToFun_eq",
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
  "slug": "valuationofnezerotofun-eq--ae9dc72d89f8eca9ad316f42",
  "source": {
    "blob": "cec46ad74a3a463c4af4c940068dc1bcb50a86f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 105,
    "path": "GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant88bcff4b15ae99a6a4839ca8773a11f629124f371fd34eae91d91547ed8ada11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae9dc72d89f8eca9ad316f42549d6600d84dcce3153768a1215c47300722dacd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelmerGroup/Variant88bcff4b15ae99a6a4839ca8773a11f629124f371fd34eae91d91547ed8ada11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c61352b-d1c0-d989-b701-60eef7aabd59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuationOfNeZeroToFun_eq (x : Kˣ) :
    (v.valuationOfNeZeroToFun x : ℤᵐ⁰) = v.valuation K x := by
  classical
  rw [show v.valuation K x = _ * _ by rw [valuation_def]; rfl]
  rw [Units.val_inv_eq_inv_val]
  change _ = ite _ _ _ * (ite _ _ _)⁻¹
  simp_rw [IsLocalization.toLocalizationMap_sec, SubmonoidClass.coe_subtype,
    ite_eq_right <| IsLocalization.sec_fst_ne_zero x.ne_zero,
    ite_eq_right (nonZeroDivisors.coe_ne_zero _),
    ← exp_neg, ← exp_add, valuationOfNeZeroToFun, ← sub_eq_add_neg, exp]

/-- The multiplicative `v`-adic valuation on `Kˣ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelmerGroup/Variant88bcff4b15ae99a6a4839ca8773a11f629124f371fd34eae91d91547ed8ada11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant88bcff4b15ae99a6a4839ca8773a11f629124f371fd34eae91d91547ed8ada11.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cec46ad74a3a463c4af4c940068dc1bcb50a86f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
