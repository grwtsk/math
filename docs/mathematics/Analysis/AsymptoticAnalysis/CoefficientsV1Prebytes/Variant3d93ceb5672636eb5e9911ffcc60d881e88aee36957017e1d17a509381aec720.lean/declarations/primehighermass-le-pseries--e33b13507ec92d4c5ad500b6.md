# primeHigherMass_le_pseries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e440331f-ef78-3766-ff77-4aea2cbd29e5",
  "kind": "theorem",
  "lexical_name": "primeHigherMass_le_pseries",
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
  "slug": "primehighermass-le-pseries--e33b13507ec92d4c5ad500b6",
  "source": {
    "blob": "b1d0db60cee1cde860963917818e06d8b5d6bd9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 149,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CoefficientsV1Prebytes/Variant3d93ceb5672636eb5e9911ffcc60d881e88aee36957017e1d17a509381aec720.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e33b13507ec92d4c5ad500b60a289e8c9a03b68f3ad415b49c403151c792c668",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CoefficientsV1Prebytes/Variant3d93ceb5672636eb5e9911ffcc60d881e88aee36957017e1d17a509381aec720.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e440331f-ef78-3766-ff77-4aea2cbd29e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeHigherMass_le_pseries (p : Nat.Primes) :
    primeHigherMass p ≤ 16 * ((p : ℕ) : ℝ) ^ (-(5 : ℝ) / 4) := by
  have hp0 : 0 < ((p : ℕ) : ℝ) := by exact_mod_cast p.property.pos
  have hp1 : (1 : ℝ) ≤ (p : ℕ) := by exact_mod_cast p.property.one_le
  have hl := Real.log_nonneg hp1
  have hr := primeRatio_nonneg p
  have hi : (1 - primeRatio p)⁻¹ ≤ 4 := by
    rw [inv_le_iff_one_le_mul₀ (by linarith [primeRatio_le_three_quarters p] :
      0 < 1 - primeRatio p)]
    linarith [primeRatio_le_three_quarters p]
  have hlog := Real.log_le_rpow_div hp0.le (by norm_num : (0 : ℝ) < 1 / 4)
  calc
    primeHigherMass p ≤ Real.log ((p : ℕ) : ℝ) * primeRatio p ^ 3 * 4 :=
      mul_le_mul_of_nonneg_left hi (mul_nonneg hl (pow_nonneg hr 3))
    _ ≤ (((p : ℕ) : ℝ) ^ ((1 : ℝ) / 4) / (1 / 4)) * primeRatio p ^ 3 * 4 :=
      mul_le_mul_of_nonneg_right hlog (by positivity)
    _ = 16 * ((p : ℕ) : ℝ) ^ (-(5 : ℝ) / 4) := by
      unfold primeRatio
      rw [← Real.rpow_mul_natCast hp0.le]
      have he : ((p : ℕ) : ℝ) ^ ((1 : ℝ) / 4) *
          ((p : ℕ) : ℝ) ^ ((-(1 : ℝ) / 2) * (3 : ℕ)) =
          ((p : ℕ) : ℝ) ^ (-(5 : ℝ) / 4) := by
        rw [← Real.rpow_add hp0]
        congr 1
        norm_num
      calc
        _ = 16 * (((p : ℕ) : ℝ) ^ ((1 : ℝ) / 4) *
            ((p : ℕ) : ℝ) ^ ((-(1 : ℝ) / 2) * (3 : ℕ))) := by ring
        _ = _ := by rw [he]

/-- Restricting the established all-natural p-series to prime bases preserves summability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CoefficientsV1Prebytes/Variant3d93ceb5672636eb5e9911ffcc60d881e88aee36957017e1d17a509381aec720.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CoefficientsV1Prebytes/Variant3d93ceb5672636eb5e9911ffcc60d881e88aee36957017e1d17a509381aec720.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1d0db60cee1cde860963917818e06d8b5d6bd9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
