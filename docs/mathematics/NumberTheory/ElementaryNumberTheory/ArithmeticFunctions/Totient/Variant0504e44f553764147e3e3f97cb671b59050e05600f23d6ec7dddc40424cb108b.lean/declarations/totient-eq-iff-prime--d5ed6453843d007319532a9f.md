# totient_eq_iff_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47696a84-7dba-7e01-5234-671fe319d753",
  "kind": "theorem",
  "lexical_name": "totient_eq_iff_prime",
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
  "slug": "totient-eq-iff-prime--d5ed6453843d007319532a9f",
  "source": {
    "blob": "f2b4775c5642eff1b209409bd3540b7272b9016e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 215,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5ed6453843d007319532a9f31a30b6fb3cf42225e8172be969067fe7522206a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47696a84-7dba-7e01-5234-671fe319d753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totient_eq_iff_prime {p : ℕ} (hp : 0 < p) : p.totient = p - 1 ↔ p.Prime := by
  refine ⟨fun h => ?_, totient_prime⟩
  replace hp : 1 < p := by
    apply lt_of_le_of_ne
    · rwa [succ_le_iff]
    · rintro rfl
      rw [totient_one, tsub_self] at h
      exact one_ne_zero h
  rw [totient_eq_card_coprime, range_eq_Ico, ← Finset.insert_Ico_add_one_left_eq_Ico hp.le,
    Finset.filter_insert, if_neg (not_coprime_of_dvd_of_dvd hp (dvd_refl p) (dvd_zero p)),
    ← Nat.card_Ico 1 p] at h
  refine
    p.prime_of_coprime hp fun n hn hnz => Finset.filter_card_eq h n <| Finset.mem_Ico.mpr ⟨?_, hn⟩
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2b4775c5642eff1b209409bd3540b7272b9016e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
