# sourceMobiusKernel_analytic_contract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:411a3fd4-8cb4-449c-104f-d8d10808b338",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_analytic_contract",
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
  "slug": "sourcemobiuskernel-analytic-contract--c11ae22e2305112a9466f5cb",
  "source": {
    "blob": "a9c1495a7e48a3bd4129036cff6182a771e82811",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 218,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c11ae22e2305112a9466f5cb7f490625133aa48ffba9902763ecc930c3f2ce78",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:411a3fd4-8cb4-449c-104f-d8d10808b338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_analytic_contract
    (A : ℝ) (hA : 1 ≤ A) :
    SourceMobiusKernelAnalyticContract A :=
  ⟨sourceMobiusKernel_differentiableAt A hA,
    sourceMobiusKernel_deriv_integrable A hA,
    sourceMobiusKernel_upper_zero A hA⟩

/-- The sole remaining discrete clause: agreement of the actual real kernel at
integer arguments with the finite antidiagonal source kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c1495a7e48a3bd4129036cff6182a771e82811` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
