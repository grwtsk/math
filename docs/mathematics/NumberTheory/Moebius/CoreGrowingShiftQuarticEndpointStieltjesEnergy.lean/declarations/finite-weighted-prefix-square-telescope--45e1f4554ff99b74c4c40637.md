# finite_weighted_prefix_square_telescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de0e1792-120f-44ae-6881-fc788fcd5215",
  "kind": "theorem",
  "lexical_name": "finite_weighted_prefix_square_telescope",
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
  "slug": "finite-weighted-prefix-square-telescope--45e1f4554ff99b74c4c40637",
  "source": {
    "blob": "b1bfa84eb99b3829a02980495e11decb5c0cf75b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 227,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45e1f4554ff99b74c4c406372e87a75796ad726970e4716d76215266d6e9f7e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de0e1792-120f-44ae-6881-fc788fcd5215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_weighted_prefix_square_telescope
    (c w : ℕ → ℝ) (N : ℕ)
    (hwN : w N = 0) :
    (∑ b ∈ Finset.range N, w b * c b ^ 2) +
        2 * (∑ b ∈ Finset.range N,
          w b * ((∑ a ∈ Finset.range b, c a) * c b)) =
      ∑ b ∈ Finset.range N,
        (w b - w (b + 1)) *
          (∑ a ∈ Finset.range (b + 1), c a) ^ 2 := by
  have hforward := finite_weighted_forward_difference
    w (fun b => (∑ a ∈ Finset.range b, c a) ^ 2) N (by simp)
  rw [hwN, zero_mul, add_zero] at hforward
  calc
    (∑ b ∈ Finset.range N, w b * c b ^ 2) +
        2 * (∑ b ∈ Finset.range N,
          w b * ((∑ a ∈ Finset.range b, c a) * c b)) =
      ∑ b ∈ Finset.range N,
        w b *
          (((∑ a ∈ Finset.range (b + 1), c a) ^ 2) -
            ((∑ a ∈ Finset.range b, c a) ^ 2)) := by
      rw [Finset.mul_sum, ← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro b _hb
      rw [Finset.sum_range_succ]
      ring
    _ = ∑ b ∈ Finset.range N,
        (w b - w (b + 1)) *
          (∑ a ∈ Finset.range (b + 1), c a) ^ 2 := hforward

/-- For one fixed shift, the explicit interval-weighted endpoint packet plus
its diagonal is exactly a nonnegative Stieltjes square function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bfa84eb99b3829a02980495e11decb5c0cf75b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
