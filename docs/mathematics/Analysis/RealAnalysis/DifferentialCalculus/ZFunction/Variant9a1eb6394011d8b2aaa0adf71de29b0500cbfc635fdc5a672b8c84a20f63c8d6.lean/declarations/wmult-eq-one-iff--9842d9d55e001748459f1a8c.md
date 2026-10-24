# wMult_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d477d107-8ce6-8899-5b30-6c5dc25edd75",
  "kind": "theorem",
  "lexical_name": "wMult_eq_one_iff",
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
  "slug": "wmult-eq-one-iff--9842d9d55e001748459f1a8c",
  "source": {
    "blob": "7d4fb99b259b95ad9dd35d18a3572d23786ddc59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 312,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9842d9d55e001748459f1a8c6d953bd88e0c7c29cb4751095fef4a642db9e4dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d477d107-8ce6-8899-5b30-6c5dc25edd75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wMult_eq_one_iff {s : ℂ} (hs : s.im ≠ 0) : wMult s = 1 ↔ hardyW s = 0 ∧ deriv hardyW s ≠ 0 := by
  have hA := hardyW_analyticAt hs
  have key := hA.analyticOrderAt_deriv_add_one
  unfold wMult
  constructor
  · intro h
    have hne : analyticOrderAt hardyW s ≠ 0 := by
      intro h0; rw [h0] at h; simp at h
    have h0 : hardyW s = 0 := apply_eq_zero_of_analyticOrderAt_ne_zero hne
    refine ⟨h0, ?_⟩
    have hfin : analyticOrderAt hardyW s = 1 := by
      have hnt : analyticOrderAt hardyW s ≠ ⊤ := by intro ht; rw [ht] at h; simp at h
      lift analyticOrderAt hardyW s to ℕ using hnt with n hn
      simp at h; exact_mod_cast h
    have e : (fun z => hardyW z - hardyW s) = hardyW := by funext z; rw [h0, sub_zero]
    rw [e, hfin] at key
    have hd0 : analyticOrderAt (deriv hardyW) s = 0 := by
      by_contra hne0
      have h1 : (1 : ℕ∞) ≤ analyticOrderAt (deriv hardyW) s := ENat.one_le_iff_ne_zero.mpr hne0
      have h2 : (1 : ℕ∞) + 1 ≤ analyticOrderAt (deriv hardyW) s + 1 := add_le_add h1 le_rfl
      rw [key] at h2
      exact absurd h2 (by decide)
    rw [AnalyticAt.analyticOrderAt_eq_zero hA.deriv] at hd0
    exact hd0
  · rintro ⟨h0, hd⟩
    have e : (fun z => hardyW z - hardyW s) = hardyW := by funext z; rw [h0, sub_zero]
    rw [e] at key
    have hd0 : analyticOrderAt (deriv hardyW) s = 0 := (AnalyticAt.analyticOrderAt_eq_zero hA.deriv).mpr hd
    rw [hd0, zero_add] at key
    rw [← key]; rfl

/-! ## 4. The Z′ form of the headline -/

/-- the stationary points of Z in (T, 2T] with Z″ ≠ 0, as a set of reals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4fb99b259b95ad9dd35d18a3572d23786ddc59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
