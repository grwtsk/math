# moebiusReal_add_toggle_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65e434db-7671-0abf-83b7-ad191954e283",
  "kind": "theorem",
  "lexical_name": "moebiusReal_add_toggle_eq_zero",
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
  "slug": "moebiusreal-add-toggle-eq-zero--4b1068943352592a9a981490",
  "source": {
    "blob": "1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 174,
    "path": "GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b1068943352592a9a9814904cdfc07b42e131fd7d9f7d8e10f6cf0d881850f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65e434db-7671-0abf-83b7-ad191954e283`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moebiusReal_add_toggle_eq_zero
    {m p d : ℕ} (hp : p.Prime)
    (hd : d ∈ squareDivisorMobiusSupport m) :
    moebiusReal d +
      moebiusReal (squareDivisorPrimeToggle p d) = 0 := by
  classical
  unfold squareDivisorMobiusSupport at hd
  rcases Finset.mem_filter.mp hd with ⟨_hddiv, _hdd, hsq⟩
  unfold squareDivisorPrimeToggle
  by_cases hpd : p ∣ d
  · have hqnot : ¬ p ∣ d / p :=
      prime_not_dvd_div_of_squarefree hp hsq hpd
    have hcop : p.Coprime (d / p) :=
      (hp.coprime_iff_not_dvd).2 hqnot
    have hdecomp : p * (d / p) = d := Nat.mul_div_cancel' hpd
    rw [if_pos hpd]
    nth_rw 1 [← hdecomp]
    unfold moebiusReal
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
      ArithmeticFunction.moebius_apply_prime hp]
    norm_num
  · have hcop : p.Coprime d :=
      (hp.coprime_iff_not_dvd).2 hpd
    rw [if_neg hpd]
    unfold moebiusReal
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
      ArithmeticFunction.moebius_apply_prime hp]
    norm_num

/-- A prime square divisor forces exact cancellation of the complete squarefree
square-divisor Möbius support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
