# exp_add_of_commute_of_mem_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6526b78e-a779-c2c3-e895-4f66b295914d",
  "kind": "theorem",
  "lexical_name": "exp_add_of_commute_of_mem_ball",
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
  "slug": "exp-add-of-commute-of-mem-ball--5e86fddeba0b1698863204dc",
  "source": {
    "blob": "dc9f9edd4a6d48a5baf0e9ceec0ec7b50cdaf42d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 346,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Varianta43ea8a161750ed4bfe00817b3c8788a7110a3685c0b2f6dc072de832fda584e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e86fddeba0b1698863204dc2280217464536060ab991ea356ae5c3945d8976d",
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

Occurrence: `result:6526b78e-a779-c2c3-e895-4f66b295914d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_add_of_commute_of_mem_ball [CharZero 𝕂] {x y : 𝔸} (hxy : Commute x y)
    (hx : x ∈ Metric.eball (0 : 𝔸) (expSeries 𝕂 𝔸).radius)
    (hy : y ∈ Metric.eball (0 : 𝔸) (expSeries 𝕂 𝔸).radius) : exp (x + y) = exp x * exp y := by
  rw [exp_eq_tsum 𝕂,
    tsum_mul_tsum_eq_tsum_sum_antidiagonal_of_summable_norm
      (norm_expSeries_summable_of_mem_ball' x hx) (norm_expSeries_summable_of_mem_ball' y hy)]
  dsimp only
  conv_lhs =>
    congr
    ext
    rw [hxy.add_pow' _, Finset.smul_sum]
  refine tsum_congr fun n => Finset.sum_congr rfl fun kl hkl => ?_
  rw [← Nat.cast_smul_eq_nsmul 𝕂, smul_smul, smul_mul_smul_comm, ← Finset.mem_antidiagonal.mp hkl,
    Nat.cast_add_choose, Finset.mem_antidiagonal.mp hkl]
  field_simp [n.factorial_ne_zero]

/-- `NormedSpace.exp x` has explicit two-sided inverse `NormedSpace.exp (-x)`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exponential/Varianta43ea8a161750ed4bfe00817b3c8788a7110a3685c0b2f6dc072de832fda584e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Varianta43ea8a161750ed4bfe00817b3c8788a7110a3685c0b2f6dc072de832fda584e.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc9f9edd4a6d48a5baf0e9ceec0ec7b50cdaf42d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
