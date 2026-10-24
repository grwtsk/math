# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4b6005cda6b5101b28a180a3a13d95dff657480fe387d21906fa0f22bc2678a",
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
  "slug": "instance--68e6dcc83101bdae672db49c",
  "source": {
    "blob": "59aec95e1b315740c0dd2c7fbc826601cc276df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 319,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68e6dcc83101bdae672db49cf0a73400d03329ec7af6f55de784e2140cb6470b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4b6005cda6b5101b28a180a3a13d95dff657480fe387d21906fa0f22bc2678a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (n : ℤ) : (shiftFunctor (HomotopyCategory C (ComplexShape.up ℤ)) n).Additive := by
  have : ((quotient C (ComplexShape.up ℤ) ⋙ shiftFunctor _ n)).Additive :=
    Functor.additive_of_iso ((quotient C (ComplexShape.up ℤ)).commShiftIso n)
  apply Functor.additive_of_full_essSurj_comp (quotient _ _ )

section

variable {C}
variable (F : C ⥤ D) [F.Additive]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59aec95e1b315740c0dd2c7fbc826601cc276df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
