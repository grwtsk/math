# toTopObjOneHomeo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3815ed76d52c08758aedd455063edcc0da673acffe9a01710d5907656bc0c7fe",
  "kind": "def",
  "lexical_name": "toTopObjOneHomeo",
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
  "slug": "totopobjonehomeo--2fa183f7ebb99b379aed97b9",
  "source": {
    "blob": "f9504d2119c2c486dd6edfc57b7ea3065a4fe5af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fa183f7ebb99b379aed97b980923d7a60f7cb1f67a5848b71e1375ed77ca44b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3815ed76d52c08758aedd455063edcc0da673acffe9a01710d5907656bc0c7fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toTopObjOneHomeo : ⦋1⦌.toTopObj ≃ₜ I where
  toFun f := ⟨f 0, (f 0).2, toTopObj_one_coe_add_coe_eq_one f ▸ le_add_of_nonneg_right (f 1).2⟩
  invFun x := ⟨![toNNReal x, toNNReal (σ x)],
    show ∑ _, _ = _ by ext; simp [toType_apply, Finset.sum]⟩
  left_inv f := by ext i; fin_cases i <;> simp [← toTopObj_one_coe_add_coe_eq_one f]
  right_inv x := by simp
  continuous_toFun := .subtype_mk (continuous_subtype_val.comp
    ((continuous_apply _).comp continuous_subtype_val)) _
  continuous_invFun := .subtype_mk (continuous_pi fun i ↦ by fin_cases i <;> dsimp <;> fun_prop) _

open unitInterval in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9504d2119c2c486dd6edfc57b7ea3065a4fe5af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
