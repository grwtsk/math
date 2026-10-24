# exists_isNilRegular_of_finrank_le_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f609915dc38e950cba7e449fbaa666a399120749",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 538,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e065aea9-54f4-d674-ae65-01d38018273f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:355a1d3d-6a6b-a092-b26c-9c4720f2d5f3",
  "kind": "lemma",
  "lexical_name": "exists_isNilRegular_of_finrank_le_card",
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
  "slug": "exists-isnilregular-of-finrank-le-card--f0c8f11f6264207cba01c235",
  "source": {
    "blob": "f609915dc38e950cba7e449fbaa666a399120749",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 538,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0c8f11f6264207cba01c235c863331b8de8d506d797b86157d12babc514c2f5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:355a1d3d-6a6b-a092-b26c-9c4720f2d5f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isNilRegular_of_finrank_le_card (h : finrank R M ≤ #R) :
    ∃ x : L, IsNilRegular φ x := by
  let b := chooseBasis R L
  let bₘ := chooseBasis R M
  let n := Fintype.card (ChooseBasisIndex R M)
  have aux :
    ((polyCharpoly φ b).coeff (nilRank φ)).IsHomogeneous (n - nilRank φ) :=
    polyCharpoly_coeff_isHomogeneous _ b (nilRank φ) (n - nilRank φ)
      (by simp [n, nilRank_le_card φ bₘ, finrank_eq_card_chooseBasisIndex])
  obtain ⟨x, hx⟩ : ∃ r, eval r ((polyCharpoly _ b).coeff (nilRank φ)) ≠ 0 := by
    by_contra! h₀
    apply polyCharpoly_coeff_nilRank_ne_zero φ b
    apply aux.eq_zero_of_forall_eval_eq_zero_of_le_card h₀ (le_trans _ h)
    simp only [n, finrank_eq_card_chooseBasisIndex, Nat.cast_le, Nat.sub_le]
  let c := Finsupp.equivFunOnFinite.symm x
  use b.repr.symm c
  rwa [isNilRegular_iff_coeff_polyCharpoly_nilRank_ne_zero _ b, LinearEquiv.apply_symm_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f609915dc38e950cba7e449fbaa666a399120749` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
