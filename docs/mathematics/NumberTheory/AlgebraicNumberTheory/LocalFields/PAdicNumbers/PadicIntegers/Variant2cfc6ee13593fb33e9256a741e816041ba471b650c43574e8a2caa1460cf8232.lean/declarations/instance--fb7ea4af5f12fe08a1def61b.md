# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:995fcf4111df5b3f8bfc08f0c788a2470d7096a42e7a2c8b9fbacd63650508f1",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fb7ea4af5f12fe08a1def61b",
  "source": {
    "blob": "af48ea25e33cf9aadc3b9b67e0b64cf3c2002733",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 547,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant2cfc6ee13593fb33e9256a741e816041ba471b650c43574e8a2caa1460cf8232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb7ea4af5f12fe08a1def61bb42cac88e118bf1b28b4ebbadcc3e48df514e8b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant2cfc6ee13593fb33e9256a741e816041ba471b650c43574e8a2caa1460cf8232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:995fcf4111df5b3f8bfc08f0c788a2470d7096a42e7a2c8b9fbacd63650508f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsAdicComplete (maximalIdeal ℤ_[p]) ℤ_[p] where
  prec' x hx := by
    simp only [← Ideal.one_eq_top, smul_eq_mul, mul_one, SModEq.sub_mem, maximalIdeal_eq_span_p,
      Ideal.span_singleton_pow, ← norm_le_pow_iff_mem_span_pow] at hx ⊢
    let x' : CauSeq ℤ_[p] norm := ⟨x, ?_⟩; swap
    · intro ε hε
      obtain ⟨m, hm⟩ := exists_pow_neg_lt p hε
      refine ⟨m, fun n hn => lt_of_le_of_lt ?_ hm⟩
      rw [← neg_sub, norm_neg]
      exact hx hn
    · refine ⟨x'.lim, fun n => ?_⟩
      have : (0 : ℝ) < (p : ℝ) ^ (-n : ℤ) := zpow_pos (mod_cast hp.out.pos) _
      obtain ⟨i, hi⟩ := equiv_def₃ (equiv_lim x') this
      by_cases! hin : i ≤ n
      · exact (hi i le_rfl n hin).le
      · specialize hi i le_rfl i le_rfl
        specialize hx hin.le
        have := nonarchimedean (x n - x i : ℤ_[p]) (x i - x'.lim)
        rw [sub_add_sub_cancel] at this
        exact this.trans (max_le_iff.mpr ⟨hx, hi.le⟩)

end Dvr

section FractionRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant2cfc6ee13593fb33e9256a741e816041ba471b650c43574e8a2caa1460cf8232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant2cfc6ee13593fb33e9256a741e816041ba471b650c43574e8a2caa1460cf8232.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af48ea25e33cf9aadc3b9b67e0b64cf3c2002733` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
