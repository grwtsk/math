# eq_X_pow_char_pow_sub_C_of_natSepDegree_eq_one_of_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5bf4540985e4ca58160e62e2b1ee530f01c1b98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 568,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d4768f4-068c-a455-0ba8-bf2aa76e0c05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aef1cff8-c3d6-1ca1-4e36-74d33d20b30c",
  "kind": "theorem",
  "lexical_name": "eq_X_pow_char_pow_sub_C_of_natSepDegree_eq_one_of_irreducible",
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
  "slug": "eq-x-pow-char-pow-sub-c-of-natsepdegree-eq-one-of-irreducible--165a84f8f0c6294fd33b8d52",
  "source": {
    "blob": "a5bf4540985e4ca58160e62e2b1ee530f01c1b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 568,
    "path": "GRWTSK/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:165a84f8f0c6294fd33b8d52d8f4c2b7171ece3e6fe018ce1127818a9d6f3655",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aef1cff8-c3d6-1ca1-4e36-74d33d20b30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_X_pow_char_pow_sub_C_of_natSepDegree_eq_one_of_irreducible (q : ℕ) [ExpChar F q]
    (hm : f.Monic) (hi : Irreducible f) (h : f.natSepDegree = 1) : ∃ (n : ℕ) (y : F),
      (n = 0 ∨ y ∉ (frobenius F q).range) ∧ f = X ^ q ^ n - C y := by
  obtain ⟨n, y, hf⟩ := (hm.natSepDegree_eq_one_iff_of_irreducible q hi).1 h
  cases id ‹ExpChar F q› with
  | zero =>
    simp_rw [one_pow, pow_one] at hf ⊢
    exact ⟨0, y, .inl rfl, hf⟩
  | prime hq =>
    refine ⟨n, y, (em _).imp id fun hn ⟨z, hy⟩ ↦ ?_, hf⟩
    haveI := expChar_of_injective_ringHom (R := F) C_injective q
    rw [hf, ← Nat.succ_pred hn, pow_succ, pow_mul, ← hy, frobenius_def, map_pow,
      ← sub_pow_expChar] at hi
    exact not_irreducible_pow hq.ne_one hi

/-- If a monic polynomial over a field `F` of exponential characteristic `q` has separable degree
one, then it is of the form `(X ^ (q ^ n) - C y) ^ m` for some non-zero natural number `m`,
some natural number `n`, and some element `y` of `F`, such that either `n = 0` or `y` has no
`q`-th root in `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5bf4540985e4ca58160e62e2b1ee530f01c1b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
