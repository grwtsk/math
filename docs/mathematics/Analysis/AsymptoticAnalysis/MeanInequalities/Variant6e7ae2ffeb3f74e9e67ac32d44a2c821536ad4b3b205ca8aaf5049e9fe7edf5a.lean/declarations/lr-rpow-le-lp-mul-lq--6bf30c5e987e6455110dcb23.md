# Lr_rpow_le_Lp_mul_Lq

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
      "line": 872,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2314f578-3cf2-59cd-4b4f-5f8a21210860",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22efc030-4a1c-5a69-6ccf-5e2951688721",
  "kind": "theorem",
  "lexical_name": "Lr_rpow_le_Lp_mul_Lq",
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
  "slug": "lr-rpow-le-lp-mul-lq--6bf30c5e987e6455110dcb23",
  "source": {
    "blob": "a51ef7e20f031edb10a909dab7e2635871a819d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 872,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bf30c5e987e6455110dcb234dccdc773239abf38ca36c6cb68af7f376c7982b",
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

Occurrence: `result:22efc030-4a1c-5a69-6ccf-5e2951688721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 872–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Lr_rpow_le_Lp_mul_Lq (hpqr : HolderTriple p q r) :
    ∑ i ∈ s, |f i * g i| ^ r ≤ (∑ i ∈ s, |f i| ^ p) ^ (r / p) * (∑ i ∈ s, |g i| ^ q) ^ (r / q) := by
  simpa using! NNReal.coe_le_coe.2 <| NNReal.Lr_rpow_le_Lp_mul_Lq s (fun i ↦ ⟨_, abs_nonneg (f i)⟩)
    (fun i ↦ ⟨_, abs_nonneg (g i)⟩) hpqr

/-- **Hölder inequality**: the scalar product of two functions is bounded by the product of their
`L^p` and `L^q` norms when `p` and `q` are conjugate exponents. Version for sums over finite sets,
with real-valued functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean#L872).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a51ef7e20f031edb10a909dab7e2635871a819d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
