# shortComplexH0_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "023ea16e8534ddc5d6d3bafccea77930a8b78afe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 755,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:151c354d-3488-5df9-2915-7c5d9dd30cde",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:307bfe7d-f9a3-8f34-c1f0-524b4b7e049d",
  "kind": "lemma",
  "lexical_name": "shortComplexH0_exact",
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
  "slug": "shortcomplexh0-exact--34c0787babcca73e74ce1a25",
  "source": {
    "blob": "023ea16e8534ddc5d6d3bafccea77930a8b78afe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 764,
    "line": 755,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34c0787babcca73e74ce1a255e9b0559301b08325e76722948f33ebcc6c724cb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:307bfe7d-f9a3-8f34-c1f0-524b4b7e049d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–764.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shortComplexH0_exact : (shortComplexH0 A).Exact := by
  rw [ShortComplex.moduleCat_exact_iff]
  intro (x : A) (hx : d₀₁ _ x = 0)
  refine ⟨⟨x, fun g => ?_⟩, rfl⟩
  rw [← sub_eq_zero]
  exact congr_fun hx g

/-- The arrow `A --d₀₁--> Fun(G, A)` is isomorphic to the differential
`(inhomogeneousCochains A).d 0 1` of the complex of inhomogeneous cochains of `A`. -/
@[simps! hom_left hom_right inv_left inv_right]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `023ea16e8534ddc5d6d3bafccea77930a8b78afe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
