# variableChange_j

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:299297e8-aa65-33b9-baeb-73787090c88e",
  "kind": "lemma",
  "lexical_name": "variableChange_j",
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
  "slug": "variablechange-j--eee6c31d0bf5d3ca2a19242a",
  "source": {
    "blob": "c6a2fc39e4dcc96ebfcdbdef0e3f1103e3591c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1323,
    "line": 1306,
    "path": "GRWTSK/Algebra/LinearAlgebra/Weierstrass/Variant38c601376d17198248476eee6b84d427c8ee43d973470372d5bbbc2e9fee8f28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eee6c31d0bf5d3ca2a19242a6d7a75de0a205d905e4b3516ce1c2c8f197143ca",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Weierstrass/Variant38c601376d17198248476eee6b84d427c8ee43d973470372d5bbbc2e9fee8f28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:299297e8-aa65-33b9-baeb-73787090c88e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1306–1323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variableChange_j : (E.variableChange C).j = E.j := by
  rw [j, coe_inv_variableChange_Δ']
  have hu : (C.u * ↑C.u⁻¹ : R) ^ 12 = 1 := by rw [C.u.mul_inv, one_pow]
  linear_combination (norm := (rw [variableChange_toWeierstrassCurve,
    WeierstrassCurve.variableChange_c₄, j]; ring1)) E.j * hu
#align elliptic_curve.variable_change_j EllipticCurve.variableChange_j

end VariableChange

section BaseChange

/-! ### Base changes -/

variable (A : Type v) [CommRing A] [Algebra R A]

-- porting note: was just `@[simps]`
/-- The elliptic curve over `R` base changed to `A`. -/
@[simps (config := { rhsMd := .default }) a₁ a₂ a₃ a₄ a₆ Δ' toWeierstrassCurve]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Weierstrass/Variant38c601376d17198248476eee6b84d427c8ee43d973470372d5bbbc2e9fee8f28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Weierstrass/Variant38c601376d17198248476eee6b84d427c8ee43d973470372d5bbbc2e9fee8f28.lean#L1306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6a2fc39e4dcc96ebfcdbdef0e3f1103e3591c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
