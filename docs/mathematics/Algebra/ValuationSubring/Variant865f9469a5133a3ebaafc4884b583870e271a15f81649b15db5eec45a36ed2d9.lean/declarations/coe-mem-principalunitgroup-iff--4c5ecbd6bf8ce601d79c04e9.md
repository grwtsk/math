# coe_mem_principalUnitGroup_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e920acf-756c-0faa-9bbf-c74583173973",
  "kind": "theorem",
  "lexical_name": "coe_mem_principalUnitGroup_iff",
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
  "slug": "coe-mem-principalunitgroup-iff--4c5ecbd6bf8ce601d79c04e9",
  "source": {
    "blob": "d166e10be6c81bee254371ab1d283e62605f6104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 699,
    "path": "GRWTSK/Algebra/ValuationSubring/Variant865f9469a5133a3ebaafc4884b583870e271a15f81649b15db5eec45a36ed2d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c5ecbd6bf8ce601d79c04e973e74daf323e631dc5276294a2770a6aad72fa57",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationSubring/Variant865f9469a5133a3ebaafc4884b583870e271a15f81649b15db5eec45a36ed2d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e920acf-756c-0faa-9bbf-c74583173973`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_mem_principalUnitGroup_iff {x : A.unitGroup} :
    (x : Kˣ) ∈ A.principalUnitGroup ↔
      A.unitGroupMulEquiv x ∈ (Units.map (LocalRing.residue A).toMonoidHom).ker := by
  rw [MonoidHom.mem_ker, Units.ext_iff]
  let π := Ideal.Quotient.mk (LocalRing.maximalIdeal A); convert_to _ ↔ π _ = 1
  rw [← π.map_one, ← sub_eq_zero, ← π.map_sub, Ideal.Quotient.eq_zero_iff_mem, valuation_lt_one_iff]
  simp [mem_principalUnitGroup_iff]
#align valuation_subring.coe_mem_principal_unit_group_iff ValuationSubring.coe_mem_principalUnitGroup_iff

/-- The principal unit group agrees with the kernel of the canonical map from
the units of `A` to the units of the residue field of `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationSubring/Variant865f9469a5133a3ebaafc4884b583870e271a15f81649b15db5eec45a36ed2d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationSubring/Variant865f9469a5133a3ebaafc4884b583870e271a15f81649b15db5eec45a36ed2d9.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d166e10be6c81bee254371ab1d283e62605f6104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
