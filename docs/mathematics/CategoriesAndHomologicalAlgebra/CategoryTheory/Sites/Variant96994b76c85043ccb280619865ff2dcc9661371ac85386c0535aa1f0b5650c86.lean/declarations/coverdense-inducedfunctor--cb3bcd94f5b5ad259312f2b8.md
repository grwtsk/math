# coverDense_inducedFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c828e30220865331353d70f0807777dde8de9565",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0e0cf6a-e043-3de1-202b-69bd5c923d38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:669c1dc4-eebb-5d94-e78f-0a65cda7e331",
  "kind": "theorem",
  "lexical_name": "coverDense_inducedFunctor",
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
  "slug": "coverdense-inducedfunctor--cb3bcd94f5b5ad259312f2b8",
  "source": {
    "blob": "c828e30220865331353d70f0807777dde8de9565",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb3bcd94f5b5ad259312f2b8084794e93f6786f0432a5e7e01855ffa445a234a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:669c1dc4-eebb-5d94-e78f-0a65cda7e331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coverDense_inducedFunctor {B : ι → Opens X} (h : Opens.IsBasis (Set.range B)) :
    (inducedFunctor B).IsCoverDense (Opens.grothendieckTopology X)  :=
  (coverDense_iff_isBasis _).2 h

end TopCat.Opens

section IsOpenEmbedding

open TopCat.Presheaf Opposite

variable {C : Type u} [Category.{v} C]
variable {X Y : TopCat.{w}} {f : X ⟶ Y} {F : Y.Presheaf C}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c828e30220865331353d70f0807777dde8de9565` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
