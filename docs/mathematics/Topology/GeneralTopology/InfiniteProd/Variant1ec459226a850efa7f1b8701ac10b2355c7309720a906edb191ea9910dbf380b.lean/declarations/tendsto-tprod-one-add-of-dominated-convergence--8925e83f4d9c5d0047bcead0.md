# tendsto_tprod_one_add_of_dominated_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b73cda2-c156-736e-f9c2-e519a64a84ed",
  "kind": "theorem",
  "lexical_name": "tendsto_tprod_one_add_of_dominated_convergence",
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
  "slug": "tendsto-tprod-one-add-of-dominated-convergence--8925e83f4d9c5d0047bcead0",
  "source": {
    "blob": "eb548f7813fb9ee54f0b9443df51ed8cef92676b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/InfiniteProd/Variant1ec459226a850efa7f1b8701ac10b2355c7309720a906edb191ea9910dbf380b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8925e83f4d9c5d0047bcead0dfb4dfa71b65e1a6c2cd68a3b6459d01557025bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/InfiniteProd/Variant1ec459226a850efa7f1b8701ac10b2355c7309720a906edb191ea9910dbf380b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b73cda2-c156-736e-f9c2-e519a64a84ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem tendsto_tprod_one_add_of_dominated_convergence {𝓕 : Filter α} {f : α → β → R}
    (h_sum : Summable bound) (hab : ∀ k, Tendsto (f · k) 𝓕 (𝓝 (g k)))
    (h_bound : ∀ᶠ n in 𝓕, ∀ k, ‖f n k‖ ≤ bound k) :
    Tendsto (fun n ↦ ∏' k, (1 + f n k)) 𝓕 (𝓝 (∏' k, (1 + g k))) := by
  rcases eq_or_neBot 𝓕 with rfl | _
  · simp
  have h_bound_g (k) : ‖g k‖ ≤ bound k :=
    le_of_tendsto ((hab k).norm) (h_bound.mono fun n hn ↦ hn k)
  have hsum_g : Summable (‖g ·‖) := h_sum.of_nonneg_of_le (fun _ ↦ norm_nonneg _) h_bound_g
  rw [show ∏' k, (1 + g k) = ∑' s, ∏ i ∈ s, g i from
    tprod_one_add (summable_finsetProd_of_summable_norm hsum_g)]
  have : Tendsto (∑' k, ∏ c ∈ k, f · c) 𝓕 (𝓝 (∑' k, ∏ c ∈ k, g c)) :=
    tendsto_tsum_of_dominated_convergence (summable_finsetProd_of_summable_nonneg
      (fun i ↦ (norm_nonneg (g i)).trans (h_bound_g i)) h_sum)
      (tendsto_finsetProd · fun i _ ↦ hab i)
      (h_bound.mono fun n hn s ↦ (Finset.norm_prod_le s (f n)).trans
      (Finset.prod_le_prod₀ (by grind) (by grind)))
  apply this.congr' (h_bound.mono fun n hn ↦ ?_)
  rw [tprod_one_add]
  exact summable_finsetProd_of_summable_norm <| h_sum.of_nonneg_of_le (by grind) hn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/InfiniteProd/Variant1ec459226a850efa7f1b8701ac10b2355c7309720a906edb191ea9910dbf380b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/InfiniteProd/Variant1ec459226a850efa7f1b8701ac10b2355c7309720a906edb191ea9910dbf380b.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb548f7813fb9ee54f0b9443df51ed8cef92676b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
