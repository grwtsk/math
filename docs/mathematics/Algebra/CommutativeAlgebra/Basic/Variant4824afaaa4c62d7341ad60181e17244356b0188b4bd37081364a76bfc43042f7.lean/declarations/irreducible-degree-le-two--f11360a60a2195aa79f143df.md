# Irreducible.degree_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a415b24f0ea01eba1f3e48dd843502690c13a103",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b72f1f58-613d-230d-5150-e5e6a03e81d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df33d2e5-b667-a9e7-5d25-3596f19e7b1d",
  "kind": "lemma",
  "lexical_name": "Irreducible.degree_le_two",
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
  "slug": "irreducible-degree-le-two--f11360a60a2195aa79f143df",
  "source": {
    "blob": "a415b24f0ea01eba1f3e48dd843502690c13a103",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 187,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f11360a60a2195aa79f143dfb692988f6ed600c239d6d3ff30babb203aac2f23",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df33d2e5-b667-a9e7-5d25-3596f19e7b1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Irreducible.degree_le_two {p : ℝ[X]} (hp : Irreducible p) : degree p ≤ 2 := by
  obtain ⟨z, hz⟩ : ∃ z : ℂ, aeval z p = 0 :=
    IsAlgClosed.exists_aeval_eq_zero _ p (degree_pos_of_irreducible hp).ne'
  cases eq_or_ne z.im 0 with
  | inl hz0 =>
    lift z to ℝ using hz0
    -- I can't work out why `erw` is needed here. It looks like exactly the LHS of `aeval_ofReal`.
    erw [aeval_ofReal] at hz
    rw [RCLike.ofReal_eq_zero] at hz
    exact (degree_eq_one_of_irreducible_of_root hp hz).trans_le one_le_two
  | inr hz0 =>
    obtain ⟨q, rfl⟩ := p.quadratic_dvd_of_aeval_eq_zero_im_ne_zero hz hz0
    have hd : degree (X ^ 2 - C (2 * z.re) * X + C (‖z‖ ^ 2)) = 2 := by
      compute_degree!
    have hq : IsUnit q := by
      refine (of_irreducible_mul hp).resolve_left (mt isUnit_iff_degree_eq_zero.1 ?_)
      rw [hd]
      exact two_ne_zero
    refine (degree_mul_le _ _).trans_eq ?_
    rwa [isUnit_iff_degree_eq_zero.1 hq, add_zero]

/-- An irreducible real polynomial has natural degree at most two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a415b24f0ea01eba1f3e48dd843502690c13a103` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
