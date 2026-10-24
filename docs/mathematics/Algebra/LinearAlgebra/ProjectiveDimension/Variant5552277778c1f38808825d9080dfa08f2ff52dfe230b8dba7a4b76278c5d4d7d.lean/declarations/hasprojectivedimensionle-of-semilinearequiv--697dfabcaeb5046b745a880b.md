# hasProjectiveDimensionLE_of_semiLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d67b5c8139939fc3bcbe132092846182ff6cab13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5552277778c1f38808825d9080dfa08f2ff52dfe230b8dba7a4b76278c5d4d7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1674b9f-49e1-ebc3-6c78-dd1aabcd50e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5be25e5-46f0-30f2-4aa5-93023d7a8a03",
  "kind": "lemma",
  "lexical_name": "hasProjectiveDimensionLE_of_semiLinearEquiv",
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
  "slug": "hasprojectivedimensionle-of-semilinearequiv--697dfabcaeb5046b745a880b",
  "source": {
    "blob": "d67b5c8139939fc3bcbe132092846182ff6cab13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProjectiveDimension/Variant5552277778c1f38808825d9080dfa08f2ff52dfe230b8dba7a4b76278c5d4d7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:697dfabcaeb5046b745a880b5b83ff516414cf2399b70d25642c06703ede4e86",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProjectiveDimension/Variant5552277778c1f38808825d9080dfa08f2ff52dfe230b8dba7a4b76278c5d4d7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5be25e5-46f0-30f2-4aa5-93023d7a8a03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasProjectiveDimensionLE_of_semiLinearEquiv (e' : M ≃ₛₗ[RingHomClass.toRingHom e] N)
    (n : ℕ) [HasProjectiveDimensionLE M n] : HasProjectiveDimensionLE N n := by
  induction n generalizing M N e' with
  | zero =>
    have : HasProjectiveDimensionLE M 0 := ‹_›
    simp only [HasProjectiveDimensionLE, zero_add] at this ⊢
    rw [← projective_iff_hasProjectiveDimensionLT_one, ← IsProjective.iff_projective] at this ⊢
    exact Projective.of_equiv e'
  | succ n ih =>
    let S := M.projectiveShortComplex
    let S' := N.projectiveShortComplex
    have S_exact := M.shortExact_projectiveShortComplex
    have S'_exact := N.shortExact_projectiveShortComplex
    let eR : Shrink.{v} R ≃ₛₗ[RingHomClass.toRingHom e] Shrink.{v'} R' :=
      ((Shrink.linearEquiv R R).trans e.toSemilinearEquiv).trans (Shrink.linearEquiv R' R').symm
    let e2 : S.X₂ ≃ₛₗ[RingHomClass.toRingHom e] S'.X₂ :=
      (Finsupp.mapDomain.linearEquiv (Shrink R) R e').trans (Finsupp.mapRange.linearEquiv eR)
    have comm : S'.g.hom.comp e2.toLinearMap = e'.toLinearMap.comp S.g.hom := by
      ext m r
      simp [S, S', e2, eR, Basis.constr_apply, map_smulₛₗ]
    have : S.g.hom.ker = Submodule.comap e2.toLinearMap S'.g.hom.ker := by
      rw [← LinearMap.ker_comp, comm, LinearEquiv.ker_comp]
    rw [Submodule.comap_equiv_eq_map_symm] at this
    let eker : S.X₁ ≃ₛₗ[RingHomClass.toRingHom e] S'.X₁ :=
      (LinearEquiv.ofEq _ _ this).trans (e2.symm.submoduleMap S'.g.hom.ker).symm
    have := (S_exact.hasProjectiveDimensionLT_X₃_iff n inferInstance).mp ‹_›
    exact (S'_exact.hasProjectiveDimensionLT_X₃_iff n inferInstance).mpr (ih eker)

@[deprecated (since := "2026-04-04")]
alias _root_.CategoryTheory.hasProjectiveDimensionLE_of_semiLinearEquiv :=
  hasProjectiveDimensionLE_of_semiLinearEquiv

attribute [local instance] RingHomInvPair.of_ringEquiv in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProjectiveDimension/Variant5552277778c1f38808825d9080dfa08f2ff52dfe230b8dba7a4b76278c5d4d7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProjectiveDimension/Variant5552277778c1f38808825d9080dfa08f2ff52dfe230b8dba7a4b76278c5d4d7d.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d67b5c8139939fc3bcbe132092846182ff6cab13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
