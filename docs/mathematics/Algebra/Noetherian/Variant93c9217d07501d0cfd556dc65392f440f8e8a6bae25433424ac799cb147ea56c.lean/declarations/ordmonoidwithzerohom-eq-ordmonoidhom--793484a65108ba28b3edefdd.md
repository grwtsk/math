# ordMonoidWithZeroHom_eq_ordMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ce14c09-e88d-c0c5-a49d-c77a206a3085",
  "kind": "lemma",
  "lexical_name": "ordMonoidWithZeroHom_eq_ordMonoidHom",
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
  "slug": "ordmonoidwithzerohom-eq-ordmonoidhom--793484a65108ba28b3edefdd",
  "source": {
    "blob": "bf779adabbaf3ee0e360338f745e02865bcf0f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:793484a65108ba28b3edefddd664363382185dc0363a26e74718b5f2f5df4977",
  "verification": {
    "reference": "docs/verification/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ce14c09-e88d-c0c5-a49d-c77a206a3085`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ordMonoidWithZeroHom_eq_ordMonoidHom [Nontrivial R] (x : R⁰) :
    .coe (.ofAdd ((ordMonoidHom x).toAdd : ℤ)) = ordMonoidWithZeroHom R x := by
  simp only [SetLike.coe_mem, ordMonoidWithZeroHom_eq_ord, ordMonoidHom, MonoidHom.coe_mk,
    OneHom.coe_mk, toAdd_ofAdd]
  rw [← ENat.natCast_lift (ord R x.1) (ord_lt_top x.2), ENat.recTopCoe_natCast,
    ENat.natCast_lift, ENat.lift_eq_toNat_of_lt_top]

/--
Analogue of `ord_ne_top` for `ordMonoidWithZeroHom`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf779adabbaf3ee0e360338f745e02865bcf0f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
