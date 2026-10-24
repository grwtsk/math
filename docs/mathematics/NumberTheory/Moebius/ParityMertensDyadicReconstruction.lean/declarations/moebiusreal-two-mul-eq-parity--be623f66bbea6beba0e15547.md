# moebiusReal_two_mul_eq_parity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8148d6f8-cfaa-c6cf-921c-d7161f8a801f",
  "kind": "theorem",
  "lexical_name": "moebiusReal_two_mul_eq_parity",
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
  "slug": "moebiusreal-two-mul-eq-parity--be623f66bbea6beba0e15547",
  "source": {
    "blob": "2bd5eba1e59195a1f85e7221ab17c410b395d41c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 51,
    "path": "GRWTSK/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be623f66bbea6beba0e15547918f99404918c7dd16b2428e79f0a3714d65f657",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8148d6f8-cfaa-c6cf-921c-d7161f8a801f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moebiusReal_two_mul_eq_parity
    (m : ℕ) :
    moebiusReal (2 * m) =
      if m % 2 = 1 then -moebiusReal m else 0 := by
  by_cases hodd : m % 2 = 1
  · have hmOdd : Odd m := by
      refine ⟨m / 2, ?_⟩
      omega
    have hcop : Nat.Coprime 2 m :=
      Nat.coprime_two_left.mpr hmOdd
    unfold moebiusReal
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
      ArithmeticFunction.moebius_apply_prime Nat.prime_two]
    simp [hodd]
  · have hmodlt : m % 2 < 2 := Nat.mod_lt _ (by norm_num)
    have heven : m % 2 = 0 := by omega
    have htwo : 2 ∣ m := Nat.dvd_of_mod_eq_zero heven
    rcases htwo with ⟨q, rfl⟩
    have hnsq : ¬ Squarefree (2 * (2 * q)) := by
      intro hsq
      have hu : IsUnit (2 : ℕ) := hsq 2 (by
        refine ⟨q, ?_⟩
        ring)
      exact Nat.prime_two.ne_one (Nat.isUnit_iff.mp hu)
    unfold moebiusReal
    rw [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hnsq]
    simp

/-- Even positive endpoints up to `b` are in exact bijection with positive
halves up to `b/2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bd5eba1e59195a1f85e7221ab17c410b395d41c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
