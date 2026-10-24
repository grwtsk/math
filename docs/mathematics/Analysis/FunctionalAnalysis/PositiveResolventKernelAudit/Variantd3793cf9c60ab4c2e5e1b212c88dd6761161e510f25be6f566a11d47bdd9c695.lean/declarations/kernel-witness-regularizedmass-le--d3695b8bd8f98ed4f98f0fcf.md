# kernel_witness_regularizedMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a49898e110bb584e6d5d4e52760e9a658d6fa62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5cffa10-148d-6c83-4786-aec72896dd48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af310f09-21b8-ec01-d14e-679640562fb3",
  "kind": "theorem",
  "lexical_name": "kernel_witness_regularizedMass_le",
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
  "slug": "kernel-witness-regularizedmass-le--d3695b8bd8f98ed4f98f0fcf",
  "source": {
    "blob": "2a49898e110bb584e6d5d4e52760e9a658d6fa62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 231,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3695b8bd8f98ed4f98f0fcf8acbf5cc445747e35489fbe11de727d4d419d98e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af310f09-21b8-ec01-d14e-679640562fb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_witness_regularizedMass_le (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (r e : E) (he : e ≠ 0) (hSe : S e = 0) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤ regularizedMass S α r := by
  have hp : ((α : ℂ) • positiveResolvent S α).IsPositive :=
    (positiveResolvent_isPositive S hS α hα).smul_of_nonneg (by exact_mod_cast hα.le)
  have h := positive_fixed_direction_le _ hp r e he
    (regularized_resolvent_kernel_apply S hS α hα e hSe)
  simpa only [regularizedMass, smul_apply, inner_smul_right, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using h

end PositiveResolventScratch


set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @PositiveResolventScratch.positive_fixed_direction_le
#print PositiveResolventScratch.positive_fixed_direction_le
#print axioms PositiveResolventScratch.positive_fixed_direction_le
#check @PositiveResolventScratch.regularized_resolvent_kernel_apply
#print PositiveResolventScratch.regularized_resolvent_kernel_apply
#print axioms PositiveResolventScratch.regularized_resolvent_kernel_apply
#check @PositiveResolventScratch.kernel_witness_regularizedMass_le
#print PositiveResolventScratch.kernel_witness_regularizedMass_le
#print axioms PositiveResolventScratch.kernel_witness_regularizedMass_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a49898e110bb584e6d5d4e52760e9a658d6fa62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
