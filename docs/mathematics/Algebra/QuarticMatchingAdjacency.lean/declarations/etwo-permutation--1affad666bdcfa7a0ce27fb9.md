# eTwo_permutation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b50cffa5272db279b54bcc3b12283dac6522cb6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/Algebra/QuarticMatchingAdjacency.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43494424-34bc-6b64-d675-4ea66e5f05e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c67a725c-9520-c94b-1103-cb5b968f8450",
  "kind": "theorem",
  "lexical_name": "eTwo_permutation",
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
  "slug": "etwo-permutation--1affad666bdcfa7a0ce27fb9",
  "source": {
    "blob": "4b50cffa5272db279b54bcc3b12283dac6522cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 47,
    "path": "GRWTSK/Algebra/QuarticMatchingAdjacency.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1affad666bdcfa7a0ce27fb92f588f877daf15e268ea74bd7bbfb134be86063e",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticMatchingAdjacency.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c67a725c-9520-c94b-1103-cb5b968f8450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eTwo_permutation (r : Fin 4 → R) (σ : Equiv.Perm (Fin 4)) :
    eTwo (r (σ 0)) (r (σ 1)) (r (σ 2)) (r (σ 3)) =
      eTwo (r 0) (r 1) (r 2) (r 3) := by
  have hprod :
      quarticFromVieta (eOne (r (σ 0)) (r (σ 1)) (r (σ 2)) (r (σ 3)))
        (eTwo (r (σ 0)) (r (σ 1)) (r (σ 2)) (r (σ 3)))
        (eThree (r (σ 0)) (r (σ 1)) (r (σ 2)) (r (σ 3)))
        (eFour (r (σ 0)) (r (σ 1)) (r (σ 2)) (r (σ 3))) =
      quarticFromVieta (eOne (r 0) (r 1) (r 2) (r 3))
        (eTwo (r 0) (r 1) (r 2) (r 3))
        (eThree (r 0) (r 1) (r 2) (r 3))
        (eFour (r 0) (r 1) (r 2) (r 3)) := by
    rw [← four_linear_factors_vieta, ← four_linear_factors_vieta]
    simpa only [Fin.prod_univ_four] using
      Equiv.prod_comp σ (fun i : Fin 4 => Polynomial.X - Polynomial.C (r i))
  have hc := congrArg (fun p : R[X] => p.coeff 2) hprod
  simpa [quarticFromVieta, Polynomial.coeff_add, Polynomial.coeff_sub,
    Polynomial.coeff_X_pow] using hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticMatchingAdjacency.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticMatchingAdjacency.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b50cffa5272db279b54bcc3b12283dac6522cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
