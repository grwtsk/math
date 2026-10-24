# LinearIndependent.map_pow_expChar_pow_of_fd_isSeparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78ad3533-63cb-95ca-9899-219aa705c399",
  "kind": "theorem",
  "lexical_name": "LinearIndependent.map_pow_expChar_pow_of_fd_isSeparable",
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
  "slug": "linearindependent-map-pow-expchar-pow-of-fd-isseparable--338eb32955beec470dbbed0f",
  "source": {
    "blob": "aac32de89983bd66c6ef5b7bafef52ea89825224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 334,
    "path": "GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:338eb32955beec470dbbed0f2467e0bf8e06daef31d66576b8c33278b448d89f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78ad3533-63cb-95ca-9899-219aa705c399`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem LinearIndependent.map_pow_expChar_pow_of_fd_isSeparable
    [FiniteDimensional F E] [Algebra.IsSeparable F E]
    (h : LinearIndependent F v) : LinearIndependent F (v · ^ q ^ n) := by
  have h' := h.linearIndepOn_id
  let ι' := h'.extend (Set.range v).subset_univ
  let b : Basis ι' F E := Basis.extend h'
  letI : Fintype ι' := FiniteDimensional.fintypeBasisIndex b
  have H := linearIndependent_of_top_le_span_of_card_eq_finrank
    (Field.span_map_pow_expChar_pow_eq_top_of_isSeparable q n b.span_eq).ge
    (Module.finrank_eq_card_basis b).symm
  let f (i : ι) : ι' := ⟨v i, h'.subset_extend _ ⟨i, rfl⟩⟩
  convert H.comp f fun _ _ heq ↦ h.injective (by simpa only [f, Subtype.mk.injEq] using heq)
  simp_rw [Function.comp_apply, b]
  rw [Basis.extend_apply_self]

/-- If `E / F` is a separable extension of exponential characteristic `q`, if `{ u_i }` is a
family of elements of `E` which is `F`-linearly independent, then `{ u_i ^ (q ^ n) }` is also
`F`-linearly independent for any natural number `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aac32de89983bd66c6ef5b7bafef52ea89825224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
