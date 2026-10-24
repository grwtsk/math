# restricted_cell_fubini_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "945751b8e4e1086821b5cea2d898f7a63d780c7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99d1b7fb-c6b9-611b-ff30-788a44afd54b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6424b6bf-ae9d-b290-be46-30f22ea27fcb",
  "kind": "theorem",
  "lexical_name": "restricted_cell_fubini_factorization",
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
  "slug": "restricted-cell-fubini-factorization--b9f1a2eb13900fb3b24b6cd1",
  "source": {
    "blob": "945751b8e4e1086821b5cea2d898f7a63d780c7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/01SourceRestrictedLowTimeWork/Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9f1a2eb13900fb3b24b6cd1c8a912c905af45e5f7795c7b9bf846cf7d6c9666",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/01SourceRestrictedLowTimeWork/Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6424b6bf-ae9d-b290-be46-30f22ea27fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restricted_cell_fubini_factorization
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) (S : Set ℝ) :
    (∫ v in S, timeRow r l b v * cellRow r k v) =
      ∫ t in l..b, ∫ u in k..(k + 1), ∫ v in S,
        errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u)) := by
  let μt := volume.restrict (Ioc l b)
  let μu := volume.restrict (Ioc k (k + 1))
  let μv := volume.restrict S
  have hf := actual39_cell_kernel_restricted_integrable r hc hlb hk hs S
  have hout := integral_prod
    (fun z : ℝ × ℝ => ∫ v, sourceCellKernel r (z, v) ∂μv) hf.integral_prod_left
  have hswap := integral_integral_swap
    (f := fun z : ℝ × ℝ => fun v : ℝ => sourceCellKernel r (z, v)) hf
  symm
  dsimp only [timeRow, cellRow, SourceActualMixedWorkFubini.profileX,
    SourceActualMixedWorkFubini.profileYCell]
  simp only [intervalIntegral.integral_of_le hlb,
    intervalIntegral.integral_of_le (le_add_of_nonneg_right (by norm_num : (0 : ℝ) ≤ 1))]
  change (∫ t, (∫ u, (∫ v, sourceCellKernel r ((t, u), v) ∂μv) ∂μu) ∂μt) =
    ∫ v, (∫ t, errorWeight t * r (v - t) ∂μt) *
      (∫ u, r (v + Real.log u) / (u * Real.sqrt u) ∂μu) ∂μv
  rw [← hout, hswap]
  apply integral_congr_ae
  filter_upwards [] with v
  exact integral_prod_mul
    (fun t : ℝ => errorWeight t * r (v - t))
    (fun u : ℝ => r (v + Real.log u) / (u * Real.sqrt u))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/01SourceRestrictedLowTimeWork/Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/01SourceRestrictedLowTimeWork/Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `945751b8e4e1086821b5cea2d898f7a63d780c7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
