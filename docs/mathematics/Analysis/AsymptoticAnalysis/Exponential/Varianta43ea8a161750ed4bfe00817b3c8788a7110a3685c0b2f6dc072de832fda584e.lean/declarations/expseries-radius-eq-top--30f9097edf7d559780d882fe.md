# expSeries_radius_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57a83332-601f-5c32-f86f-a4297a80be35",
  "kind": "theorem",
  "lexical_name": "expSeries_radius_eq_top",
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
  "slug": "expseries-radius-eq-top--30f9097edf7d559780d882fe",
  "source": {
    "blob": "dc9f9edd4a6d48a5baf0e9ceec0ec7b50cdaf42d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 459,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Varianta43ea8a161750ed4bfe00817b3c8788a7110a3685c0b2f6dc072de832fda584e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30f9097edf7d559780d882feddf7097947210d8713299b5ff4b35153f3bc1de9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exponential/Varianta43ea8a161750ed4bfe00817b3c8788a7110a3685c0b2f6dc072de832fda584e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57a83332-601f-5c32-f86f-a4297a80be35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expSeries_radius_eq_top : (expSeries 𝕂 𝔸).radius = ∞ := by
  have {n : ℕ} : (Nat.factorial n : 𝕂) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
  apply expSeries_eq_ofScalars 𝕂 𝔸 ▸
    ofScalars_radius_eq_top_of_tendsto 𝔸 _ (Eventually.of_forall fun n => ?_)
  · simp_rw [← norm_div, Nat.factorial_succ, Nat.cast_mul, mul_inv_rev, mul_div_right_comm,
      inv_div_inv, norm_mul, div_self this, norm_one, one_mul]
    apply norm_zero (E := 𝕂) ▸ Filter.Tendsto.norm
    apply (Filter.tendsto_add_atTop_iff_nat (f := fun n => (n : 𝕂)⁻¹) 1).mpr
    exact tendsto_inv_atTop_nhds_zero_nat
  · simp [this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exponential/Varianta43ea8a161750ed4bfe00817b3c8788a7110a3685c0b2f6dc072de832fda584e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Varianta43ea8a161750ed4bfe00817b3c8788a7110a3685c0b2f6dc072de832fda584e.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc9f9edd4a6d48a5baf0e9ceec0ec7b50cdaf42d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
