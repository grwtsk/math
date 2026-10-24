# cumulative_at_grid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e17d5b21-097c-ac3f-7cb2-184259bf48dd",
  "kind": "theorem",
  "lexical_name": "cumulative_at_grid",
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
  "slug": "cumulative-at-grid--34cd4ebaf1a0df46babe96aa",
  "source": {
    "blob": "9d0848b6c414d19057d9738771f5225587186cd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 172,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34cd4ebaf1a0df46babe96aa4f49de6fcc342f2557a0d631952bc0abefeae4eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e17d5b21-097c-ac3f-7cb2-184259bf48dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cumulative_at_grid
    {X m : ℕ} (hX : 0 < X)
    (_hXm : X ≤ m) (hm2X : m ≤ 2 * X) :
    cumulative X (location X m) =
      (∑ n ∈ Finset.Ioc X m, coefficient n) -
        Real.log ((m : ℝ) / (X : ℝ)) := by
  have hfilter :
      (window X).filter (fun n => n ≤ m) =
        Finset.Ioc X m := by
    ext n
    simp [window]
    omega
  unfold cumulative
  have hsum :
      (∑ n ∈ window X,
          coefficient n * step (location X n) (location X m)) =
        ∑ n ∈ Finset.Ioc X m, coefficient n := by
    simp_rw [step_location_location hX]
    simp only [mul_ite, mul_one, mul_zero]
    rw [← Finset.sum_filter]
    simp [hfilter]
  rw [hsum]
  unfold logarithm location
  rw [show 1 + ((m : ℝ) / (X : ℝ) - 1) =
      (m : ℝ) / (X : ℝ) by ring]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d0848b6c414d19057d9738771f5225587186cd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
