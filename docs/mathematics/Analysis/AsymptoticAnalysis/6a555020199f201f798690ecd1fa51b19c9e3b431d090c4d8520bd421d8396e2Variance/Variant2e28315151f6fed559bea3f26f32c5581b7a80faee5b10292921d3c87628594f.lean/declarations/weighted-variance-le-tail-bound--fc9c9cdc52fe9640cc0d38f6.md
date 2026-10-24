# weighted_variance_le_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f40fba0-a4bf-68a2-60ec-7d23200ec12e",
  "kind": "lemma",
  "lexical_name": "weighted_variance_le_tail_bound",
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
  "slug": "weighted-variance-le-tail-bound--fc9c9cdc52fe9640cc0d38f6",
  "source": {
    "blob": "8563d1407330c64fe8d36fb9e9c6fe90fc4e00d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 45,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2Variance/Variant2e28315151f6fed559bea3f26f32c5581b7a80faee5b10292921d3c87628594f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc9c9cdc52fe9640cc0d38f668c9feb490aeadfd02f13e2601caeef86bf9af86",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2Variance/Variant2e28315151f6fed559bea3f26f32c5581b7a80faee5b10292921d3c87628594f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f40fba0-a4bf-68a2-60ec-7d23200ec12e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma weighted_variance_le_tail_bound {p g b : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n)^2))
    (hp1 : ∑' n, p n = 1) (hb : Summable b) (K : ℝ)
    (hbound : ∀ n, p (n+1)*(g (n+1)-g 0)^2 ≤ K*b n) :
    (∑' n, p n*(g n-(∑' i, p i*g i))^2) ≤ K*(∑' n, b n) := by
  have hs := weighted_sub_sq_summable hp hg hg2 (g 0)
  have hshift : Summable (fun n => p (n+1)*(g (n+1)-g 0)^2) :=
    (summable_nat_add_iff 1).mpr hs
  calc
    _ ≤ ∑' n, p n*(g n-g 0)^2 := weighted_variance_le_center hp hg hg2 hp1 _
    _ = ∑' n, p (n+1)*(g (n+1)-g 0)^2 := by
      rw [hs.tsum_eq_zero_add]
      simp
    _ ≤ ∑' n, K*b n := hshift.tsum_le_tsum hbound (hb.mul_left K)
    _ = _ := tsum_mul_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2Variance/Variant2e28315151f6fed559bea3f26f32c5581b7a80faee5b10292921d3c87628594f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2Variance/Variant2e28315151f6fed559bea3f26f32c5581b7a80faee5b10292921d3c87628594f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8563d1407330c64fe8d36fb9e9c6fe90fc4e00d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
