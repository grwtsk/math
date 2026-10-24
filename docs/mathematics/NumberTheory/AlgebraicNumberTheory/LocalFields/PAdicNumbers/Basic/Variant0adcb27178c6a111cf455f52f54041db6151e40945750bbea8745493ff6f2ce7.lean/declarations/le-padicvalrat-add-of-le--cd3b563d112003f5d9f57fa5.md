# le_padicValRat_add_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22f17c49-c4ab-95b4-c231-0dfded17163e",
  "kind": "theorem",
  "lexical_name": "le_padicValRat_add_of_le",
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
  "slug": "le-padicvalrat-add-of-le--cd3b563d112003f5d9f57fa5",
  "source": {
    "blob": "16c3061492a96cbfd3f732ed1d63b2aa0de86ac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 310,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant0adcb27178c6a111cf455f52f54041db6151e40945750bbea8745493ff6f2ce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd3b563d112003f5d9f57fa52a4b51f9231e5ce5cd3dc5fc520b5abda019477a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant0adcb27178c6a111cf455f52f54041db6151e40945750bbea8745493ff6f2ce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22f17c49-c4ab-95b4-c231-0dfded17163e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_padicValRat_add_of_le {q r : ℚ} (hqr : q + r ≠ 0)
    (h : padicValRat p q ≤ padicValRat p r) : padicValRat p q ≤ padicValRat p (q + r) :=
  if hq : q = 0 then by simpa [hq] using h
  else
    if hr : r = 0 then by simp [hr]
    else by
      have hqn : q.num ≠ 0 := Rat.num_ne_zero.2 hq
      have hqd : (q.den : ℤ) ≠ 0 := mod_cast Rat.den_nz _
      have hrn : r.num ≠ 0 := Rat.num_ne_zero.2 hr
      have hrd : (r.den : ℤ) ≠ 0 := mod_cast Rat.den_nz _
      have hqreq : q + r = (q.num * r.den + q.den * r.num) /. (q.den * r.den) := Rat.add_num_den _ _
      have hqrd : q.num * r.den + q.den * r.num ≠ 0 := Rat.mk_num_ne_zero_of_ne_zero hqr hqreq
      conv_lhs => rw [← q.num_divInt_den]
      rw [hqreq, padicValRat_le_padicValRat_iff hqn hqrd hqd (mul_ne_zero hqd hrd), ←
        emultiplicity_le_emultiplicity_iff, mul_left_comm,
        emultiplicity_mul (Nat.prime_iff_prime_int.1 hp.1), add_mul]
      rw [← q.num_divInt_den, ← r.num_divInt_den, padicValRat_le_padicValRat_iff hqn hrn hqd hrd, ←
        emultiplicity_le_emultiplicity_iff] at h
      calc
        _ ≤
            min (emultiplicity (↑p) (q.num * r.den * q.den))
              (emultiplicity (↑p) (↑q.den * r.num * ↑q.den)) :=
          le_min
            (by rw [emultiplicity_mul (a :=_ * _) (Nat.prime_iff_prime_int.1 hp.1), add_comm])
            (by
              rw [mul_assoc,
                  emultiplicity_mul (b := _ * _) (Nat.prime_iff_prime_int.1 hp.1)]
              exact add_le_add_left h _)
        _ ≤ _ := min_le_emultiplicity_add

/-- The minimum of the valuations of `q` and `r` is at most the valuation of `q + r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant0adcb27178c6a111cf455f52f54041db6151e40945750bbea8745493ff6f2ce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant0adcb27178c6a111cf455f52f54041db6151e40945750bbea8745493ff6f2ce7.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c3061492a96cbfd3f732ed1d63b2aa0de86ac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
