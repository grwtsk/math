# restrictFullyFaithful_homEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e000f23-56d7-978f-5f5e-107642c18929",
  "kind": "lemma",
  "lexical_name": "restrictFullyFaithful_homEquiv_apply",
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
  "slug": "restrictfullyfaithful-homequiv-apply--874aa536f505d2ed573d28ca",
  "source": {
    "blob": "b72adde9ebf9d742ea213260b5bfa03982e3f4ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:874aa536f505d2ed573d28caf45ec8d42a9c7527275ab63394da5718dda2e7df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e000f23-56d7-978f-5f5e-107642c18929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrictFullyFaithful_homEquiv_apply {X : C} {Y : D} (f : L.obj X ⟶ Y) :
    (adj.restrictFullyFaithful hiC hiD comm1 comm2).homEquiv X Y f =
      hiC.preimage (adj.unit.app (iC.obj X) ≫ R'.map (comm1.hom.app X) ≫
        R'.map (iD.map f) ≫ comm2.hom.app Y) := by
  -- This proof was just `simp [restrictFullyFaithful]` before https://github.com/leanprover-community/mathlib4/pull/16317
  apply hiC.map_injective
  simp only [homEquiv_apply, Functor.comp_obj, Functor.map_comp, map_restrictFullyFaithful_unit_app,
    Functor.id_obj, assoc, Functor.FullyFaithful.map_preimage]
  congr 2
  exact (comm2.hom.naturality _).symm

end CategoryTheory.Adjunction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72adde9ebf9d742ea213260b5bfa03982e3f4ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
