# exists_pow_le_of_le_radical_of_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc0683bc-c7ea-0729-fcf8-83714d09df28",
  "kind": "lemma",
  "lexical_name": "exists_pow_le_of_le_radical_of_fg",
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
  "slug": "exists-pow-le-of-le-radical-of-fg--f4c607449c892c1085635a31",
  "source": {
    "blob": "67af4384819f4a4dc9d9a0863288b15ce4ffb3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 84,
    "path": "GRWTSK/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4c607449c892c1085635a318be929c6622e7449cc560f517d5f6f0ef29edfac",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc0683bc-c7ea-0729-fcf8-83714d09df28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_pow_le_of_le_radical_of_fg {R : Type*} [CommSemiring R] {I J : Ideal R}
    (h' : I ≤ J.radical) (h : I.FG) :
    ∃ n : ℕ, I ^ n ≤ J := by
  revert h'
  apply Submodule.fg_induction _ _ _ _ _ I h
  · intro x hJ
    simp only [Ideal.submodule_span_eq, Ideal.span_le,
      Set.singleton_subset_iff, SetLike.mem_coe] at hJ
    obtain ⟨n, hn⟩ := hJ
    refine ⟨n, by simpa [Ideal.span_singleton_pow, Ideal.span_le]⟩
  · intros I₁ I₂ h₁ h₂ hJ
    obtain ⟨n₁, hn₁⟩ := h₁ (le_sup_left.trans hJ)
    obtain ⟨n₂, hn₂⟩ := h₂ (le_sup_right.trans hJ)
    use n₁ + n₂
    exact Ideal.sup_pow_add_le_pow_sup_pow.trans (sup_le hn₁ hn₂)

end Ideal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67af4384819f4a4dc9d9a0863288b15ce4ffb3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
