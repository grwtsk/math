# sourceMobiusKernel_eq_plainWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a7433ca-6b79-6189-5bb0-9166b559bfe3",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_eq_plainWeight",
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
  "slug": "sourcemobiuskernel-eq-plainweight--1ad254fc3da5898dc314ef76",
  "source": {
    "blob": "14806976c7e04112bcc7aca4a998270ff3f19368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f2c039771a7090d2508c8bb071fd35c76950cf058b7a65dc5d3d38ecc86240c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ad254fc3da5898dc314ef769fd63db36f8aa9a45b50beed85ea1ecafa9a92fb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f2c039771a7090d2508c8bb071fd35c76950cf058b7a65dc5d3d38ecc86240c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a7433ca-6b79-6189-5bb0-9166b559bfe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_eq_plainWeight (A : ℝ) (d : ℕ) (hd : 1 ≤ d) :
    sourceMobiusKernel A d = ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
      Real.log k * sourcePlainWeight A ((d*k : ℕ) : ℝ) := by
  apply Finset.sum_congr rfl
  intro k hk
  have hk1 := (Finset.mem_Icc.mp hk).1
  have hp : 1 ≤ d*k := Nat.mul_pos hd hk1
  rw [sourcePlainWeight_nat_eq A (d*k) hp]
  simp only [sourceKernelTerm, closedPrimeWeight, Nat.cast_mul]

/-- Source-faithful rectangle completion of the signed bilinear term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f2c039771a7090d2508c8bb071fd35c76950cf058b7a65dc5d3d38ecc86240c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f2c039771a7090d2508c8bb071fd35c76950cf058b7a65dc5d3d38ecc86240c.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14806976c7e04112bcc7aca4a998270ff3f19368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
