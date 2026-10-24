# restrictFullyFaithful_homEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bc3f50a92d6bf73128ad386be3366f97089ee0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f8013ef-1660-e15a-c19f-0840e9b8b12d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fa0b65f-8add-0b5f-da37-6ff4ca8c003e",
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
  "slug": "restrictfullyfaithful-homequiv-apply--729315c71f8e05f92480cc45",
  "source": {
    "blob": "2bc3f50a92d6bf73128ad386be3366f97089ee0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:729315c71f8e05f92480cc45690b35c9951b7fac8528c88d4184f42a0f494019",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fa0b65f-8add-0b5f-da37-6ff4ca8c003e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bc3f50a92d6bf73128ad386be3366f97089ee0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
