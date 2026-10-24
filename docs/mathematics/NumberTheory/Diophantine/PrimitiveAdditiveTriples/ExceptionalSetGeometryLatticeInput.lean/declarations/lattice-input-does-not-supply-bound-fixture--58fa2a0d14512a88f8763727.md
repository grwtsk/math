# lattice_input_does_not_supply_bound_fixture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12d3d3b6-681e-4da0-d637-721a6fb0ab6c",
  "kind": "theorem",
  "lexical_name": "lattice_input_does_not_supply_bound_fixture",
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
  "slug": "lattice-input-does-not-supply-bound-fixture--58fa2a0d14512a88f8763727",
  "source": {
    "blob": "8a0f13e1214c55db86947b1cca5144b955e5dfa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 167,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58fa2a0d14512a88f87637270144d6597189e7f42af50405ee26a138289a4702",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12d3d3b6-681e-4da0-d637-721a6fb0ab6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lattice_input_does_not_supply_bound_fixture :
    ¬ ((0 : ℝ) ≥ 1) := by norm_num

end ExceptionalSetAnalyticInterfaces

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.paperSelectedMonomial_le_geometryUpper
#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.geometrySelectedPoint_mem_primitivePositiveSolutions
#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.geometryLatticeInput_of_paperAdmissible
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a0f13e1214c55db86947b1cca5144b955e5dfa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
