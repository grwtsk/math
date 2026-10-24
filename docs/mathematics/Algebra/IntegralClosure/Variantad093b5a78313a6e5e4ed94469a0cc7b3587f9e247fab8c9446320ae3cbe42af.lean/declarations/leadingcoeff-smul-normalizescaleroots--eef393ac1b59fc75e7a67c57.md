# leadingCoeff_smul_normalizeScaleRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29df876472ed81a1a197bc618f845bfeffda252c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 742,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8093b891-d162-c5a2-547d-e4917bacd73f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1bc271a-707a-56e6-fbd6-eaf34102e655",
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
  "slug": "leadingcoeff-smul-normalizescaleroots--eef393ac1b59fc75e7a67c57",
  "source": {
    "blob": "29df876472ed81a1a197bc618f845bfeffda252c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 758,
    "line": 742,
    "path": "GRWTSK/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eef393ac1b59fc75e7a67c571096c6945c1572600e93acb1b025d7f7a91a453a",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1bc271a-707a-56e6-fbd6-eaf34102e655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 742–758.

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

[Verification target and public status](../../../../../verification/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean#L742).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29df876472ed81a1a197bc618f845bfeffda252c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
