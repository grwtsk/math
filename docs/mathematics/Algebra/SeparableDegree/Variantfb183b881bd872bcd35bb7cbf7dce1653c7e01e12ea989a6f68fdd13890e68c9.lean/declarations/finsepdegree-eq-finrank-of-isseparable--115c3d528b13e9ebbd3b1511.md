# finSepDegree_eq_finrank_of_isSeparable

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
      "line": 746,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0931e5ee-5c78-be80-a7ad-8a506a4bf5c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5a786f2-31ca-cbd0-5c41-e9942835bdd2",
  "kind": "theorem",
  "lexical_name": "finSepDegree_eq_finrank_of_isSeparable",
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
  "slug": "finsepdegree-eq-finrank-of-isseparable--115c3d528b13e9ebbd3b1511",
  "source": {
    "blob": "a5bf4540985e4ca58160e62e2b1ee530f01c1b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 775,
    "line": 746,
    "path": "GRWTSK/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:115c3d528b13e9ebbd3b1511843e22dff76016b905cbab7ba39ae233d24c4d2d",
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

Occurrence: `result:e5a786f2-31ca-cbd0-5c41-e9942835bdd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–775.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finSepDegree_eq_finrank_of_isSeparable [Algebra.IsSeparable F E] :
    finSepDegree F E = finrank F E := by
  wlog hfd : FiniteDimensional F E generalizing E with H
  · rw [finrank_of_infinite_dimensional hfd]
    have halg := Algebra.IsSeparable.isAlgebraic F E
    obtain ⟨L, h, h'⟩ := exists_lt_finrank_of_infinite_dimensional hfd (finSepDegree F E)
    have : Algebra.IsSeparable F L := Algebra.isSeparable_tower_bot_of_isSeparable F L E
    have := (halg.tower_top L)
    have hd := finSepDegree_mul_finSepDegree_of_isAlgebraic F L E
    rw [H L h] at hd
    by_cases hd' : finSepDegree L E = 0
    · rw [← hd, hd', mul_zero]
    linarith only [h', hd, Nat.le_mul_of_pos_right (finrank F L) (Nat.pos_of_ne_zero hd')]
  rw [← finSepDegree_top F, ← finrank_top F E]
  refine induction_on_adjoin (fun K : IntermediateField F E ↦ finSepDegree F K = finrank F K)
    (by simp_rw [finSepDegree_bot, IntermediateField.finrank_bot]) (fun L x h ↦ ?_) ⊤
  simp only at h ⊢
  have heq : _ * _ = _ * _ := congr_arg₂ (· * ·) h <|
    (finSepDegree_adjoin_simple_eq_finrank_iff L E x (IsAlgebraic.of_finite L x)).2 <|
      IsSeparable.tower_top L (Algebra.IsSeparable.isSeparable F x)
  set M := L⟮x⟯
  have := Algebra.IsAlgebraic.of_finite L M
  rwa [finSepDegree_mul_finSepDegree_of_isAlgebraic F L M,
    Module.finrank_mul_finrank F L M] at heq

alias Algebra.IsSeparable.finSepDegree_eq := finSepDegree_eq_finrank_of_isSeparable

/-- If `E / F` is a finite extension, then its separable degree is equal to its degree if and
only if it is a separable extension. -/
@[stacks 09HA "The equality condition"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5bf4540985e4ca58160e62e2b1ee530f01c1b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
