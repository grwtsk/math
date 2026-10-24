# surjective_unitGroupToResidueFieldUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0df3b2c1-e819-0fa8-af9e-d9c209dc1f4c",
  "kind": "theorem",
  "lexical_name": "surjective_unitGroupToResidueFieldUnits",
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
  "slug": "surjective-unitgrouptoresiduefieldunits--04f813db315dbe6d07130f2f",
  "source": {
    "blob": "1441979692f38c04be1d94996f13aa1e610290aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 663,
    "path": "GRWTSK/Algebra/ValuationSubring/Variantbd9d5192e9c94b48ca506a553ffb7c5f8b1800d8eb2f549f3f1d5dfc4a7d15a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04f813db315dbe6d07130f2f3ba8ea92730c41545f6c1c330fddd138386e3747",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationSubring/Variantbd9d5192e9c94b48ca506a553ffb7c5f8b1800d8eb2f549f3f1d5dfc4a7d15a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0df3b2c1-e819-0fa8-af9e-d9c209dc1f4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_unitGroupToResidueFieldUnits :
    Function.Surjective A.unitGroupToResidueFieldUnits :=
  (IsLocalRing.surjective_units_map_of_local_ringHom _ Ideal.Quotient.mk_surjective
        IsLocalRing.isLocalHom_residue).comp
    (MulEquiv.surjective _)

/-- The quotient of the unit group of `A` by the principal unit group of `A` agrees with
the units of the residue field of `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationSubring/Variantbd9d5192e9c94b48ca506a553ffb7c5f8b1800d8eb2f549f3f1d5dfc4a7d15a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationSubring/Variantbd9d5192e9c94b48ca506a553ffb7c5f8b1800d8eb2f549f3f1d5dfc4a7d15a7.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1441979692f38c04be1d94996f13aa1e610290aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
