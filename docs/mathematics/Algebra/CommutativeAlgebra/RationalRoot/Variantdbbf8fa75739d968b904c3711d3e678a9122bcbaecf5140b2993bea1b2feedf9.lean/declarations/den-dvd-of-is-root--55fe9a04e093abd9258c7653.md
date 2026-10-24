# den_dvd_of_is_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30f454c62e1b3680503cb4ad2914c2e197804719",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbbf8fa75739d968b904c3711d3e678a9122bcbaecf5140b2993bea1b2feedf9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ed6995f-f136-2d85-4921-81ebd2099312",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e673112d-64ee-9553-f85d-f3d1ec3ab78f",
  "kind": "theorem",
  "lexical_name": "den_dvd_of_is_root",
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
  "slug": "den-dvd-of-is-root--55fe9a04e093abd9258c7653",
  "source": {
    "blob": "30f454c62e1b3680503cb4ad2914c2e197804719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 89,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RationalRoot/Variantdbbf8fa75739d968b904c3711d3e678a9122bcbaecf5140b2993bea1b2feedf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55fe9a04e093abd9258c7653135b5ee2f58d547d00ea38568e39c5a5747f3f95",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RationalRoot/Variantdbbf8fa75739d968b904c3711d3e678a9122bcbaecf5140b2993bea1b2feedf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e673112d-64ee-9553-f85d-f3d1ec3ab78f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem den_dvd_of_is_root {p : A[X]} {r : K} (hr : aeval r p = 0) :
    (den A r : A) ∣ p.leadingCoeff := by
  suffices (den A r : A) ∣ p.leadingCoeff * num A r ^ p.natDegree by
    refine
      dvd_of_dvd_mul_left_of_no_prime_factors (mem_nonZeroDivisors_iff_ne_zero.mp (den A r).2) ?_
        this
    intro q dvd_den dvd_num_pow hq
    apply hq.not_isUnit
    exact num_den_reduced A r (hq.dvd_of_dvd_pow dvd_num_pow) dvd_den
  rw [← coeff_scaleRoots_natDegree]
  apply dvd_term_of_isRoot_of_dvd_terms _ (num_isRoot_scaleRoots_of_aeval_eq_zero hr)
  intro j hj
  by_cases! h : j < p.natDegree
  · rw [coeff_scaleRoots]
    refine (dvd_mul_of_dvd_right ?_ _).mul_right _
    convert! pow_dvd_pow (den A r : A) (Nat.succ_le_iff.mpr (lt_tsub_iff_left.mpr _))
    · exact (pow_one _).symm
    simpa using h
  rw [← natDegree_scaleRoots p (den A r)] at *
  rw [coeff_eq_zero_of_natDegree_lt (lt_of_le_of_ne h hj.symm),
    zero_mul]
  exact dvd_zero _

/-- **Integral root theorem**:
if `r : f.codomain` is a root of a monic polynomial over the ufd `A`,
then `r` is an integer -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RationalRoot/Variantdbbf8fa75739d968b904c3711d3e678a9122bcbaecf5140b2993bea1b2feedf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RationalRoot/Variantdbbf8fa75739d968b904c3711d3e678a9122bcbaecf5140b2993bea1b2feedf9.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30f454c62e1b3680503cb4ad2914c2e197804719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
