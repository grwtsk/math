# isZeroAt_of_coeffZero_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06977c9d-3422-da7b-59f8-fdb8f1ba99e2",
  "kind": "lemma",
  "lexical_name": "isZeroAt_of_coeffZero_eq_zero",
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
  "slug": "iszeroat-of-coeffzero-eq-zero--ecb9f5e280134b2b082baa05",
  "source": {
    "blob": "744d39b463246f970727dc9dfeb8df2d8f7fb191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 127,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variant8d01a7e010fd1c7a4eac62a0b81851c26d11817f99f2758036a5999194bd2305.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecb9f5e280134b2b082baa05933a5e7f136932c4e3d0f0d66adf40ce913f9672",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variant8d01a7e010fd1c7a4eac62a0b81851c26d11817f99f2758036a5999194bd2305.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06977c9d-3422-da7b-59f8-fdb8f1ba99e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isZeroAt_of_coeffZero_eq_zero (f : ModularForm 𝒮ℒ k)
    (h : (qExpansion 1 f).coeff 0 = 0) {c : OnePoint ℝ} (hc : IsCusp c 𝒮ℒ) :
    c.IsZeroAt f k := by
  rw [Subgroup.IsArithmetic.isCusp_iff_isCusp_SL2Z] at hc
  rw [isZeroAt_iff_forall_SL2Z hc]
  intro γ _
  rw [show (⇑f ∣[k] γ) = ⇑f from f.slash_action_eq' _ ⟨γ, rfl⟩]
  exact isZeroAtImInfty_of_valueAtInfty_eq_zero f <| by
    rwa [← qExpansion_coeff_zero one_pos
      (ModularFormClass.analyticAt_cuspFunction_zero f one_pos one_mem_strictPeriods_SL)
      (periodic_comp_ofComplex f one_mem_strictPeriods_SL)]

/-- Build a `CuspForm 𝒮ℒ k` from a `ModularForm 𝒮ℒ k` whose q-expansion has vanishing
constant term. The resulting cusp form has the same underlying function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variant8d01a7e010fd1c7a4eac62a0b81851c26d11817f99f2758036a5999194bd2305.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variant8d01a7e010fd1c7a4eac62a0b81851c26d11817f99f2758036a5999194bd2305.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744d39b463246f970727dc9dfeb8df2d8f7fb191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
