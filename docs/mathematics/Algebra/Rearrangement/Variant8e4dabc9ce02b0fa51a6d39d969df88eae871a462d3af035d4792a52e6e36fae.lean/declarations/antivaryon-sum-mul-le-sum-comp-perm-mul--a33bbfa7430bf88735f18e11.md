# AntivaryOn.sum_mul_le_sum_comp_perm_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3dd2675-0621-bcb5-cf84-8ff7cf6f30d5",
  "kind": "theorem",
  "lexical_name": "AntivaryOn.sum_mul_le_sum_comp_perm_mul",
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
  "slug": "antivaryon-sum-mul-le-sum-comp-perm-mul--a33bbfa7430bf88735f18e11",
  "source": {
    "blob": "3304723ddbfd50f92976a5b4ba163534ba3cc337",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 422,
    "path": "GRWTSK/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a33bbfa7430bf88735f18e11ddce0b57a61c96f38b9d0397478ec9518b881481",
  "verification": {
    "reference": "docs/verification/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3dd2675-0621-bcb5-cf84-8ff7cf6f30d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AntivaryOn.sum_mul_le_sum_comp_perm_mul (hfg : AntivaryOn f g s)
    (hσ : {x | σ x ≠ x} ⊆ s) : ∑ i ∈ s, f i * g i ≤ ∑ i ∈ s, f (σ i) * g i :=
  hfg.sum_smul_le_sum_comp_perm_smul hσ

/-- **Equality case of the Rearrangement Inequality**: Pointwise multiplication of `f` and `g`,
which antivary together on `s`, is unchanged by a permutation if and only if `f ∘ σ` and `g`
antivary together on `s`. Stated by permuting the entries of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3304723ddbfd50f92976a5b4ba163534ba3cc337` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
