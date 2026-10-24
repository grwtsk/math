# laplacian_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd6efdae-2151-b60c-2945-97eacbaf3734",
  "kind": "theorem",
  "lexical_name": "laplacian_positive",
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
  "slug": "laplacian-positive--3ecde1696788ed526dce6769",
  "source": {
    "blob": "ba048cbe0bb65101ca49cf17a26e3196f0693ddc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 44,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Harmonic/Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ecde1696788ed526dce6769f644cc241ec0badeeac8ddd23aefd7ac254a8550",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Harmonic/Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd6efdae-2151-b60c-2945-97eacbaf3734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplacian_positive
    (complex : FiniteDifferentialComplex Index)
    (vector : FiniteHilbert Index) :
    0 ≤ (inner ℂ (complex.laplacianOperator vector) vector).re := by
  let dirac := complex.hodgeDirac
  have symmetric : dirac.toLinearMap.IsSymmetric :=
    FiniteOperator.isSymmetric_toLinearMap_iff dirac |>.mpr
      complex.hodgeDirac_isHermitian
  change 0 ≤ (inner ℂ (complex.laplacian.toLinearMap vector) vector).re
  rw [← complex.hodgeDirac_square]
  have square_apply :
      FiniteOperator.toLinearMap (dirac * dirac) vector =
        dirac.toLinearMap (dirac.toLinearMap vector) := by
    apply PiLp.ext
    intro index
    change Matrix.mulVec (dirac * dirac) vector.ofLp index =
      Matrix.mulVec dirac (Matrix.mulVec dirac vector.ofLp) index
    rw [Matrix.mulVec_mulVec]
  rw [square_apply]
  rw [symmetric (dirac.toLinearMap vector) vector]
  exact inner_self_nonneg (𝕜 := ℂ) (x := dirac.toLinearMap vector)

end FiniteDifferentialComplex

end DAF.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Harmonic/Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Harmonic/Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba048cbe0bb65101ca49cf17a26e3196f0693ddc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
