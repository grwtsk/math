# commaMapEquivalenceUnitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fdd5c5643bf11b4a5973ab1d8b669e6bd28885945762328f43adff3b60ce527",
  "kind": "def",
  "lexical_name": "commaMapEquivalenceUnitIso",
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
  "slug": "commamapequivalenceunitiso--9e48b521c2ac95d2c969d123",
  "source": {
    "blob": "bf47aebdd88294ee5cef4c95d0451c1a6b19e29c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variant719d95a8de3c241e2e2fc39da937281176f85ba2f3d75e6077047b72265bc9f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e48b521c2ac95d2c969d12311bb954481db91ddd69f20f82ae65da138a5e1d1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variant719d95a8de3c241e2e2fc39da937281176f85ba2f3d75e6077047b72265bc9f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fdd5c5643bf11b4a5973ab1d8b669e6bd28885945762328f43adff3b60ce527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commaMapEquivalenceUnitIso [IsIso β] (X : Comma L' R') :
    𝟭 (StructuredArrow X (Comma.map α β)) ≅
      commaMapEquivalenceFunctor α β X ⋙ commaMapEquivalenceInverse α β X :=
  NatIso.ofComponents (fun _ => isoMk (Iso.refl _))

set_option backward.defeqAttrib.useBackward true in
/-- The counit functor establishing the equivalence `StructuredArrow.commaMapEquivalence`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variant719d95a8de3c241e2e2fc39da937281176f85ba2f3d75e6077047b72265bc9f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variant719d95a8de3c241e2e2fc39da937281176f85ba2f3d75e6077047b72265bc9f4.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf47aebdd88294ee5cef4c95d0451c1a6b19e29c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
