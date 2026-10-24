# energy_to_geometric_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fbe6c67-e644-b9af-5b32-baa5810b5c2c",
  "kind": "theorem",
  "lexical_name": "energy_to_geometric_bound",
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
  "slug": "energy-to-geometric-bound--442e9341f15c5660437063d6",
  "source": {
    "blob": "4476090f7cdaa4ac900e5ef988877bc3f7f56cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 76,
    "path": "GRWTSK/NumberTheory/VonMangoldt/DyadicMellinConvergence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:442e9341f15c5660437063d6876b3e46cfbe9e40a0175e6c33e2e8ae4e98b5d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fbe6c67-e644-b9af-5b32-baa5810b5c2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_to_geometric_bound {X : ℕ} (hX : 0 < X)
    {s : ℂ} {σ η C M : ℝ} (hC : 0 ≤ C) (hM : 0 ≤ M)
    (hs : ‖s‖ ≤ M) (hσ : σ ≤ s.re)
    (hE : augmentedEnergy X ≤ C*Real.exp ((-1+η)*Real.log X)) :
    ‖dirichletBlock X s‖ ≤
      (Real.sqrt C*Real.sqrt (radiusBudget M))*
        Real.exp (-(σ-1/2-η/2)*Real.log X) := by
  have hlog : 0 ≤ Real.log (X:ℝ) := Real.log_nonneg (by exact_mod_cast hX)
  let q : ℝ := ((-1+η)/2)*Real.log X
  have hexpsq : (Real.exp q)^2 = Real.exp ((-1+η)*Real.log X) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    dsimp [q]
    ring
  have hrootsq : (Real.sqrt C*Real.exp q)^2 =
      C*Real.exp ((-1+η)*Real.log X) := by
    rw [mul_pow, Real.sq_sqrt hC, hexpsq]
  have hsqrt : Real.sqrt (augmentedEnergy X) ≤ Real.sqrt C*Real.exp q := by
    have hsq := Real.sq_sqrt (augmentedEnergy_nonneg X)
    have hp : 0 ≤ Real.sqrt C*Real.exp q := by positivity
    nlinarith [Real.sqrt_nonneg (augmentedEnergy X)]
  have hexp : Real.exp ((1-s.re)*Real.log X) ≤
      Real.exp ((1-σ)*Real.log X) := by
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right (by linarith) hlog
  calc
    ‖dirichletBlock X s‖ ≤ Real.exp ((1-s.re)*Real.log X)*
        (Real.sqrt (augmentedEnergy X)*Real.sqrt (radiusBudget M)) :=
      dirichletBlock_norm_bound hX hM hs
    _ ≤ Real.exp ((1-σ)*Real.log X)*
        ((Real.sqrt C*Real.exp q)*Real.sqrt (radiusBudget M)) := by
      exact mul_le_mul hexp
        (mul_le_mul_of_nonneg_right hsqrt (Real.sqrt_nonneg _))
        (by positivity) (Real.exp_pos _).le
    _ = _ := by
      calc
        _ = (Real.sqrt C*Real.sqrt (radiusBudget M))*
            (Real.exp ((1-σ)*Real.log X)*Real.exp q) := by ring
        _ = _ := by
          rw [← Real.exp_add]
          congr 2
          dsimp [q]
          ring

/-- A summable uniform majorant for the literal source blocks on a bounded
right-half-plane region. It includes the finite early prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/DyadicMellinConvergence.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4476090f7cdaa4ac900e5ef988877bc3f7f56cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
