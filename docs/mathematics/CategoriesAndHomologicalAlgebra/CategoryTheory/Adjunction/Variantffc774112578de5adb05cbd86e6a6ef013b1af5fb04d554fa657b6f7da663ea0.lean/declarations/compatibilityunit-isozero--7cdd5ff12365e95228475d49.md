# compatibilityUnit_isoZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee538cb5-6e67-2826-55bb-e2b9d3ce13a8",
  "kind": "lemma",
  "lexical_name": "compatibilityUnit_isoZero",
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
  "slug": "compatibilityunit-isozero--7cdd5ff12365e95228475d49",
  "source": {
    "blob": "6dc822ffe537245acf22e03b89b52f1b2f16b85b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cdd5ff12365e95228475d4976091919911e429e747c714aef3e84afb56623f9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee538cb5-6e67-2826-55bb-e2b9d3ce13a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compatibilityUnit_isoZero : CompatibilityUnit adj (Functor.CommShift.isoZero F A)
    (Functor.CommShift.isoZero G A) := by
  intro
  simp only [Functor.id_obj, Functor.comp_obj, Functor.CommShift.isoZero_hom_app,
    Functor.map_comp, assoc, unit_naturality_assoc,
    ← cancel_mono ((shiftFunctorZero C A).hom.app _), ← G.map_comp_assoc, Iso.inv_hom_id_app,
    Functor.id_obj, Functor.map_id, id_comp, NatTrans.naturality, Functor.id_map, assoc, comp_id]

/-- Given an adjunction `adj : F ⊣ G`, `a, b` in `A` and commutation isomorphisms
between shifts by `a` (resp. `b`) and `F` and `G`, if these commutation isomorphisms are
compatible with the unit of `adj`, then so are the commutation isomorphisms between shifts
by `a + b` and `F` and `G` constructed by `Functor.CommShift.isoAdd`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dc822ffe537245acf22e03b89b52f1b2f16b85b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
