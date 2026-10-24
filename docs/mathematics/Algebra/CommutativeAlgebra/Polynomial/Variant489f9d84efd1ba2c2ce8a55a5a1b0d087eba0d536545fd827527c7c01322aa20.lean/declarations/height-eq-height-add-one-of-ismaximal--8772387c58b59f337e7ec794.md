# height_eq_height_add_one_of_isMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1941f652-f397-2585-1821-f38b1ace13e9",
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
  "slug": "height-eq-height-add-one-of-ismaximal--8772387c58b59f337e7ec794",
  "source": {
    "blob": "83b71751f940bd86792259edfeead2da9dd05814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 63,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant489f9d84efd1ba2c2ce8a55a5a1b0d087eba0d536545fd827527c7c01322aa20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8772387c58b59f337e7ec79465a8d4a1589f84fce57a95da6038383d11270111",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant489f9d84efd1ba2c2ce8a55a5a1b0d087eba0d536545fd827527c7c01322aa20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1941f652-f397-2585-1821-f38b1ace13e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–80.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant489f9d84efd1ba2c2ce8a55a5a1b0d087eba0d536545fd827527c7c01322aa20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant489f9d84efd1ba2c2ce8a55a5a1b0d087eba0d536545fd827527c7c01322aa20.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b71751f940bd86792259edfeead2da9dd05814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
