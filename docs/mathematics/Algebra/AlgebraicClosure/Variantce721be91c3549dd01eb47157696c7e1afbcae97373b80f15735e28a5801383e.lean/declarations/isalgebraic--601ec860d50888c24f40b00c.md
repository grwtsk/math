# isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c5c4424e7688add380b3a87d8058f6d25c569aefd82c4a99875bf6e6c2f6620",
  "kind": "instance",
  "lexical_name": "isAlgebraic",
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
  "slug": "isalgebraic--601ec860d50888c24f40b00c",
  "source": {
    "blob": "1205fd25f107722b52e6c2bd815bfe5b6d31d440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 167,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:601ec860d50888c24f40b00c668d0922579ab723f6172885866b2d6dab11dec8",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c5c4424e7688add380b3a87d8058f6d25c569aefd82c4a99875bf6e6c2f6620`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isAlgebraic : Algebra.IsAlgebraic k (AlgebraicClosure k) :=
  ⟨fun z =>
    IsIntegral.isAlgebraic <| by
      let ⟨p, hp⟩ := Ideal.Quotient.mk_surjective z
      rw [← hp]
      induction p using MvPolynomial.induction_on generalizing z with
        | C => exact isIntegral_algebraMap
        | add _ _ ha hb => exact (ha _ rfl).add (hb _ rfl)
        | mul_X p fi ih =>
          rw [map_mul]
          refine (ih _ rfl).mul ⟨_, fi.1.2, ?_⟩
          simp_rw [← eval_map, Monics.map_eq_prod, eval_prod, Polynomial.map_sub, eval_sub]
          apply Finset.prod_eq_zero (Finset.mem_univ fi.2)
          rw [map_C]
          -- The `erw` is needed here because the `R` in `eval` is `AlgebraicClosure k`,
          -- but this has been unfolded in the arguments of `eval`.
          erw [eval_C]
          simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variantce721be91c3549dd01eb47157696c7e1afbcae97373b80f15735e28a5801383e.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1205fd25f107722b52e6c2bd815bfe5b6d31d440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
