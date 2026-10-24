# hasShiftOfFullyFaithful_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efa72b208983867bd3f80252b2c8167d01361e489b317a24bc071bf783d7dfd0",
  "kind": "def",
  "lexical_name": "hasShiftOfFullyFaithful_zero",
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
  "slug": "hasshiftoffullyfaithful-zero--02998b1cf31a37a35efc06e6",
  "source": {
    "blob": "bb786d4a55e058897ddd79f445e6777af403446f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 682,
    "line": 677,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6d871b29b38b3c636c613d7e49354e0b9af5ad9850b4c0f9c748447919be6013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02998b1cf31a37a35efc06e61f390797f4ffc2f24bd2a8c7824b020c035f7758",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6d871b29b38b3c636c613d7e49354e0b9af5ad9850b4c0f9c748447919be6013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efa72b208983867bd3f80252b2c8167d01361e489b317a24bc071bf783d7dfd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasShiftOfFullyFaithful_zero : s 0 ≅ 𝟭 C :=
  natIsoOfCompFullyFaithful F ((i 0) ≪≫ isoWhiskerLeft F (shiftFunctorZero D A) ≪≫
    Functor.rightUnitor _ ≪≫ (Functor.leftUnitor _).symm)
#align category_theory.has_shift_of_fully_faithful_zero CategoryTheory.hasShiftOfFullyFaithful_zero

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6d871b29b38b3c636c613d7e49354e0b9af5ad9850b4c0f9c748447919be6013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6d871b29b38b3c636c613d7e49354e0b9af5ad9850b4c0f9c748447919be6013.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb786d4a55e058897ddd79f445e6777af403446f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
