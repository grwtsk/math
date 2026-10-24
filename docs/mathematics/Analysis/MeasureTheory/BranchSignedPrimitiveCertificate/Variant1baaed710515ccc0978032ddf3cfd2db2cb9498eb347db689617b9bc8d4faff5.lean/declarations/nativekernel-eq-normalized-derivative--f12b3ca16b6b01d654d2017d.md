# nativeKernel_eq_normalized_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed3756e4-0c18-a3e6-6995-84bdada1de20",
  "kind": "theorem",
  "lexical_name": "nativeKernel_eq_normalized_derivative",
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
  "slug": "nativekernel-eq-normalized-derivative--f12b3ca16b6b01d654d2017d",
  "source": {
    "blob": "e434c4e7c7ec5f172a0b5dd71fa4af7b22ef7b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 51,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f12b3ca16b6b01d654d2017d72fbe65c171d8f88d325200a02f71ebce2d5c86c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed3756e4-0c18-a3e6-6995-84bdada1de20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nativeKernel_eq_normalized_derivative {A : ℝ} (hA : 0 < A) (t : ℝ) :
    nativeKernel A t = Real.exp (3 * t / 2) *
      deriv (sourceMobiusKernel A) (Real.exp t) := by
  rw [sourceMobiusKernel_deriv A (Real.exp t) hA (Real.exp_pos t),
    nativeKernel, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k hk
  have hk1 := (Finset.mem_Icc.mp hk).1
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  rw [Real.log_mul (Real.exp_ne_zero t) hk0.ne', Real.log_exp,
    Real.sqrt_mul (Real.exp_pos t).le, ← Real.exp_half]
  have he : Real.exp (3 * t / 2) = Real.exp t * Real.exp (t / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he]
  field_simp

/-- C² correlation regularity is sufficient for the actual kernel's global C¹ regularity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e434c4e7c7ec5f172a0b5dd71fa4af7b22ef7b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
