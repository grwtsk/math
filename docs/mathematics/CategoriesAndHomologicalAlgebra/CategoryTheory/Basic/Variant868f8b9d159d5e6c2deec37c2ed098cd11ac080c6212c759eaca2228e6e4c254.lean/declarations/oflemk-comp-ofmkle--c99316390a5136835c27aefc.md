# ofLEMk_comp_ofMkLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77add219-6e7f-1b34-58fc-d0952feec644",
  "kind": "theorem",
  "lexical_name": "ofLEMk_comp_ofMkLE",
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
  "slug": "oflemk-comp-ofmkle--c99316390a5136835c27aefc",
  "source": {
    "blob": "98f39721c7365bc4cd6498f33ea3f49fbc031f90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 368,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c99316390a5136835c27aefc4a91995e21909fbae1bd20fa5c45834fad97132b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77add219-6e7f-1b34-58fc-d0952feec644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofLEMk_comp_ofMkLE {B A : C} (X : Subobject B) (f : A ⟶ B) [Mono f] (Y : Subobject B)
    (h₁ : X ≤ mk f) (h₂ : mk f ≤ Y) : ofLEMk X f h₁ ≫ ofMkLE f Y h₂ = ofLE X Y (h₁.trans h₂) := by
  simp only [ofMkLE, ofLEMk, ofLE, ← Functor.map_comp underlying, assoc, Iso.hom_inv_id_assoc]
  congr 1

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f39721c7365bc4cd6498f33ea3f49fbc031f90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
