# toElementarySubstructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d6957f73c53e60559630c29d17c678106ce4526023a2d8b9547050fb277cbca",
  "kind": "def",
  "lexical_name": "toElementarySubstructure",
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
  "slug": "toelementarysubstructure--470133bb3793fe207eeda936",
  "source": {
    "blob": "2f86a721592250495c341d0d131c507be204963f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:470133bb3793fe207eeda9365bf26c6ab98a3a772492340eaad323d9d91a798a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d6957f73c53e60559630c29d17c678106ce4526023a2d8b9547050fb277cbca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toElementarySubstructure (S : L.Substructure M)
    (htv :
      ∀ (n : ℕ) (φ : L.BoundedFormula Empty (n + 1)) (x : Fin n → S) (a : M),
        φ.Realize default (Fin.snoc ((↑) ∘ x) a : _ → M) →
          ∃ b : S, φ.Realize default (Fin.snoc ((↑) ∘ x) b : _ → M)) :
    L.ElementarySubstructure M :=
  ⟨S, S.isElementary_of_exists htv⟩

end Substructure

end Language

end FirstOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementarySubstructures/Varianta88db12e6b7e553d9b492b7e532bc602d2f74e35be2f2ba6717c2224b7ddc304.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f86a721592250495c341d0d131c507be204963f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
