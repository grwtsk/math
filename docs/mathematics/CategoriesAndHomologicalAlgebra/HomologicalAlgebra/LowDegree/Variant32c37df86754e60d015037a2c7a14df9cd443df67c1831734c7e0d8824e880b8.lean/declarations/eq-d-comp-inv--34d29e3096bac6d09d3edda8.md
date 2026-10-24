# eq_d₀₁_comp_inv

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
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc94a0c2-f6b0-6984-9fa5-1f9b229f702f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:692b62cb-502b-c191-34ca-9343b5c6e9b8",
  "kind": "theorem",
  "lexical_name": "eq_d₀₁_comp_inv",
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
  "slug": "eq-d-comp-inv--34d29e3096bac6d09d3edda8",
  "source": {
    "blob": "023ea16e8534ddc5d6d3bafccea77930a8b78afe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 176,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34d29e3096bac6d09d3edda8b43ef44ad64c9e8891bbde9509637d5a7ae1e615",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:692b62cb-502b-c191-34ca-9343b5c6e9b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem eq_d₀₁_comp_inv :
    (cochainsIso₀ A).inv ≫ (inhomogeneousCochains A).d 0 1 =
      d₀₁ A ≫ (cochainsIso₁ A).inv :=
  (CommSq.horiz_inv ⟨comp_d₀₁_eq A⟩).w

/-- Let `C(G, A)` denote the complex of inhomogeneous cochains of `A : Rep k G`. This lemma
says `d₁₂` gives a simpler expression for the 1st differential: that is, the following
square commutes:
```
  C¹(G, A) ---d 1 2---> C²(G, A)
    |                      |
    |                      |
    |                      |
    v                      v
  Fun(G, A) --d₁₂--> Fun(G × G, A)
```
where the vertical arrows are `cochainsIso₁` and `cochainsIso₂` respectively.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `023ea16e8534ddc5d6d3bafccea77930a8b78afe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
