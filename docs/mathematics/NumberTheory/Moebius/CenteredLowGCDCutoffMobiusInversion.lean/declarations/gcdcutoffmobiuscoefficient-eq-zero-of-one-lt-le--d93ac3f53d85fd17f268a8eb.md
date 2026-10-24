# gcdCutoffMobiusCoefficient_eq_zero_of_one_lt_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b51729f4-8ddd-0505-23c3-ef935907d188",
  "kind": "theorem",
  "lexical_name": "gcdCutoffMobiusCoefficient_eq_zero_of_one_lt_le",
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
  "slug": "gcdcutoffmobiuscoefficient-eq-zero-of-one-lt-le--d93ac3f53d85fd17f268a8eb",
  "source": {
    "blob": "c3f545d399326589f9a8e0848dbf33ea1be7dcc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d93ac3f53d85fd17f268a8eb1e803b8c4974fa3991aa7f49e45e08eb8914ef87",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b51729f4-8ddd-0505-23c3-ef935907d188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcdCutoffMobiusCoefficient_eq_zero_of_one_lt_le
    {Y r : ℕ}
    (hr : 1 < r)
    (hrY : r ≤ Y) :
    gcdCutoffMobiusCoefficient Y r = 0 := by
  have hterm :
      ∀ p ∈ r.divisorsAntidiagonal,
        gcdCutoffIndicator Y p.2 = 1 := by
    intro p hp
    have hp2mem :=
      Nat.snd_mem_divisors_of_mem_antidiagonal hp
    have hp2pos := Nat.pos_of_mem_divisors hp2mem
    have hp2le := Nat.divisor_le hp2mem
    simp [gcdCutoffIndicator, hp2pos.ne',
      hp2le.trans hrY]
  have hconv :
      gcdCutoffMobiusCoefficient Y r =
        (((μ : ArithmeticFunction ℝ) *
          (ArithmeticFunction.zeta : ArithmeticFunction ℝ)) r) := by
    unfold gcdCutoffMobiusCoefficient
    rw [ArithmeticFunction.mul_apply,
      ArithmeticFunction.mul_apply]
    apply Finset.sum_congr rfl
    intro p hp
    rw [hterm p hp]
    have hp2mem :=
      Nat.snd_mem_divisors_of_mem_antidiagonal hp
    have hp2pos := Nat.pos_of_mem_divisors hp2mem
    simp [ArithmeticFunction.zeta_apply, hp2pos.ne']
  rw [hconv, ArithmeticFunction.coe_moebius_mul_coe_zeta]
  simp [hr.ne']

/-- The cutoff coefficients summed over common divisors give the exact
low-gcd indicator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f545d399326589f9a8e0848dbf33ea1be7dcc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
