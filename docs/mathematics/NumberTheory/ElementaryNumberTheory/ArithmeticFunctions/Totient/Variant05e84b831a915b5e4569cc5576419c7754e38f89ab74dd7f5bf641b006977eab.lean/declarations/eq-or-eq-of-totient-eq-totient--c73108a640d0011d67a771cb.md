# eq_or_eq_of_totient_eq_totient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:853e32a9-07e4-ead8-b310-c37238ebb452",
  "kind": "theorem",
  "lexical_name": "eq_or_eq_of_totient_eq_totient",
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
  "slug": "eq-or-eq-of-totient-eq-totient--c73108a640d0011d67a771cb",
  "source": {
    "blob": "1adf8f725fd231a0df73efdb6bf812ee0865c6d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 393,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c73108a640d0011d67a771cbac9f57bcc2f7e9b4118cc061b15b37936ab3b75e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:853e32a9-07e4-ead8-b310-c37238ebb452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_or_eq_of_totient_eq_totient {a b : ℕ} (h : a ∣ b) (h' : a.totient = b.totient) :
    a = b ∨ 2 * a = b := by
  by_cases ha : a = 0
  · rw [ha, totient_zero, eq_comm, totient_eq_zero] at h'
    simp [ha, h']
  by_cases hb : b = 0
  · rw [hb, totient_zero, totient_eq_zero] at h'
    exact False.elim (ha h')
  obtain ⟨c, rfl⟩ := h
  suffices a.Coprime c by
    rw [totient_mul this, eq_comm, mul_eq_left (totient_eq_zero.not.mpr ha),
      totient_eq_one_iff] at h'
    obtain rfl | rfl := h'
    · simp
    · simp [mul_comm]
  refine coprime_of_dvd fun p hp hap ↦ ?_
  rintro ⟨d, rfl⟩
  suffices a.totient < (p * a * d).totient by
    rw [← mul_assoc, mul_comm a] at h'
    exact h'.not_lt this
  rw [mul_comm p]
  refine lt_of_lt_of_le ?_ (Nat.le_of_dvd ?_ (totient_dvd_of_dvd ⟨d, rfl⟩))
  · rw [mul_comm, totient_mul_of_prime_of_dvd hp hap, Nat.lt_mul_iff_one_lt_left]
    · exact hp.one_lt
    · exact totient_pos.mpr <| pos_of_ne_zero ha
  · exact totient_pos.mpr <| zero_lt_of_ne_zero (by rwa [mul_assoc])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1adf8f725fd231a0df73efdb6bf812ee0865c6d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
