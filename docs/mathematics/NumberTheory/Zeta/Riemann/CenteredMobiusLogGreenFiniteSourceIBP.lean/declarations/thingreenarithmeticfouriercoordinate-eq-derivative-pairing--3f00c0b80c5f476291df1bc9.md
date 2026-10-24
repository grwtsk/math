# thinGreenArithmeticFourierCoordinate_eq_derivative_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b84860e2-5e39-1205-0b57-e83e665cdc9b",
  "kind": "theorem",
  "lexical_name": "thinGreenArithmeticFourierCoordinate_eq_derivative_pairing",
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
  "slug": "thingreenarithmeticfouriercoordinate-eq-derivative-pairing--3f00c0b80c5f476291df1bc9",
  "source": {
    "blob": "54a21778cccb46f7155d335ce31e3628953475a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f00c0b80c5f476291df1bc974f7b10712ad962f2d6e330d687bf55d84a6ef03",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b84860e2-5e39-1205-0b57-e83e665cdc9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thinGreenArithmeticFourierCoordinate_eq_derivative_pairing
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0) :
    thinGreenArithmeticFourierCoordinate X k =
      ∫ t in (0 : ℝ)..1,
        thinHistoricalGreenResidual X t * thinFourierSlope k t := by
  unfold thinHistoricalGreenResidual
  rw [cumulative_eq_atomic_sub_log]
  have hloc : ∀ n ∈ centeredGreenWindow X,
      0 ≤ centeredGreenLocation X n ∧ centeredGreenLocation X n ≤ 1 := by
    intro n hn
    unfold centeredGreenWindow centeredGreenLocation at *
    have hnI := Finset.mem_Ioc.mp hn
    have hXr : (0 : ℝ) < X := by exact_mod_cast hX
    constructor
    · have hnR : (X : ℝ) < n := by exact_mod_cast hnI.1
      have : 1 ≤ (n : ℝ) / X := (one_le_div hXr).mpr hnR.le
      linarith
    · have hnR : (n : ℝ) ≤ 2 * X := by exact_mod_cast hnI.2
      have : (n : ℝ) / X ≤ 2 := (div_le_iff₀ hXr).2 (by linarith)
      linarith
  rw [intervalIntegral.integral_sub, intervalIntegral.integral_sub]
  have hatom :
      (∫ t in (0 : ℝ)..1,
        (thinHistoricalAtomicCumulative X t : ℂ) * thinFourierSlope k t) =
      - centeredGreenPrimeCoordinate X (fourierModeValue k) := by
    unfold thinHistoricalAtomicCumulative centeredGreenPrimeCoordinate
    rw [intervalIntegral.integral_finset_sum]
    apply Finset.sum_congr rfl
    intro n hn
    rw [intervalIntegral.integral_const_mul,
      integral_step_mul_thinFourierSlope hk (hloc n hn).1 (hloc n hn).2]
    ring
  have hlog := integral_log_mul_thinFourierSlope hk
  have hcenter := integral_const_mul_thinFourierSlope_zero hk (center X)
  rw [hatom, hlog, hcenter]
  unfold thinGreenArithmeticFourierCoordinate
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54a21778cccb46f7155d335ce31e3628953475a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
