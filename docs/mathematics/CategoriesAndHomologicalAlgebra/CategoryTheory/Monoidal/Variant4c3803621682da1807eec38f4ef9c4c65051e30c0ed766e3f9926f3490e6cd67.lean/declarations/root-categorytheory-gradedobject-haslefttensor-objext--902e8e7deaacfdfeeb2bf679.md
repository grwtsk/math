# _root_.CategoryTheory.GradedObject.HasLeftTensor₃ObjExt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88b369bae64b2ae303170972c3386ed0281290201f99070b55f304c6f75f87ad",
  "kind": "abbrev",
  "lexical_name": "_root_.CategoryTheory.GradedObject.HasLeftTensor₃ObjExt",
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
  "slug": "root-categorytheory-gradedobject-haslefttensor-objext--902e8e7deaacfdfeeb2bf679",
  "source": {
    "blob": "a00bb81d325d9a3653af746097f859e01e6472c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 325,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:902e8e7deaacfdfeeb2bf679f30ac8970b883caa85f0095bd91d8e136392f3ec",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88b369bae64b2ae303170972c3386ed0281290201f99070b55f304c6f75f87ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev _root_.CategoryTheory.GradedObject.HasLeftTensor₃ObjExt (j : I) := PreservesColimit
  (Discrete.functor fun (i : { i : (I × I × I) | i.1 + i.2.1 + i.2.2 = j }) ↦
    (((mapTrifunctor (bifunctorComp₂₃ (curriedTensor C)
      (curriedTensor C)) I I I).obj X₁).obj X₂).obj X₃ i)
    ((curriedTensor C).obj Z)

variable {X₁ X₂ X₃}
variable [HasTensor X₂ X₃] [HasTensor X₁ (tensorObj X₂ X₃)]

@[ext (iff := false)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a00bb81d325d9a3653af746097f859e01e6472c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
