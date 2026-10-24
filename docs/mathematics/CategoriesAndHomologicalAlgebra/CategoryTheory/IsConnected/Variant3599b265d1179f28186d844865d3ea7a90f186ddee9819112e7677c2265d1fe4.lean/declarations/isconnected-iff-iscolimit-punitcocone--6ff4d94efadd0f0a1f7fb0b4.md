# isConnected_iff_isColimit_pUnitCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40029b12-cfb1-db2a-f63a-082b6950cd58",
  "kind": "theorem",
  "lexical_name": "isConnected_iff_isColimit_pUnitCocone",
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
  "slug": "isconnected-iff-iscolimit-punitcocone--6ff4d94efadd0f0a1f7fb0b4",
  "source": {
    "blob": "50f620121744050f07fd045ae033372c3d717f66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ff4d94efadd0f0a1f7fb0b42fd122768e480cb122603e789fcfa59c598f9514",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40029b12-cfb1-db2a-f63a-082b6950cd58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isConnected_iff_isColimit_pUnitCocone :
    IsConnected C ↔ Nonempty (IsColimit (pUnitCocone.{w} C)) := by
  refine ⟨fun inst => ⟨isColimitPUnitCocone C⟩, fun ⟨h⟩ => ?_⟩
  let colimitCocone : ColimitCocone (constPUnitFunctor C) := ⟨pUnitCocone.{w} C, h⟩
  have : HasColimit (constPUnitFunctor.{w} C) := ⟨⟨colimitCocone⟩⟩
  simp only [isConnected_iff_colimit_constPUnitFunctor_iso_pUnit.{w} C]
  exact ⟨colimit.isoColimitCocone colimitCocone⟩

end Limits.Types

namespace Functor

open Limits.Types

universe v₂ u₂

variable {C : Type u} [Category.{v} C] {D : Type u₂} [Category.{v₂} D]

/-- The domain of a final functor is connected if and only if its codomain is connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f620121744050f07fd045ae033372c3d717f66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
