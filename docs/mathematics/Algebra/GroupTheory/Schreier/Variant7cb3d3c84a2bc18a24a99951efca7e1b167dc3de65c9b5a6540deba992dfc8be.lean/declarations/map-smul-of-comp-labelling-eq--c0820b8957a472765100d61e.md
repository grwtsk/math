# map_smul_of_comp_labelling_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73ef3959-5f75-67d3-a765-ba86a352f94c",
  "kind": "lemma",
  "lexical_name": "map_smul_of_comp_labelling_eq",
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
  "slug": "map-smul-of-comp-labelling-eq--c0820b8957a472765100d61e",
  "source": {
    "blob": "d77ec080ee4baf351e4d1b098aef3868e6903c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 169,
    "path": "GRWTSK/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0820b8957a472765100d61e2501ccf03ce816e5d88e8423cb90bec64787c49c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73ef3959-5f75-67d3-a765-ba86a352f94c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_smul_of_comp_labelling_eq {W : Type*} [MulAction M W]
    (φ : SchreierGraph V ι ⥤q SchreierGraph W ι) (φm : φ ⋙q labelling W ι = labelling V ι)
    (v : SchreierGraph V ι) (s : S) :
    φ.obj (ι s • v) = ι s • (φ.obj v) := by
  -- The key is that φ preserves labels, so edges labelled 's' stay labelled 's'
  let e : v ⟶ ι s • v := ⟨s, rfl⟩
  -- φ.map e is an edge from φ.obj v, and its label is preserved
  have h := (φ.map e).property
  -- This says: `ι (φ.map e).val • φ.obj v = φ.obj (ι s • v)`
  -- We need to show `(φ.map e).val = s`
  have label_eq : (φ.map e).val = s := by
    -- `φm` says `φ ⋙q labelling = labelling`
    -- So `(φ ⋙q labelling).map e = labelling.map e`
    have : (φ ⋙q labelling W ι).map e = (labelling V ι).map e := by
      rw [φm]
    simp only [Prefunctor.comp_map, labelling_map] at this
    exact this
  rw [label_eq] at h
  exact h.symm

end GroupAction

section evalWord

/-!
### Word evaluation

Evaluating a word (list of generators tagged with a boolean for forward/inverse direction)
as an element of the ambient group, by lifting it through the free group. Words are kept in
list form because `pathFromWord` recurses on the list: distinct words give distinct paths,
even when they evaluate to the same group element.
-/

variable {M : Type*} [Group M] {S : Type*} (ι : S → M)

/-- Evaluate a word `List (S × Bool)` as an element of the group `M`. A pair `(s, true)`
contributes `ι s`; a pair `(s, false)` contributes `(ι s)⁻¹`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d77ec080ee4baf351e4d1b098aef3868e6903c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
