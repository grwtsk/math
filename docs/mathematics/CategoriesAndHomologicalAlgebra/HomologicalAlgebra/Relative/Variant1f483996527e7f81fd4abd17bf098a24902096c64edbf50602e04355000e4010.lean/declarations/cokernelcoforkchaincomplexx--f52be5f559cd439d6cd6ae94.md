# cokernelCoforkChainComplexX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bec2dd69f249d669c3a6cf662e9cf25ebc5c68dc38c8d2daac220dcaec03ed00",
  "kind": "def",
  "lexical_name": "cokernelCoforkChainComplexX",
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
  "slug": "cokernelcoforkchaincomplexx--f52be5f559cd439d6cd6ae94",
  "source": {
    "blob": "57b20ed5e3bec7859d9943f9956b5a89757b3bbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 276,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Relative/Variant1f483996527e7f81fd4abd17bf098a24902096c64edbf50602e04355000e4010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f52be5f559cd439d6cd6ae941a0cd1e2b66d34754267f26706388b9bb05b9c91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Relative/Variant1f483996527e7f81fd4abd17bf098a24902096c64edbf50602e04355000e4010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bec2dd69f249d669c3a6cf662e9cf25ebc5c68dc38c8d2daac220dcaec03ed00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cokernelCoforkChainComplexX (n : ℕ) :
    CokernelCofork ((SSet.chainComplexMap P.hom R).f n) :=
  CokernelCofork.ofπ _ (chainComplex_condition_f ..)

/--
Given a pair of simplicial sets `i : X ⟶ Y` (with `i` a monomorphism),
`R : C` (e.g. `C := Ab` and `R := ℤ`) and `n : ℕ`,
the chain complex `SSetPair.chainComplex` of the pair in degree `n`
is a cokernel of the map `(X.chainComplex R).X n ⟶ (Y.chainComplex R).X n`.
-/
@[no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Relative/Variant1f483996527e7f81fd4abd17bf098a24902096c64edbf50602e04355000e4010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Relative/Variant1f483996527e7f81fd4abd17bf098a24902096c64edbf50602e04355000e4010.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57b20ed5e3bec7859d9943f9956b5a89757b3bbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
