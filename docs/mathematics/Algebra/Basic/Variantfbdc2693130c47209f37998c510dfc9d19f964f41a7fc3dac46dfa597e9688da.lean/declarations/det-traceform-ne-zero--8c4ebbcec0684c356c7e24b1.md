# det_traceForm_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b97e1a02-72af-5bdf-78e8-9cc03210e4cb",
  "kind": "theorem",
  "lexical_name": "det_traceForm_ne_zero",
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
  "slug": "det-traceform-ne-zero--8c4ebbcec0684c356c7e24b1",
  "source": {
    "blob": "152c6c70403a104029f09e17b870bde34c604eb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 432,
    "path": "GRWTSK/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c4ebbcec0684c356c7e24b135753776fd6edd610c935d9bd61a442af6eb0131",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b97e1a02-72af-5bdf-78e8-9cc03210e4cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_traceForm_ne_zero [Algebra.IsSeparable K L] [DecidableEq ι] (b : Basis ι K L) :
    det (BilinForm.toMatrix b (traceForm K L)) ≠ 0 := by
  haveI : FiniteDimensional K L := FiniteDimensional.of_fintype_basis b
  let pb : PowerBasis K L := Field.powerBasisOfFiniteOfSeparable _ _
  rw [← BilinForm.toMatrix_mul_basis_toMatrix pb.basis b, ←
    det_comm' (pb.basis.toMatrix_mul_toMatrix_flip b) _, ← Matrix.mul_assoc, det_mul]
  swap; · apply Basis.toMatrix_mul_toMatrix_flip
  refine
    mul_ne_zero
      (isUnit_of_mul_eq_one _ ((b.toMatrix pb.basis)ᵀ * b.toMatrix pb.basis).det ?_).ne_zero ?_
  · calc
      (pb.basis.toMatrix b * (pb.basis.toMatrix b)ᵀ).det *
            ((b.toMatrix pb.basis)ᵀ * b.toMatrix pb.basis).det =
          (pb.basis.toMatrix b * (b.toMatrix pb.basis * pb.basis.toMatrix b)ᵀ *
              b.toMatrix pb.basis).det := by
        simp only [← det_mul, Matrix.mul_assoc, Matrix.transpose_mul]
      _ = 1 := by
        simp only [Basis.toMatrix_mul_toMatrix_flip, Matrix.transpose_one, Matrix.mul_one,
          Matrix.det_one]
  simpa only [traceMatrix_of_basis] using det_traceMatrix_ne_zero' pb

variable (K L)

/-- Let $L/K$ be a finite extension of fields. If $L/K$ is separable,
then `traceForm` is nondegenerate. -/
@[stacks 0BIL "(1) => (3)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152c6c70403a104029f09e17b870bde34c604eb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
