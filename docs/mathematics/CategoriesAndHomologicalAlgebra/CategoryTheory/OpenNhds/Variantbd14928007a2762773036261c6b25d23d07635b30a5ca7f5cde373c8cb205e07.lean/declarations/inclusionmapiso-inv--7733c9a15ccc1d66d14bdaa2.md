# inclusionMapIso_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01c7d5ad03826209949c0199a2a6507420afb4e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd14928007a2762773036261c6b25d23d07635b30a5ca7f5cde373c8cb205e07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1023f46b-f1d6-d9d1-6492-ea767300f347",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af1681c6-3d23-c50c-6fbe-132c41d87794",
  "kind": "theorem",
  "lexical_name": "inclusionMapIso_inv",
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
  "slug": "inclusionmapiso-inv--7733c9a15ccc1d66d14bdaa2",
  "source": {
    "blob": "01c7d5ad03826209949c0199a2a6507420afb4e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 141,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbd14928007a2762773036261c6b25d23d07635b30a5ca7f5cde373c8cb205e07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7733c9a15ccc1d66d14bdaa2cb82d7435c945ab52937f845519a517d494aa032",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbd14928007a2762773036261c6b25d23d07635b30a5ca7f5cde373c8cb205e07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af1681c6-3d23-c50c-6fbe-132c41d87794`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inclusionMapIso_inv (x : X) : (inclusionMapIso f x).inv = 𝟙 _ :=
  rfl

end OpenNhds

end TopologicalSpace

namespace IsOpenMap

open TopologicalSpace

variable {f}

/-- An open map `f : X ⟶ Y` induces a functor `OpenNhds x ⥤ OpenNhds (f x)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbd14928007a2762773036261c6b25d23d07635b30a5ca7f5cde373c8cb205e07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbd14928007a2762773036261c6b25d23d07635b30a5ca7f5cde373c8cb205e07.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01c7d5ad03826209949c0199a2a6507420afb4e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
