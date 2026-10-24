# unitsModPrincipalUnitsEquivResidueFieldUnits_comp_quotientGroup_mk_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55a6297b-8dbe-8d11-83b3-6eba2cbf120e",
  "kind": "theorem",
  "lexical_name": "unitsModPrincipalUnitsEquivResidueFieldUnits_comp_quotientGroup_mk_apply",
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
  "slug": "unitsmodprincipalunitsequivresiduefieldunits-comp-quotientgroup-mk-apply--d199558f4f9b007bbc5ca551",
  "source": {
    "blob": "2edd68d275ad223ae00305ae43a4f8a067ad061c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 793,
    "line": 765,
    "path": "GRWTSK/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d199558f4f9b007bbc5ca551626a6b60339bf2119f85b106570b1c6b113c5de5",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55a6297b-8dbe-8d11-83b3-6eba2cbf120e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 765–793.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitsModPrincipalUnitsEquivResidueFieldUnits_comp_quotientGroup_mk_apply
    (x : A.unitGroup) :
    A.unitsModPrincipalUnitsEquivResidueFieldUnits.toMonoidHom (QuotientGroup.mk x) =
      A.unitGroupToResidueFieldUnits x := rfl

end PrincipalUnitGroup

/-! ### Pointwise actions

This transfers the action from `Subring.pointwiseMulAction`, noting that it only applies when
the action is by a group. Notably this provides an instances when `G` is `K ≃+* K`.

These instances are in the `Pointwise` locale.

The lemmas in this section are copied from the file `Mathlib/Algebra/Ring/Subring/Pointwise.lean`;
try to keep these in sync.
-/


section PointwiseActions

open scoped Pointwise

variable {G : Type*} [Group G] [MulSemiringAction G K]

/-- The action on a valuation subring corresponding to applying the action to every element.

This is available as an instance in the `Pointwise` locale. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationSubring/Variant63c14f52d8eda7c2ac29289f7d492990b95444475231ccfdbcbd8f32b22bfee7.lean#L765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2edd68d275ad223ae00305ae43a4f8a067ad061c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
