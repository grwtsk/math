# IsSymmetric.antitone_supDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "377bb94c58397dc00f1ae086a43d8af3dfa22837",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c80f71fa-9275-c6cd-fa1e-eb73db20aa77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3397c467-f800-5e7f-6194-69ebccba120c",
  "kind": "lemma",
  "lexical_name": "IsSymmetric.antitone_supDegree",
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
  "slug": "issymmetric-antitone-supdegree--c222b235f28b901e46053cf2",
  "source": {
    "blob": "377bb94c58397dc00f1ae086a43d8af3dfa22837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 246,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c222b235f28b901e46053cf21a8bb3b944b21d03376282c365e7c62d23cd47a9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3397c467-f800-5e7f-6194-69ebccba120c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSymmetric.antitone_supDegree [LinearOrder σ] {p : MvPolynomial σ R} (hp : p.IsSymmetric) :
    Antitone ↑(ofLex <| p.supDegree toLex) := by
  obtain rfl | h0 := eq_or_ne p 0
  · rw [supDegree_zero, bot_eq_zero (α := Lex (σ →₀ ℕ))]
    exact Pi.zero_mono
  rw [Antitone]
  by_contra! ⟨i, j, hle, hlt⟩
  apply (le_sup (s := p.support) (f := toLex) _).not_gt
  pick_goal 3
  · rw [← hp (Equiv.swap i j), mem_support_iff, coeff_rename_mapDomain _ (Equiv.injective _)]
    rwa [Ne, ← leadingCoeff_eq_zero toLex.injective, leadingCoeff_toLex] at h0
  refine ⟨i, fun k hk ↦ ?_, ?_⟩
  all_goals dsimp only [Pi.toLex_apply, ofLex_toLex]
  · conv_rhs => rw [← Equiv.swap_apply_of_ne_of_ne hk.ne (hk.trans_le hle).ne]
    rw [Finsupp.mapDomain_apply_of_injective (Equiv.injective _), supDegree]; rfl
  · apply hlt.trans_eq
    simp_rw [Finsupp.mapDomain_equiv_apply, Equiv.symm_swap, Equiv.swap_apply_left]

end CommSemiring

section CommRing

variable (R)
variable [Fintype σ] [CommRing R]

/- Also holds for a cancellative CommSemiring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377bb94c58397dc00f1ae086a43d8af3dfa22837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
