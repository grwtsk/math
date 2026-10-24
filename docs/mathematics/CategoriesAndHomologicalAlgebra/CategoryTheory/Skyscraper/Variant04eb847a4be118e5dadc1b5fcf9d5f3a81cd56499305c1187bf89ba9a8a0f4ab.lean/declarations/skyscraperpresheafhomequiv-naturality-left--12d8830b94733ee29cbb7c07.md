# skyscraperPresheafHomEquiv_naturality_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21633b13034d6f52f8fb6a0b6f0e3a01e4f4fc3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04eb847a4be118e5dadc1b5fcf9d5f3a81cd56499305c1187bf89ba9a8a0f4ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a74acff6-0d67-75f5-56b4-b346d9387d51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:889e8a6d-cc5d-d300-612a-460b5ce3a4dd",
  "kind": "lemma",
  "lexical_name": "skyscraperPresheafHomEquiv_naturality_left",
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
  "slug": "skyscraperpresheafhomequiv-naturality-left--12d8830b94733ee29cbb7c07",
  "source": {
    "blob": "21633b13034d6f52f8fb6a0b6f0e3a01e4f4fc3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variant04eb847a4be118e5dadc1b5fcf9d5f3a81cd56499305c1187bf89ba9a8a0f4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12d8830b94733ee29cbb7c07270cc89fdfc9bff4fcfb13ac5ad19850a85d4997",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variant04eb847a4be118e5dadc1b5fcf9d5f3a81cd56499305c1187bf89ba9a8a0f4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:889e8a6d-cc5d-d300-612a-460b5ce3a4dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma skyscraperPresheafHomEquiv_naturality_left
    (f : P ⟶ Q) (g : Φ.presheafFiber.obj Q ⟶ M) :
    Φ.skyscraperPresheafHomEquiv (Φ.presheafFiber.map f ≫ g) =
      f ≫ Φ.skyscraperPresheafHomEquiv g :=
  Φ.skyscraperPresheafHomEquiv.symm.injective
    (by simp [Φ.skyscraperPresheafHomEquiv_naturality_left_symm])

end

section

variable [HasColimitsOfSize.{w, w} A]

/-- Given a point of a site, the skyscraper presheaf functor is right adjoint
to the fiber functor on presheaves. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variant04eb847a4be118e5dadc1b5fcf9d5f3a81cd56499305c1187bf89ba9a8a0f4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variant04eb847a4be118e5dadc1b5fcf9d5f3a81cd56499305c1187bf89ba9a8a0f4ab.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21633b13034d6f52f8fb6a0b6f0e3a01e4f4fc3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
