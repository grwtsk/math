# beta_eq_moebius_first_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:981bcfb0-5ce8-bace-0661-0062bce7ddca",
  "kind": "theorem",
  "lexical_name": "beta_eq_moebius_first_block",
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
  "slug": "beta-eq-moebius-first-block--6a05c60b2f7c510a53c2832c",
  "source": {
    "blob": "a2b4052bbe95c70cfa36be6549f926ab63af877e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 26,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeBlockPrimitive/Variant396fef74edd95cbed1b7e5807d77ff54fb0db87dfa8bbfb2ef0a612ebaf10495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a05c60b2f7c510a53c2832c30db6754fa7cd9e8543c8133249f3c8dd2460e61",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeBlockPrimitive/Variant396fef74edd95cbed1b7e5807d77ff54fb0db87dfa8bbfb2ef0a612ebaf10495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:981bcfb0-5ce8-bace-0661-0062bce7ddca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem beta_eq_moebius_first_block (U n : ℕ) (_hU : 1 ≤ U)
    (hUn : U < n) (hn : n ≤ 2 * U + 1) : beta U n = (moebius n : ℝ) := by
  have hn0 : n ≠ 0 := by omega
  have hs : n.divisors.filter (fun d => U < d) = {n} := by
    ext d
    simp only [Finset.mem_filter, Nat.mem_divisors, Finset.mem_singleton]
    constructor
    · rintro ⟨⟨hdn, _⟩, hUd⟩
      obtain ⟨k, hk⟩ := hdn
      have hk0 : k ≠ 0 := by
        intro hz
        rw [hz, mul_zero] at hk
        exact hn0 hk
      have hk1 : k ≤ 1 := by
        by_contra hnot
        have h2 : 2 ≤ k := by omega
        have hm : 2 * d ≤ n := by
          calc
            2 * d = d * 2 := Nat.mul_comm _ _
            _ ≤ d * k := Nat.mul_le_mul_left _ h2
            _ = n := hk.symm
        omega
      have hkEq : k = 1 := by omega
      simpa [hkEq] using hk.symm
    · intro heq
      subst d
      exact ⟨⟨dvd_rfl, hn0⟩, hUn⟩
  rw [beta, hs, Finset.sum_singleton]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeBlockPrimitive/Variant396fef74edd95cbed1b7e5807d77ff54fb0db87dfa8bbfb2ef0a612ebaf10495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeBlockPrimitive/Variant396fef74edd95cbed1b7e5807d77ff54fb0db87dfa8bbfb2ef0a612ebaf10495.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2b4052bbe95c70cfa36be6549f926ab63af877e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
