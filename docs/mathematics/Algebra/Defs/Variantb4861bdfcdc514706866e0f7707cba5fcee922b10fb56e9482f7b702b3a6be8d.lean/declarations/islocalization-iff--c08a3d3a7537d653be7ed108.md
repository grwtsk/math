# isLocalization_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd24e373b44241083605b53458dd44c516c6767c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afb5a78c-b382-ea6c-dd62-fdd591b07dc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9908f1a2-ab8b-8493-3c1e-6e1c1f5ddbd9",
  "kind": "theorem",
  "lexical_name": "isLocalization_iff",
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
  "slug": "islocalization-iff--c08a3d3a7537d653be7ed108",
  "source": {
    "blob": "cd24e373b44241083605b53458dd44c516c6767c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 110,
    "path": "GRWTSK/Algebra/Defs/Variantb4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c08a3d3a7537d653be7ed108104201101a791a0018c38efef1dbe51e0f973b8a",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantb4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9908f1a2-ab8b-8493-3c1e-6e1c1f5ddbd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalization_iff : IsLocalization M S ↔
    (∀ y : M, IsUnit (algebraMap R S y)) ∧
    (∀ z : S, ∃ x : R × M, z * algebraMap R S x.2 = algebraMap R S x.1) ∧
    ∀ {x y : R}, algebraMap R S x = algebraMap R S y → ∃ c : M, c * x = c * y := by
  rw [isLocalization_iff_isLocalizationMap, Submonoid.isLocalizationMap_iff]

variable {M}

namespace IsLocalization

section IsLocalization

variable [IsLocalization M S]

section

/-- Everything in the image of `algebraMap` is a unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantb4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantb4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd24e373b44241083605b53458dd44c516c6767c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
