# polynomialKernel_cleared_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41c6f56a-cb02-f6c3-723f-0f5a92a7b69d",
  "kind": "lemma",
  "lexical_name": "polynomialKernel_cleared_tendsto",
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
  "slug": "polynomialkernel-cleared-tendsto--f458927fd7b3a75de5a73614",
  "source": {
    "blob": "dd7b72755e2d4d4cd5e96c5a0e4270cac5daf3ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variantff78814ba54866e9548c7061448cea7956ac4920e9c4175dd1c7b0e26242fde4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f458927fd7b3a75de5a7361455147f4ba94f4ceb63fb2a56e57c1da0076b3a6b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleCertificate/Variantff78814ba54866e9548c7061448cea7956ac4920e9c4175dd1c7b0e26242fde4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41c6f56a-cb02-f6c3-723f-0f5a92a7b69d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma polynomialKernel_cleared_tendsto
    (p : ℂ[X]) :
    Tendsto
      (fun w : ℂ ↦ w ^ 9 * polynomialKernel p w)
      (𝓝[≠] 0)
      (𝓝 (p.coeff 8 * (Nat.factorial 8 : ℂ))) := by
  have hl :
      ∀ k ∈ Finset.range 8,
        Tendsto
          (fun w : ℂ ↦
            p.coeff k * (w ^ 9 * J k w))
          (𝓝[≠] 0) (𝓝 0) := by
    intro k hk
    simpa only [mul_zero] using
      (J_lower_cleared_tendsto k 8
        (Finset.mem_range.mp hk)).const_mul (p.coeff k)
  have hsum := tendsto_finsetSum (Finset.range 8) hl
  simp only [Finset.sum_const_zero] at hsum
  have ht :=
    hsum.add ((J_cleared_tendsto 8).const_mul (p.coeff 8))
  simp only [zero_add] at ht
  convert ht using 1
  funext w
  unfold polynomialKernel
  rw [Finset.sum_range_succ, mul_add, Finset.mul_sum]
  congr 1
  · apply Finset.sum_congr rfl
    intro k _
    ring
  · ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variantff78814ba54866e9548c7061448cea7956ac4920e9c4175dd1c7b0e26242fde4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variantff78814ba54866e9548c7061448cea7956ac4920e9c4175dd1c7b0e26242fde4.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd7b72755e2d4d4cd5e96c5a0e4270cac5daf3ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
