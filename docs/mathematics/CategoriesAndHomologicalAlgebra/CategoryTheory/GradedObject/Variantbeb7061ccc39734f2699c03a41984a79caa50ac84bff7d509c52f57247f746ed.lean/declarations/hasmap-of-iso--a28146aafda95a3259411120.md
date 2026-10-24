# hasMap_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed9888aa-dfa1-258e-720e-7ecbf211a3c4",
  "kind": "lemma",
  "lexical_name": "hasMap_of_iso",
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
  "slug": "hasmap-of-iso--a28146aafda95a3259411120",
  "source": {
    "blob": "e94215987ccc8904b9a4aa366d6b7e4a449b4e7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 304,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbeb7061ccc39734f2699c03a41984a79caa50ac84bff7d509c52f57247f746ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a28146aafda95a325941112036100be436da75de7dc5eb0fa9f94c8fc869975a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbeb7061ccc39734f2699c03a41984a79caa50ac84bff7d509c52f57247f746ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed9888aa-dfa1-258e-720e-7ecbf211a3c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasMap_of_iso (e : X ≅ Y) (p : I → J) [HasMap X p] : HasMap Y p := fun j => by
  have α : Discrete.functor (X.mapObjFun p j) ≅ Discrete.functor (Y.mapObjFun p j) :=
    Discrete.natIso (fun ⟨i, _⟩ => (GradedObject.eval i).mapIso e)
  exact hasColimit_of_iso α.symm

section
variable [X.HasMap p] [Y.HasMap p]

/-- Given `X : GradedObject I C` and `p : I → J`, `X.mapObj p` is the graded object by `J`
which in degree `j` consists of the coproduct of the `X i` such that `p i = j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbeb7061ccc39734f2699c03a41984a79caa50ac84bff7d509c52f57247f746ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbeb7061ccc39734f2699c03a41984a79caa50ac84bff7d509c52f57247f746ed.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e94215987ccc8904b9a4aa366d6b7e4a449b4e7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
