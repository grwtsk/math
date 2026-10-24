# weightedCartan_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6507e5b7-a309-9bab-f896-3a32c8e9dd58",
  "kind": "theorem",
  "lexical_name": "weightedCartan_symmetric",
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
  "slug": "weightedcartan-symmetric--2e9d74233807eb47a9276beb",
  "source": {
    "blob": "7301acbc2a1a256f5c681daa467d248b02f14f2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/Attempt05/Variant9f95d4f9620c97d715a8bbc48b48f0d64d1aa127386c1eeba7ef3872822b24f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e9d74233807eb47a9276beb5235dc30db91248c4dc5716ed6979f1b8d2f4e1f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Attempt05/Variant9f95d4f9620c97d715a8bbc48b48f0d64d1aa127386c1eeba7ef3872822b24f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6507e5b7-a309-9bab-f896-3a32c8e9dd58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedCartan_symmetric {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (d : Fin n → ℤ) (hbalance : ∀ i j, d i * A i j = d j * A j i) :
    (diagonal d * cartanMatrix A)ᵀ = diagonal d * cartanMatrix A := by
  ext i j
  simp only [transpose_apply, diagonal_mul, cartanMatrix, Matrix.sub_apply,
    Matrix.smul_apply, Matrix.one_apply]
  by_cases hij : i = j
  · subst j
    rfl
  · simp only [if_neg hij, if_neg (Ne.symm hij), smul_zero, zero_sub, mul_neg]
    exact congrArg Neg.neg (hbalance i j).symm

/-- Integer detailed balance preserves the full form. This includes positive integer
diagonal symmetrizers, without assuming nondegeneracy or positive definiteness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Attempt05/Variant9f95d4f9620c97d715a8bbc48b48f0d64d1aa127386c1eeba7ef3872822b24f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Attempt05/Variant9f95d4f9620c97d715a8bbc48b48f0d64d1aa127386c1eeba7ef3872822b24f6.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7301acbc2a1a256f5c681daa467d248b02f14f2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
