# sourceMobiusKernel_eq_inner_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4e51f05-e4ac-45e3-7f3e-f1092bca2245",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_eq_inner_sum",
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
  "slug": "sourcemobiuskernel-eq-inner-sum--f34899dab968a35b4b570d58",
  "source": {
    "blob": "1b22c414e041bddd8b667198e793665b7364de71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f34899dab968a35b4b570d58dc30557d0ec5e7f594514d3ebf4df9b93985e905",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4e51f05-e4ac-45e3-7f3e-f1092bca2245`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_eq_inner_sum {A : ℝ} (hA : 1 ≤ A)
    {d : ℕ} (hd : 1 ≤ d) :
    sourceMobiusKernel A d =
      ∑ m ∈ Finset.Icc 1 ⌊innerCutoff A d⌋₊,
        Real.log m * plainProfile A 1 ((d : ℝ) * m) := by
  rw [sourceMobiusKernel_eq_admissible_sum A hA d hd,
    admissibleK_eq_innerInventory A hd]
  apply Finset.sum_congr rfl
  intro m hm
  exact sourceKernelTerm_eq_innerWeight A hd (Finset.mem_Icc.mp hm).1

/-- Every positive divisor in a source prefix is in the local theorem's domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Outer/Variantcd5f1f926659ccb6a0b12c4c9602a64c5e8ac465c46510156b61cce028ab6573.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b22c414e041bddd8b667198e793665b7364de71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
