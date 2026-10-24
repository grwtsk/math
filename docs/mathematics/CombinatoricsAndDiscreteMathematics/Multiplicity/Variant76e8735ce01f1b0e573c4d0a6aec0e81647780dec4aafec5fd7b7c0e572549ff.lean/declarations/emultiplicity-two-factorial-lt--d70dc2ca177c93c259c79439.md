# emultiplicity_two_factorial_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "642009443795e72ffb34af8d08470b1324f28bde",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76e8735ce01f1b0e573c4d0a6aec0e81647780dec4aafec5fd7b7c0e572549ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0ae5999-7a14-f9b4-5495-0be78db6a618",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17ec6251-137c-6814-1fad-d4e7731cfdcc",
  "kind": "theorem",
  "lexical_name": "emultiplicity_two_factorial_lt",
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
  "slug": "emultiplicity-two-factorial-lt--d70dc2ca177c93c259c79439",
  "source": {
    "blob": "642009443795e72ffb34af8d08470b1324f28bde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 272,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant76e8735ce01f1b0e573c4d0a6aec0e81647780dec4aafec5fd7b7c0e572549ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d70dc2ca177c93c259c794394b51c76aa4755003c6b2611b5c773685cde8f33d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant76e8735ce01f1b0e573c4d0a6aec0e81647780dec4aafec5fd7b7c0e572549ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17ec6251-137c-6814-1fad-d4e7731cfdcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_two_factorial_lt : ∀ {n : ℕ} (_ : n ≠ 0), emultiplicity 2 n ! < n := by
  have h2 := prime_two.prime
  refine binaryRec ?_ ?_
  · exact fun h => False.elim <| h rfl
  · intro b n ih h
    by_cases hn : n = 0
    · subst hn
      simp only [ne_eq, bit_eq_zero_iff, true_and, Bool.not_eq_false] at h
      simp only [bit, h, Bool.cond_true, mul_zero, zero_add, factorial_one]
      rw [Prime.emultiplicity_one]
      · exact zero_lt_one
      · decide
    have : emultiplicity 2 (2 * n)! < (2 * n : ℕ) := by
      rw [prime_two.emultiplicity_factorial_mul]
      rw [two_mul]
      push_cast
      apply WithTop.add_lt_add_right _ (ih hn)
      exact Ne.symm nofun
    cases b
    · simpa
    · suffices emultiplicity 2 (2 * n + 1) + emultiplicity 2 (2 * n)! < ↑(2 * n) + 1 by
        simpa [emultiplicity_mul, h2, prime_two, bit, factorial]
      rw [emultiplicity_eq_zero.2 (two_not_dvd_two_mul_add_one n), zero_add]
      refine this.trans ?_
      exact mod_cast lt_succ_self _

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant76e8735ce01f1b0e573c4d0a6aec0e81647780dec4aafec5fd7b7c0e572549ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant76e8735ce01f1b0e573c4d0a6aec0e81647780dec4aafec5fd7b7c0e572549ff.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `642009443795e72ffb34af8d08470b1324f28bde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
