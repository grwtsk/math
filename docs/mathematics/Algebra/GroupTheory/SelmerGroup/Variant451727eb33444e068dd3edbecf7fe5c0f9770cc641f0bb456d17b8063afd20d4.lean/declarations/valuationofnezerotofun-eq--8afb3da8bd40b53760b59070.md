# valuationOfNeZeroToFun_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e0a40da-cf98-51e1-7fdc-1947ea90587b",
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
  "slug": "valuationofnezerotofun-eq--8afb3da8bd40b53760b59070",
  "source": {
    "blob": "61b8af6368c643baf541a6c8e8c9c62caba000a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 100,
    "path": "GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8afb3da8bd40b53760b59070e65bde508b523097234d0337a6649a9597a36444",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e0a40da-cf98-51e1-7fdc-1947ea90587b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuationOfNeZeroToFun_eq (x : Kˣ) :
    (v.valuationOfNeZeroToFun x : ℤₘ₀) = v.valuation K x := by
  classical
  rw [show v.valuation K x = _ * _ by rfl]
  rw [Units.val_inv_eq_inv_val]
  change _ = ite _ _ _ * (ite _ _ _)⁻¹
  simp_rw [IsLocalization.toLocalizationMap_sec, SubmonoidClass.coe_subtype,
    if_neg <| IsLocalization.sec_fst_ne_zero x.ne_zero,
    if_neg (nonZeroDivisors.coe_ne_zero _),
    valuationOfNeZeroToFun, ofAdd_sub, ofAdd_neg, div_inv_eq_mul, WithZero.coe_mul,
    WithZero.coe_inv, inv_inv]

/-- The multiplicative `v`-adic valuation on `Kˣ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b8af6368c643baf541a6c8e8c9c62caba000a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
