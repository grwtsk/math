# shift_distinguished

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b7e3e3a-aced-acdc-b3b3-945fd6a9230a",
  "kind": "lemma",
  "lexical_name": "shift_distinguished",
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
  "slug": "shift-distinguished--1d8929458dc47c2afc10c86a",
  "source": {
    "blob": "efe56e8b52c44287b1216f437286d31488e0f58d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 385,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantf03e8c64a2b9ac80f2a767fa91ae7f238b92606b9d41d6079b0976cd81058055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d8929458dc47c2afc10c86a2eb0245f4f8a359bbed50ac682357a13d42a1080",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantf03e8c64a2b9ac80f2a767fa91ae7f238b92606b9d41d6079b0976cd81058055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b7e3e3a-aced-acdc-b3b3-945fd6a9230a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shift_distinguished (n : ℤ) :
    (CategoryTheory.shiftFunctor (Triangle C) n).obj T ∈ distTriang C := by
  revert T hT
  let H : ℤ → Prop := fun n => ∀ (T : Triangle C) (_ : T ∈ distTriang C),
    (Triangle.shiftFunctor C n).obj T ∈ distTriang C
  change H n
  have H_zero : H 0 := fun T hT =>
    isomorphic_distinguished _ hT _ ((Triangle.shiftFunctorZero C).app T)
  have H_one : H 1 := fun T hT =>
    isomorphic_distinguished _ (rot_of_distTriang _
      (rot_of_distTriang _ (rot_of_distTriang _ hT))) _
        ((rotateRotateRotateIso C).symm.app T)
  have H_neg_one : H (-1) := fun T hT =>
    isomorphic_distinguished _ (inv_rot_of_distTriang _
      (inv_rot_of_distTriang _ (inv_rot_of_distTriang _ hT))) _
        ((invRotateInvRotateInvRotateIso C).symm.app T)
  have H_add : ∀ {a b c : ℤ}, H a → H b → a + b = c → H c := fun {a b c} ha hb hc T hT =>
    isomorphic_distinguished _ (hb _ (ha _ hT)) _
      ((Triangle.shiftFunctorAdd' C _ _ _ hc).app T)
  obtain (n|n) := n
  · induction n with
    | zero =>  exact H_zero
    | succ n hn => exact H_add hn H_one rfl
  · induction n with
    | zero => exact H_neg_one
    | succ n hn => exact H_add hn H_neg_one rfl

end Triangle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantf03e8c64a2b9ac80f2a767fa91ae7f238b92606b9d41d6079b0976cd81058055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantf03e8c64a2b9ac80f2a767fa91ae7f238b92606b9d41d6079b0976cd81058055.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efe56e8b52c44287b1216f437286d31488e0f58d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
