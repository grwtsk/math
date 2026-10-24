# FiberFunctor.isPretransitive_of_isConnected'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ee47352e98db6689eef72d587106b5c951be7ece0afe660993945141c58c597",
  "kind": "instance",
  "lexical_name": "FiberFunctor.isPretransitive_of_isConnected'",
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
  "slug": "fiberfunctor-ispretransitive-of-isconnected--4f3ce87ad4339d260aeeb1c8",
  "source": {
    "blob": "210b20e927863cf538bf946d6b2335cf803e0a7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 433,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant81e46122afa02175ab7479b784bdf6c7ebe8ee13bc2a6d06c6fb48b4a8312035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f3ce87ad4339d260aeeb1c8ab6b1a964b0bf438c73351baf253d6425175d6c8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant81e46122afa02175ab7479b784bdf6c7ebe8ee13bc2a6d06c6fb48b4a8312035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ee47352e98db6689eef72d587106b5c951be7ece0afe660993945141c58c597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private instance FiberFunctor.isPretransitive_of_isConnected' (X : C) [IsConnected X] :
    MulAction.IsPretransitive (Aut F) (F.obj X) := by
  obtain ⟨A, f, hgal⟩ := exists_hom_from_galois_of_connected F X
  have hs : Function.Surjective (F.map f) := surjective_of_nonempty_fiber_of_isConnected F f
  refine ⟨fun x y ↦ ?_⟩
  obtain ⟨a, ha⟩ := hs x
  obtain ⟨b, hb⟩ := hs y
  have : MulAction.IsPretransitive (Aut F) (F.obj A) := isPretransitive_of_isGalois F A
  obtain ⟨σ, (hσ : σ.hom.app A a = b)⟩ := MulAction.exists_smul_eq (Aut F) a b
  use σ
  rw [← ha, ← hb]
  change (F.map f ≫ σ.hom.app X) a = F.map f b
  rw [σ.hom.naturality, FintypeCat.comp_apply, hσ]

end Specialized

section General

variable (F : C ⥤ FintypeCat.{w}) [FiberFunctor F]

set_option backward.isDefEq.respectTransparency.types false in
/-- The `Aut F` action on the fiber of a connected object is transitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant81e46122afa02175ab7479b784bdf6c7ebe8ee13bc2a6d06c6fb48b4a8312035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant81e46122afa02175ab7479b784bdf6c7ebe8ee13bc2a6d06c6fb48b4a8312035.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `210b20e927863cf538bf946d6b2335cf803e0a7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
