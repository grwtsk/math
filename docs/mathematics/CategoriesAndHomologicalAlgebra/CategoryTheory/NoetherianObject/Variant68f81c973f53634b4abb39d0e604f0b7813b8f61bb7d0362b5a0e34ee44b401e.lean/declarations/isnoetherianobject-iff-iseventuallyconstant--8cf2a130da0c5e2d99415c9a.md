# isNoetherianObject_iff_isEventuallyConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:487d2803-e9d0-488a-43c5-6c7f5559c16c",
  "kind": "lemma",
  "lexical_name": "isNoetherianObject_iff_isEventuallyConstant",
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
  "slug": "isnoetherianobject-iff-iseventuallyconstant--8cf2a130da0c5e2d99415c9a",
  "source": {
    "blob": "47fcacc71516d65eb17c0ed0f70e04e864c44d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cf2a130da0c5e2d99415c9a33a677284e4aac05270719a79594839e65e3a0a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:487d2803-e9d0-488a-43c5-6c7f5559c16c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNoetherianObject_iff_isEventuallyConstant :
    IsNoetherianObject X ↔ ∀ (F : ℕ ⥤ MonoOver X),
      IsFiltered.IsEventuallyConstant F := by
  rw [isNoetherianObject_iff_monotone_chain_condition]
  constructor
  · intro h G
    obtain ⟨n, hn⟩ := h ⟨_, (G ⋙ (Subobject.equivMonoOver _).inverse).monotone⟩
    refine ⟨n, fun m hm ↦ ?_⟩
    rw [MonoOver.isIso_iff_subobjectMk_eq]
    exact hn m (leOfHom hm)
  · intro h F
    obtain ⟨n, hn⟩ := h (F.monotone.functor ⋙ Subobject.representative)
    refine ⟨n, fun m hm ↦ ?_⟩
    simpa [← MonoOver.isIso_iff_isIso_left, isIso_iff_of_reflects_iso,
      PartialOrder.isIso_iff_eq] using hn (homOfLE hm)

variable {X} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47fcacc71516d65eb17c0ed0f70e04e864c44d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
