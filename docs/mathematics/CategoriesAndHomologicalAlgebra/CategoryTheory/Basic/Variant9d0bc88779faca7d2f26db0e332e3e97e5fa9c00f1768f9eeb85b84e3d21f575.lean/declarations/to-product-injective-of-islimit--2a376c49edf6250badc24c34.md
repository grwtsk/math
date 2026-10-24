# to_product_injective_of_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4e8ee5ab2431625a8f2e29fd8ed32cb4c9e9fbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d0bc88779faca7d2f26db0e332e3e97e5fa9c00f1768f9eeb85b84e3d21f575.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44703e2a-b899-2b5e-605f-4484a8342a1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0995e797-1395-be02-599f-97df1006bdc6",
  "kind": "theorem",
  "lexical_name": "to_product_injective_of_isLimit",
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
  "slug": "to-product-injective-of-islimit--2a376c49edf6250badc24c34",
  "source": {
    "blob": "c4e8ee5ab2431625a8f2e29fd8ed32cb4c9e9fbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d0bc88779faca7d2f26db0e332e3e97e5fa9c00f1768f9eeb85b84e3d21f575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a376c49edf6250badc24c345c87bbb05d9cd86795982242c95ec0d304d10926",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d0bc88779faca7d2f26db0e332e3e97e5fa9c00f1768f9eeb85b84e3d21f575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0995e797-1395-be02-599f-97df1006bdc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_product_injective_of_isLimit
    {D : Cone F} (hD : IsLimit D) :
    Function.Injective fun (x : ToType D.pt) (j : J) => D.π.app j x := by
  let E := (forget C).mapCone D
  intro (x : E.pt) y H
  apply (Types.isLimitEquivSections (isLimitOfPreserves _ hD)).injective
  ext j
  exact funext_iff.mp H j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d0bc88779faca7d2f26db0e332e3e97e5fa9c00f1768f9eeb85b84e3d21f575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d0bc88779faca7d2f26db0e332e3e97e5fa9c00f1768f9eeb85b84e3d21f575.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4e8ee5ab2431625a8f2e29fd8ed32cb4c9e9fbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
