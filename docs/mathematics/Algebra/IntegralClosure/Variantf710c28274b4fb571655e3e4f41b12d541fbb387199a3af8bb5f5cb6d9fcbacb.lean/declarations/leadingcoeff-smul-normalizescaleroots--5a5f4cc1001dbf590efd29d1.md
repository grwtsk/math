# leadingCoeff_smul_normalizeScaleRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eaa692e1-4277-6abc-715a-2f56e6aa0e18",
  "kind": "theorem",
  "lexical_name": "leadingCoeff_smul_normalizeScaleRoots",
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
  "slug": "leadingcoeff-smul-normalizescaleroots--5a5f4cc1001dbf590efd29d1",
  "source": {
    "blob": "5a187f8eb8be9b458ae2944e1e518c2e6cc9c1c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 766,
    "line": 750,
    "path": "GRWTSK/Algebra/IntegralClosure/Variantf710c28274b4fb571655e3e4f41b12d541fbb387199a3af8bb5f5cb6d9fcbacb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a5f4cc1001dbf590efd29d1a15e6c543b33e4062333f131eb5d85d2b1c10b66",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralClosure/Variantf710c28274b4fb571655e3e4f41b12d541fbb387199a3af8bb5f5cb6d9fcbacb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaa692e1-4277-6abc-715a-2f56e6aa0e18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–766.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leadingCoeff_smul_normalizeScaleRoots (p : R[X]) :
    p.leadingCoeff • normalizeScaleRoots p = scaleRoots p p.leadingCoeff := by
  ext
  simp only [coeff_scaleRoots, normalizeScaleRoots, coeff_monomial, coeff_smul, Finset.smul_sum,
    Ne.def, Finset.sum_ite_eq', finset_sum_coeff, smul_ite, smul_zero, mem_support_iff]
  -- porting note: added the following `simp only`
  simp only [ge_iff_le, tsub_le_iff_right, smul_eq_mul, mul_ite, mul_one, mul_zero,
    Finset.sum_ite_eq', mem_support_iff, ne_eq, ite_not]
  split_ifs with h₁ h₂
  · simp [*]
  · simp [*]
  · rw [mul_comm, mul_assoc, ← pow_succ', tsub_right_comm,
      tsub_add_cancel_of_le]
    rw [Nat.succ_le_iff]
    exact tsub_pos_of_lt (lt_of_le_of_ne (le_natDegree_of_ne_zero h₁) h₂)
#align leading_coeff_smul_normalize_scale_roots leadingCoeff_smul_normalizeScaleRoots

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegralClosure/Variantf710c28274b4fb571655e3e4f41b12d541fbb387199a3af8bb5f5cb6d9fcbacb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralClosure/Variantf710c28274b4fb571655e3e4f41b12d541fbb387199a3af8bb5f5cb6d9fcbacb.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a187f8eb8be9b458ae2944e1e518c2e6cc9c1c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
