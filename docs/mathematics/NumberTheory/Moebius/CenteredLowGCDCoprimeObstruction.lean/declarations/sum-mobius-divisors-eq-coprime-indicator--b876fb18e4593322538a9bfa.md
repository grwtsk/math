# sum_mobius_divisors_eq_coprime_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2636dd3-0ea8-def7-e323-232322eb94e7",
  "kind": "theorem",
  "lexical_name": "sum_mobius_divisors_eq_coprime_indicator",
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
  "slug": "sum-mobius-divisors-eq-coprime-indicator--b876fb18e4593322538a9bfa",
  "source": {
    "blob": "f588503b27f220eb0bd5d192fcc8c14fa76128a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 96,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b876fb18e4593322538a9bfafdf5530a838e2556428ac367ecfcdef18465475a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2636dd3-0ea8-def7-e323-232322eb94e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mobius_divisors_eq_coprime_indicator
    (a b : ℕ) :
    (∑ r ∈ (Nat.gcd a b).divisors, mobiusReal r) =
      if Nat.Coprime a b then 1 else 0 := by
  by_cases hcop : Nat.Coprime a b
  · have hg : Nat.gcd a b = 1 :=
      Nat.coprime_iff_gcd_eq_one.mp hcop
    simp [hg, mobiusReal]
  · have hg : Nat.gcd a b ≠ 1 := by
      exact fun h1 =>
        hcop (Nat.coprime_iff_gcd_eq_one.mpr h1)
    have h :=
      congrArg
        (fun f : ArithmeticFunction ℝ => f (Nat.gcd a b))
        (ArithmeticFunction.coe_moebius_mul_coe_zeta
          (R := ℝ))
    simpa only [ArithmeticFunction.coe_mul_zeta_apply,
      ArithmeticFunction.intCoe_apply, ArithmeticFunction.one_apply,
      if_neg hg, if_neg hcop, mobiusReal] using h

/-- The common-divisor Möbius sum can be taken over the global modulus set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f588503b27f220eb0bd5d192fcc8c14fa76128a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
