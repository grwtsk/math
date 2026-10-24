# divisorSqrtCode_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94c53515-e241-4a4a-2cbe-c88e6665e7b4",
  "kind": "theorem",
  "lexical_name": "divisorSqrtCode_injective",
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
  "slug": "divisorsqrtcode-injective--4618a02ee1f91717a3ee8586",
  "source": {
    "blob": "0b9e1a9707dab2219bc11f5be76c01229dd6574f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 48,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4618a02ee1f91717a3ee8586d4b6739247193792e7c5d688cc42064494be2c90",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94c53515-e241-4a4a-2cbe-c88e6665e7b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorSqrtCode_injective
    {n : ℕ}
    (hn : n ≠ 0) :
    Function.Injective (divisorSqrtCode hn) := by
  intro a b hab
  apply Subtype.ext
  by_cases ha : a.1 ≤ n.sqrt
  · by_cases hb : b.1 ≤ n.sqrt
    · have hval := congrArg
        (fun z : Bool × Fin (n.sqrt + 1) => z.2.1) hab
      simpa [divisorSqrtCode, ha, hb] using hval
    · have htag := congrArg
        (fun z : Bool × Fin (n.sqrt + 1) => z.1) hab
      simp [divisorSqrtCode, ha, hb] at htag
  · by_cases hb : b.1 ≤ n.sqrt
    · have htag := congrArg
        (fun z : Bool × Fin (n.sqrt + 1) => z.1) hab
      simp [divisorSqrtCode, ha, hb] at htag
    · have hquot : n / a.1 = n / b.1 := by
        have hval := congrArg
          (fun z : Bool × Fin (n.sqrt + 1) => z.2.1) hab
        simpa [divisorSqrtCode, ha, hb] using hval
      have hadvd : a.1 ∣ n := (Nat.mem_divisors.mp a.2).1
      have hbdvd : b.1 ∣ n := (Nat.mem_divisors.mp b.2).1
      have hqpos : 0 < n / a.1 := by
        have hanpos : 0 < n := Nat.pos_of_ne_zero hn
        have hapos : 0 < a.1 := Nat.pos_of_dvd_of_pos hadvd hanpos
        have hale : a.1 ≤ n := Nat.le_of_dvd hanpos hadvd
        exact Nat.div_pos hale hapos
      exact Nat.eq_of_mul_eq_mul_right hqpos <| by
        calc
          a.1 * (n / a.1) = n := Nat.mul_div_cancel' hadvd
          _ = b.1 * (n / b.1) := (Nat.mul_div_cancel' hbdvd).symm
          _ = b.1 * (n / a.1) := by rw [hquot]

/-- Elementary pointwise divisor bound with all small-scale cases retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9e1a9707dab2219bc11f5be76c01229dd6574f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
