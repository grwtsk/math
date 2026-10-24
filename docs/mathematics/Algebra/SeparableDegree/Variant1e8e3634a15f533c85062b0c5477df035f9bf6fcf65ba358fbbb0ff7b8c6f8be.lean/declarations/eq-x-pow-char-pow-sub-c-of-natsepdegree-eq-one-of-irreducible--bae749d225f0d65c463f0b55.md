# eq_X_pow_char_pow_sub_C_of_natSepDegree_eq_one_of_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b7d8fac-5f8e-a292-fcd5-bc4ee33512e6",
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
  "slug": "eq-x-pow-char-pow-sub-c-of-natsepdegree-eq-one-of-irreducible--bae749d225f0d65c463f0b55",
  "source": {
    "blob": "c2781d2f1988236663c814b18c761f967d3d7081",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 576,
    "path": "GRWTSK/Algebra/SeparableDegree/Variant1e8e3634a15f533c85062b0c5477df035f9bf6fcf65ba358fbbb0ff7b8c6f8be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bae749d225f0d65c463f0b55b5086a8ef311b7310a12bc5c9c1484eb12aaaf75",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableDegree/Variant1e8e3634a15f533c85062b0c5477df035f9bf6fcf65ba358fbbb0ff7b8c6f8be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b7d8fac-5f8e-a292-fcd5-bc4ee33512e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 576–594.

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

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variant1e8e3634a15f533c85062b0c5477df035f9bf6fcf65ba358fbbb0ff7b8c6f8be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variant1e8e3634a15f533c85062b0c5477df035f9bf6fcf65ba358fbbb0ff7b8c6f8be.lean#L576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2781d2f1988236663c814b18c761f967d3d7081` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
