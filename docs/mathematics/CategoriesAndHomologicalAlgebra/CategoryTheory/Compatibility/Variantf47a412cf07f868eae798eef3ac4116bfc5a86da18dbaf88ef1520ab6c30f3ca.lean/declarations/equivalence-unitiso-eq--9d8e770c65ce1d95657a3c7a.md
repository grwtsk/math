# equivalence₁UnitIso_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a33870472448f4f31ddc6dac70c5e600dbe1f3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:550dd743-03f3-fb73-da4a-5458e7716e2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dab0f9a5-ca9c-1179-089d-3ad9f837a8bf",
  "kind": "theorem",
  "lexical_name": "equivalence₁UnitIso_eq",
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
  "slug": "equivalence-unitiso-eq--9d8e770c65ce1d95657a3c7a",
  "source": {
    "blob": "2a33870472448f4f31ddc6dac70c5e600dbe1f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d8e770c65ce1d95657a3c7aa34ec38354fedd2b417c7a01daa23cac5f4e8a43",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dab0f9a5-ca9c-1179-089d-3ad9f837a8bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equivalence₁UnitIso_eq : (equivalence₁ hF).unitIso = equivalence₁UnitIso hF := by
  ext X
  simp [equivalence₁]

/-- An intermediate equivalence `A ≅ B` obtained as the composition of `equivalence₁` and
the inverse of `eB : B ≌ B'`. -/
@[simps! functor]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a33870472448f4f31ddc6dac70c5e600dbe1f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
