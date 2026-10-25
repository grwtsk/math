# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateMulState.Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.Int.Internal.Linear.Poly.updateOccsForElimEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1aeb0cfa69bcc2c9adfc122f143c6700b7d08dbcba7c7c8946c59b7bc2f312b",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateMulState.Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.Int.Internal.Linear.Poly.updateOccsForElimEq",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-propa--01d2d89b764d938b198c532e",
  "source": {
    "blob": "bfc33f2c395a87402e7796b548588f6a687c8303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 343,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01d2d89b764d938b198c532eddd9736ec0f27cedfc9036d715eeebfde4ac4da1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1aeb0cfa69bcc2c9adfc122f143c6700b7d08dbcba7c7c8946c59b7bc2f312b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateMulState.Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.Int.Internal.Linear.Poly.updateOccsForElimEq (p : Poly) (x : Var) : GoalM Unit := do
  let rec go (p : Poly) : GoalM Unit := do
    let .add _ y p := p | return ()
    unless x == y do addOcc y x
    go p
  go p

set_option compiler.ignoreBorrowAnnotation true in
@[export lean_grind_cutsat_assert_eq]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfc33f2c395a87402e7796b548588f6a687c8303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
