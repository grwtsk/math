# SmallShiftedHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7465daaae49ea71f1bee199fda58ed3ecfc5ad97d5d515d7c7bbc2429c3bbdcc",
  "kind": "def",
  "lexical_name": "SmallShiftedHom",
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
  "slug": "smallshiftedhom--888591c3a600c2c01dcfa43b",
  "source": {
    "blob": "a0740226a4fa4be97d74d1b9512c251878af8a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 133,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:888591c3a600c2c01dcfa43b5c9685e8aa45f6ea20ab44cfd0490c2e5ce11545",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7465daaae49ea71f1bee199fda58ed3ecfc5ad97d5d515d7c7bbc2429c3bbdcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SmallShiftedHom (X Y : C) [HasSmallLocalizedShiftedHom.{w} W M X Y] (m : M) : Type w :=
  SmallHom W X (Y⟦m⟧)

namespace SmallShiftedHom

section

variable [W.IsCompatibleWithShift M] {X Y Z : C}

/-- Constructor for `SmallShiftedHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0740226a4fa4be97d74d1b9512c251878af8a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
