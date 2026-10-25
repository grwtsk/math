# dvd_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d3d2833-0849-d100-cdb5-4b5872a7a0a2",
  "kind": "theorem",
  "lexical_name": "dvd_prime_pow",
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
  "slug": "dvd-prime-pow--0dcc064ab3f3401004cee375",
  "source": {
    "blob": "e0aa93d759afbb68b836045cf92e7342a84da615",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 776,
    "line": 760,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Varianta94ec18207d5744bb46f6cdc8fec927ba1e814ecabfe9aed123a4364c9315390.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dcc064ab3f3401004cee375817ba3847fbc7d853337554197dc785714ccb04e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Varianta94ec18207d5744bb46f6cdc8fec927ba1e814ecabfe9aed123a4364c9315390.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d3d2833-0849-d100-cdb5-4b5872a7a0a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 760–776.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_prime_pow [CancelCommMonoidWithZero M] {p q : M} (hp : Prime p) (n : ℕ) :
    q ∣ p ^ n ↔ ∃ i ≤ n, Associated q (p ^ i) := by
  induction n generalizing q with
  | zero =>
    simp [← isUnit_iff_dvd_one, associated_one_iff_isUnit]
  | succ n ih =>
    refine ⟨fun h => ?_, fun ⟨i, hi, hq⟩ => hq.dvd.trans (pow_dvd_pow p hi)⟩
    rw [pow_succ'] at h
    rcases hp.left_dvd_or_dvd_right_of_dvd_mul h with (⟨q, rfl⟩ | hno)
    · rw [mul_dvd_mul_iff_left hp.ne_zero, ih] at h
      rcases h with ⟨i, hi, hq⟩
      refine ⟨i + 1, Nat.succ_le_succ hi, (hq.mul_left p).trans ?_⟩
      rw [pow_succ']
    · obtain ⟨i, hi, hq⟩ := ih.mp hno
      exact ⟨i, hi.trans n.le_succ, hq⟩

end CancelCommMonoidWithZero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Varianta94ec18207d5744bb46f6cdc8fec927ba1e814ecabfe9aed123a4364c9315390.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Varianta94ec18207d5744bb46f6cdc8fec927ba1e814ecabfe9aed123a4364c9315390.lean#L760).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0aa93d759afbb68b836045cf92e7342a84da615` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
