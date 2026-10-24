# preservesFiniteLimits_of_preservesKernels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6768ba0-d26b-60fe-bdea-2744de41c82f",
  "kind": "lemma",
  "lexical_name": "preservesFiniteLimits_of_preservesKernels",
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
  "slug": "preservesfinitelimits-of-preserveskernels--8eae15c1325f922452b5016c",
  "source": {
    "blob": "a9dcf810fd9e046432342a674d48ee1510f76e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eae15c1325f922452b5016c4dde0aef96bd1f01f003ef0345451ee05cc33f23",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6768ba0-d26b-60fe-bdea-2744de41c82f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFiniteLimits_of_preservesKernels [HasFiniteProducts C] [HasEqualizers C]
    [HasZeroObject C] [HasZeroObject D] [∀ {X Y} (f : X ⟶ Y), PreservesLimit (parallelPair f 0) F] :
    PreservesFiniteLimits F :=
  have := preservesEqualizers_of_preservesKernels F
  have := preservesTerminalObject_of_preservesZeroMorphisms F
  have := preservesLimitsOfShape_pempty_of_preservesTerminal F
  have : PreservesFiniteProducts F :=.of_preserves_binary_and_terminal F
  preservesFiniteLimits_of_preservesEqualizers_and_finiteProducts F

end FiniteLimits

section FiniteColimits

/-- A functor between preadditive categories which preserves cokernels preserves finite coproducts.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant849799fd820713d4cce4ec41c5ba5f354a364eee7641a78addc89ecbf2c48843.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9dcf810fd9e046432342a674d48ee1510f76e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
