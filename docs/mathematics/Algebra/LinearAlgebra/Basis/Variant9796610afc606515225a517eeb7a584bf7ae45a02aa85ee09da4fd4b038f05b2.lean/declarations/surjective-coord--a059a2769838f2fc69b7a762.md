# surjective_coord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f0f93f765be1ad54a5df2e04ab81a44e97ccef5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb7c25db-0ac0-b2ff-eebc-2230b892f86f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:adf078be-24de-ad4e-3939-85f9aa80897c",
  "kind": "theorem",
  "lexical_name": "surjective_coord",
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
  "slug": "surjective-coord--a059a2769838f2fc69b7a762",
  "source": {
    "blob": "7f0f93f765be1ad54a5df2e04ab81a44e97ccef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 254,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a059a2769838f2fc69b7a76291e9acbedf08d010b0bce6c3acf5368849599209",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adf078be-24de-ad4e-3939-85f9aa80897c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_coord [Nontrivial ι] (i : ι) : Function.Surjective <| b.coord i := by
  classical
    intro x
    obtain ⟨j, hij⟩ := exists_ne i
    let s : Finset ι := {i, j}
    have hi : i ∈ s := by simp
    have _ : j ∈ s := by simp
    let w : ι → k := fun j' => if j' = i then x else 1 - x
    have hw : s.sum w = 1 := by
      -- Porting note: previously this subgoal worked just by:
      -- simp [hij, Finset.sum_ite, Finset.filter_insert, Finset.filter_eq']
      -- I'm not sure why `simp` can not successfully use `Finset.filter_eq'`.
      simp [Finset.sum_ite, Finset.filter_insert, hij]
      erw [Finset.filter_eq']
      simp [hij.symm]
    use s.affineCombination k b w
    simp [b.coord_apply_combination_of_mem hi hw]
#align affine_basis.surjective_coord AffineBasis.surjective_coord

/-- Barycentric coordinates as an affine map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f0f93f765be1ad54a5df2e04ab81a44e97ccef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
