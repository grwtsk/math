# monoLift_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4cf1ee9d88e62618593153621d96ac586c8b8f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 461,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fdd2bd6-4474-e43e-a26b-5af416e2b401",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18416da1-38b6-5b83-15cb-a95423a0561d",
  "kind": "theorem",
  "lexical_name": "monoLift_comp",
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
  "slug": "monolift-comp--1530016c7ce45567b135f1df",
  "source": {
    "blob": "a4cf1ee9d88e62618593153621d96ac586c8b8f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 461,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1530016c7ce45567b135f1dff49e21ff18b966426780e91d2734500034645ac6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18416da1-38b6-5b83-15cb-a95423a0561d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monoLift_comp [Mono f] {T : C} (g : T ⟶ Y) (hg : g ≫ cokernel.π f = 0) :
    monoLift f g hg ≫ f = g :=
  (monoIsKernelOfCokernel _ (colimit.isColimit _)).fac (KernelFork.ofι _ hg)
    WalkingParallelPair.zero

section

variable {D : Type*} [Category D] [HasZeroMorphisms D]

/-- If `F : D ⥤ C` is a functor to an abelian category, `i : X ⟶ Y` is a morphism
admitting a cokernel such that `F` preserves this cokernel and `F.map i` is a mono,
then `F.map X` identifies to the kernel of `F.map (cokernel.π i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4cf1ee9d88e62618593153621d96ac586c8b8f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
