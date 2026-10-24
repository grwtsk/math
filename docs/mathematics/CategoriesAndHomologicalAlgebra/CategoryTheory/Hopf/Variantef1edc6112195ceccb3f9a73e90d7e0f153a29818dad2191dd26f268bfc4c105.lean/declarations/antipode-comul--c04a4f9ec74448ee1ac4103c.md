# antipode_comul₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d9e1723b7a7d3609d6f9e24aecf9c6c3289bcf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5b65782-707a-4aa7-b83e-9aecdedd7dfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb8cbad7-f6a2-ba2e-8713-9fe59d89d22f",
  "kind": "theorem",
  "lexical_name": "antipode_comul₁",
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
  "slug": "antipode-comul--c04a4f9ec74448ee1ac4103c",
  "source": {
    "blob": "5d9e1723b7a7d3609d6f9e24aecf9c6c3289bcf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 141,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c04a4f9ec74448ee1ac4103c38ba81b5e18d6d588e373388e14baf7a85f0bf2c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb8cbad7-f6a2-ba2e-8713-9fe59d89d22f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem antipode_comul₁ (A : Hopf_ C) :
    A.X.comul.hom ≫
      A.antipode ▷ A.X.X.X ≫
      A.X.comul.hom ▷ A.X.X.X ≫
      (α_ A.X.X.X A.X.X.X A.X.X.X).hom ≫
      A.X.X.X ◁ A.X.X.X ◁ A.X.comul.hom ≫
      A.X.X.X ◁ (α_ A.X.X.X A.X.X.X A.X.X.X).inv ≫
      A.X.X.X ◁ (β_ A.X.X.X A.X.X.X).hom ▷ A.X.X.X ≫
      A.X.X.X ◁ (α_ A.X.X.X A.X.X.X A.X.X.X).hom ≫
      (α_ A.X.X.X A.X.X.X (A.X.X.X ⊗ A.X.X.X)).inv ≫
      (A.X.X.mul ⊗ A.X.X.mul) =
    A.X.counit.hom ≫ (λ_ (𝟙_ C)).inv ≫ (A.X.X.one ⊗ A.X.X.one) := by
  dsimp
  slice_lhs 3 5 =>
    rw [← associator_naturality_right, ← Category.assoc, ← tensorHom_def]
  slice_lhs 3 9 =>
    erw [Bimon_.compatibility]
  slice_lhs 1 3 =>
    erw [A.antipode_left]
  simp

/--
Auxiliary calculation for `antipode_comul`.
This calculation calls for some ASCII art out of This Week's Finds.

```
   |   |
   n   n
  | \ / |
  |  /  |
  | / \ |
  | | S S
  | | \ /
  | |  /
  | | / \
  \ / \ /
   v   v
    \ /
     v
     |
```

We move the left antipode up through the crossing,
the right antipode down through the crossing,
the right multiplication down across the strand,
reassociate the comultiplications,
then use `antipode_right` then `antipode_left` to simplify.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d9e1723b7a7d3609d6f9e24aecf9c6c3289bcf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
