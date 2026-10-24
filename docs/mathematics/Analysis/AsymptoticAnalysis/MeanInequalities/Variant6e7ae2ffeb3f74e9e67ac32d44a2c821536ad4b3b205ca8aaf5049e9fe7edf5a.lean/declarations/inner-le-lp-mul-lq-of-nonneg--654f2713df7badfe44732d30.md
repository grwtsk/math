# inner_le_Lp_mul_Lq_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a51ef7e20f031edb10a909dab7e2635871a819d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 914,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff01e681-f886-3774-11e6-3c8f8bbf37ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:821f92f0-6e92-4c6a-76e7-4239499aec55",
  "kind": "theorem",
  "lexical_name": "inner_le_Lp_mul_Lq_of_nonneg",
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
  "slug": "inner-le-lp-mul-lq-of-nonneg--654f2713df7badfe44732d30",
  "source": {
    "blob": "a51ef7e20f031edb10a909dab7e2635871a819d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 922,
    "line": 914,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:654f2713df7badfe44732d3084485769cd59841bb47067a99beb03c67792d1ee",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:821f92f0-6e92-4c6a-76e7-4239499aec55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 914–922.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_le_Lp_mul_Lq_of_nonneg (hpq : HolderConjugate p q) (hf : ∀ i ∈ s, 0 ≤ f i)
    (hg : ∀ i ∈ s, 0 ≤ g i) :
    ∑ i ∈ s, f i * g i ≤ (∑ i ∈ s, f i ^ p) ^ (1 / p) * (∑ i ∈ s, g i ^ q) ^ (1 / q) := by
  convert! inner_le_Lp_mul_Lq s f g hpq using 3 <;> apply sum_congr rfl <;> intro i hi <;>
    simp only [abs_of_nonneg, hf i hi, hg i hi]

/-- **Hölder inequality**: the sum of (the `r`-power of) the product of two functions is bounded
by (the `r`-power of) the product of their `L^p` and `L^q` norms, when `p`, `q`, `r` form a
`Real.HolderTriple`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean#L914).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a51ef7e20f031edb10a909dab7e2635871a819d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
