# pentagon_inv_hom_hom_hom_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "526a6c295e8c96676060c0eb1ab7466e8394d87c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2b8cf5c-1d13-fe35-9131-aa34175e806b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c82897d-591f-9ab5-6600-3a849c56c248",
  "kind": "theorem",
  "lexical_name": "pentagon_inv_hom_hom_hom_hom",
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
  "slug": "pentagon-inv-hom-hom-hom-hom--865291a2671f852ef98713b1",
  "source": {
    "blob": "526a6c295e8c96676060c0eb1ab7466e8394d87c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 305,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:865291a2671f852ef98713b181f4ae55a917e4047e3b1c048e1ad45e7178dba8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c82897d-591f-9ab5-6600-3a849c56c248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pentagon_inv_hom_hom_hom_hom (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d) (i : d ⟶ e) :
    (α_ f g h).inv ▷ i ≫ (α_ (f ≫ g) h i).hom ≫ (α_ f g (h ≫ i)).hom =
      (α_ f (g ≫ h) i).hom ≫ f ◁ (α_ g h i).hom :=
  by simp [← cancel_epi ((α_ f g h).hom ▷ i)]
#align category_theory.bicategory.pentagon_inv_hom_hom_hom_hom CategoryTheory.Bicategory.pentagon_inv_hom_hom_hom_hom

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `526a6c295e8c96676060c0eb1ab7466e8394d87c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
