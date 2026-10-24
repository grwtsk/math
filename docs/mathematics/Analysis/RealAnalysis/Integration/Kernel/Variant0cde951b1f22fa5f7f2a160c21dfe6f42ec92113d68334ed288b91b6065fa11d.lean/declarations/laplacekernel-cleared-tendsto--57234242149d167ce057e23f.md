# laplaceKernel_cleared_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d3e56782820eb272f935a426b620923282a6d0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed7d9e63-b37a-5bfd-4e01-49b273d91de5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9b22cea-0863-7225-10c8-8caaa37fb05b",
  "kind": "lemma",
  "lexical_name": "laplaceKernel_cleared_tendsto",
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
  "slug": "laplacekernel-cleared-tendsto--57234242149d167ce057e23f",
  "source": {
    "blob": "5d3e56782820eb272f935a426b620923282a6d0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 385,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57234242149d167ce057e23f81b48b759b8fe5af0824e90d85843db87ca3a385",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9b22cea-0863-7225-10c8-8caaa37fb05b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma laplaceKernel_cleared_tendsto
    (k : ℕ) :
    Tendsto
      (fun w : ℂ ↦ w ^ (k + 1) * laplaceKernel k w)
      (𝓝[≠] 0) (𝓝 k.factorial) := by
  have hc :
      ContinuousAt
        (fun w : ℂ ↦ Complex.exp (-w) * kernelNumerator k w) 0 :=
    (Complex.continuous_exp.continuousAt.comp
      continuousAt_id.neg).mul
      (kernelNumerator_analytic k 0).continuousAt
  have h :=
    hc.tendsto.mono_left
      (nhdsWithin_le_nhds (s := {0}ᶜ))
  simp only [neg_zero, Complex.exp_zero, one_mul,
    kernelNumerator_at_zero] at h
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with w hw
  exact (laplaceKernel_cleared k w hw).symm

/-- Source-syntax principal-part statement: after clearing order `k+1`,
`J_k` tends to the nonzero coefficient `k!`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d3e56782820eb272f935a426b620923282a6d0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
