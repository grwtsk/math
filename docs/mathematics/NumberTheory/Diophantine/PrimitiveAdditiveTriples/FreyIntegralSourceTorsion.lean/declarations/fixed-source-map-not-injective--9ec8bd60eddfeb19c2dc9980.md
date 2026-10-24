# fixed_source_map_not_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc0375a9-0201-8785-2c09-d3d2d2887127",
  "kind": "theorem",
  "lexical_name": "fixed_source_map_not_injective",
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
  "slug": "fixed-source-map-not-injective--9ec8bd60eddfeb19c2dc9980",
  "source": {
    "blob": "5299ab052afad19075ef94d4167993d03c4e1cef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 74,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ec8bd60eddfeb19c2dc99801d4a1f4047904a5319a91ba88e1a2b8e8e4d283c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc0375a9-0201-8785-2c09-d3d2d2887127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_source_map_not_injective :
    ¬ Function.Injective
      (FreyIntegralJetImage.toParameter fixedTriple
        (FreyCollisionJetDenominator.family_descends 3 (by decide)) 1) := by
  intro hinj
  apply fixedTorsionClass_ne_zero
  apply hinj
  change FreyIntegralJetImage.toParameter fixedTriple
    (FreyCollisionJetDenominator.family_descends 3 (by decide)) 1 fixedTorsionClass =
      FreyIntegralJetImage.toParameter fixedTriple
        (FreyCollisionJetDenominator.family_descends 3 (by decide)) 1 0
  rw [map_zero]
  change _=0
  simp [fixedTorsionClass,fixedSourceEquiv,FreyIntegralJetImage.toParameter,
    FreyIntegralJetImage.branch_order_one_zero]

/-- v0.43 quotient cardinality remains a different torsion-free image invariant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralSourceTorsion.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5299ab052afad19075ef94d4167993d03c4e1cef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
