# CommShiftCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ca3e7a372e3c0f7e1e5aa68cdee2e621123f65b1394864a60f468834f085345",
  "kind": "structure",
  "lexical_name": "CommShiftCore",
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
  "slug": "commshiftcore--eff856dc26bbfe1127d2bee0",
  "source": {
    "blob": "d5a3df2df7eaeda7f8832f0503836f11fc69c2be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 286,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Varianta1e39db6b22c2281758f552fc94ca724d39d4b41605ef65f5cfbf3fd37c86c6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eff856dc26bbfe1127d2bee0b3564d1feed90a9a3bd34fd41dd4c0da65631c1a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Varianta1e39db6b22c2281758f552fc94ca724d39d4b41605ef65f5cfbf3fd37c86c6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ca3e7a372e3c0f7e1e5aa68cdee2e621123f65b1394864a60f468834f085345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CommShiftCore (a : A) : Prop where
  shift_comm : (F₁.commShiftIso a).hom ≫ Functor.whiskerRight τ _ =
    Functor.whiskerLeft _ τ ≫ (F₂.commShiftIso a).hom

namespace CommShiftCore

attribute [reassoc] shift_comm

section

variable {A} {a : A} (hτ : CommShiftCore τ a)

include hτ

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Varianta1e39db6b22c2281758f552fc94ca724d39d4b41605ef65f5cfbf3fd37c86c6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Varianta1e39db6b22c2281758f552fc94ca724d39d4b41605ef65f5cfbf3fd37c86c6d.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a3df2df7eaeda7f8832f0503836f11fc69c2be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
