# mk'.cm3a_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f51c40a1fd69fa12b676c1768708554724617b7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/617cef167f92c6b63fa0b7402808d164e85f082e237e70186598a9981f80e60a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:154e9af4-e02f-7fb6-d169-f17574985c0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff407f1b-db20-4f78-0449-5e2d747465db",
  "kind": "lemma",
  "lexical_name": "mk'.cm3a_aux",
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
  "slug": "mk-cm3a-aux--3721a9a8066bc6e39ac8bc98",
  "source": {
    "blob": "f51c40a1fd69fa12b676c1768708554724617b7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant617cef167f92c6b63fa0b7402808d164e85f082e237e70186598a9981f80e60a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3721a9a8066bc6e39ac8bc98d6bfc679ac0cebf3c9334c91e8ff52a4d3996e16",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant617cef167f92c6b63fa0b7402808d164e85f082e237e70186598a9981f80e60a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff407f1b-db20-4f78-0449-5e2d747465db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mk'.cm3a_aux [CategoryWithFibrations C] [CategoryWithCofibrations C]
    [CategoryWithWeakEquivalences C]
    [(weakEquivalences C).HasTwoOutOfThreeProperty]
    [IsWeakFactorizationSystem (trivialCofibrations C) (fibrations C)]
    [IsWeakFactorizationSystem (cofibrations C) (trivialFibrations C)] {A B X Y : C}
    {f : A ⟶ B} {w : X ⟶ Y} [Fibration f] [WeakEquivalence w]
    (h : RetractArrow f w) : WeakEquivalence f := by
  have hw := factorizationData (trivialCofibrations C) (fibrations C) w
  have : (trivialFibrations C).IsStableUnderRetracts := by
    rw [← cofibrations_rlp]
    infer_instance
  have sq : CommSq h.r.left hw.i f (hw.p ≫ h.r.right) := ⟨by simp⟩
  have hf : fibrations C f := by rwa [← fibration_iff]
  have : HasLiftingProperty hw.i f := hasLiftingProperty_of_wfs _ _ hw.hi hf
  have : RetractArrow f hw.p :=
    { i := Arrow.homMk (h.i.left ≫ hw.i) h.i.right
      r := Arrow.homMk sq.lift h.r.right }
  have h' : trivialFibrations C hw.p :=
    ⟨hw.hp, (weakEquivalence_iff _).1 (weakEquivalence_of_precomp_of_fac hw.fac)⟩
  simpa only [weakEquivalence_iff] using (of_retract this h').2

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Constructor for `ModelCategory C` which assumes a formulation of axioms
using weak factorization systems. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant617cef167f92c6b63fa0b7402808d164e85f082e237e70186598a9981f80e60a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant617cef167f92c6b63fa0b7402808d164e85f082e237e70186598a9981f80e60a.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f51c40a1fd69fa12b676c1768708554724617b7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
