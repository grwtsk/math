# inf_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dee44d8de5f3b91206564e4415c99a292e8a112",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 478,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef3e1d36-2a8e-bf64-1918-fd2c59513ddb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bf4b52c-2b79-a8fe-f9b6-2b5fa91ed21e",
  "kind": "theorem",
  "lexical_name": "inf_map",
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
  "slug": "inf-map--9dc094cb7944b7a01ae53a2b",
  "source": {
    "blob": "8dee44d8de5f3b91206564e4415c99a292e8a112",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 478,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dc094cb7944b7a01ae53a2bb5eb4351a0826ba4c4016ea7f6c8253c59c84410",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bf4b52c-2b79-a8fe-f9b6-2b5fa91ed21e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inf_map {X Y : C} (g : Y ⟶ X) [Mono g] (f₁ f₂) :
    (map g).obj (f₁ ⊓ f₂) = (map g).obj f₁ ⊓ (map g).obj f₂ := by
  revert f₁
  apply Quotient.ind'
  intro f₁
  erw [inf_def, inf_def, inf_eq_map_pullback', inf_eq_map_pullback', ← map_comp]
  dsimp
  rw [pullback_comp, pullback_map_self]

end SemilatticeInfTop

section SemilatticeSup

variable [HasImages C] [HasBinaryCoproducts C]

/-- The functorial supremum on `MonoOver A` descends to a supremum on `Subobject A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dee44d8de5f3b91206564e4415c99a292e8a112` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
