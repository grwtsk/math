# height_eq_height_add_one_of_isMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd6c596743a973764ff47208d556bf3943be9456",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a697f47d9033e3596e3ccfe20580bd7fc3334504640c7e19d33523a29671f68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd20b6a6-588a-9e2d-01a4-11985fb00790",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74154ac6-8cc0-f5a2-7a3a-f6f399441105",
  "kind": "lemma",
  "lexical_name": "height_eq_height_add_one_of_isMaximal",
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
  "slug": "height-eq-height-add-one-of-ismaximal--f693877a31e56f195c9fa029",
  "source": {
    "blob": "dd6c596743a973764ff47208d556bf3943be9456",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 55,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant7a697f47d9033e3596e3ccfe20580bd7fc3334504640c7e19d33523a29671f68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f693877a31e56f195c9fa029126c9b6c3b61b46475eda87adaa55a35f9f707c6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant7a697f47d9033e3596e3ccfe20580bd7fc3334504640c7e19d33523a29671f68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74154ac6-8cc0-f5a2-7a3a-f6f399441105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma height_eq_height_add_one_of_isMaximal (p : Ideal R) [p.IsMaximal] (P : Ideal R[X])
    [P.IsMaximal] [P.LiesOver p] : P.height = p.height + 1 := by
  let _ : Field (R ⧸ p) := Quotient.field p
  suffices h : (P.map (Ideal.Quotient.mk (Ideal.map (algebraMap R R[X]) p))).height = 1 by
    rw [height_eq_height_add_of_liesOver_of_hasGoingDown p, h]
  let e : (R[X] ⧸ (p.map (algebraMap R R[X]))) ≃+* (R ⧸ p)[X] :=
    (polynomialQuotientEquivQuotientPolynomial p).symm
  let P' : Ideal (R ⧸ p)[X] := Ideal.map e <| P.map (Ideal.Quotient.mk <| p.map (algebraMap R R[X]))
  have : (P.map (Ideal.Quotient.mk <| p.map (algebraMap R R[X]))).IsMaximal := by
    refine .map_of_surjective_of_ker_le Quotient.mk_surjective ?_
    rw [mk_ker, LiesOver.over (P := P) (p := p)]
    exact map_comap_le
  have : P'.IsMaximal := map_isMaximal_of_equiv e
  have : P'.height = 1 :=
    IsPrincipalIdealRing.height_eq_one_of_isMaximal P' (Polynomial.not_isField (R ⧸ p))
  rwa [← e.height_map <| P.map (Ideal.Quotient.mk <| p.map (algebraMap R R[X]))]

/-- Let `p` be a maximal ideal of `R`. Then the height of `p[X]` equals the height of `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant7a697f47d9033e3596e3ccfe20580bd7fc3334504640c7e19d33523a29671f68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant7a697f47d9033e3596e3ccfe20580bd7fc3334504640c7e19d33523a29671f68.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd6c596743a973764ff47208d556bf3943be9456` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
