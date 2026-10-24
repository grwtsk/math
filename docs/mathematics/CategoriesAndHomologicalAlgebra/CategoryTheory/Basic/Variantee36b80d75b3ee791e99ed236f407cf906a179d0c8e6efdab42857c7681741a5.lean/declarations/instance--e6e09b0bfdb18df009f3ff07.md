# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad5ee6a5b6bceee9e9a51e87f1fec41cbaf4c3da273190d301b5f28e98e763d7",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e6e09b0bfdb18df009f3ff07",
  "source": {
    "blob": "201629991dd8c871cc91451525be8dca292adc91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee36b80d75b3ee791e99ed236f407cf906a179d0c8e6efdab42857c7681741a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6e09b0bfdb18df009f3ff0765984d8e87b387066feada61253214d3616926a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee36b80d75b3ee791e99ed236f407cf906a179d0c8e6efdab42857c7681741a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad5ee6a5b6bceee9e9a51e87f1fec41cbaf4c3da273190d301b5f28e98e763d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {X : C} : Semiring (End X) :=
  { End.monoid with
    zero_mul := fun f => by dsimp [mul]; exact HasZeroMorphisms.comp_zero f _
    mul_zero := fun f => by dsimp [mul]; exact HasZeroMorphisms.zero_comp _ f
    left_distrib := fun f g h => Preadditive.add_comp X X X g h f
    right_distrib := fun f g h => Preadditive.comp_add X X X h f g }

/-- Porting note: It looks like Ring's parent classes changed in
Lean 4 so the previous instance needed modification. Was following my nose here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee36b80d75b3ee791e99ed236f407cf906a179d0c8e6efdab42857c7681741a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee36b80d75b3ee791e99ed236f407cf906a179d0c8e6efdab42857c7681741a5.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201629991dd8c871cc91451525be8dca292adc91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
