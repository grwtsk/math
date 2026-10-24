# eq_X_sub_C_pow_of_natSepDegree_eq_one_of_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fba01a2f6998d307b1037125a2c6f0b7bac53525",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 560,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c67e2467526c097efbfc5cc47b6eaaffdc3a806fb4223149261e4f8873e61774.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b71a51b-905f-446b-14aa-28a8b10763e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7209d78a-849c-0434-099f-7c0e550942af",
  "kind": "theorem",
  "lexical_name": "eq_X_sub_C_pow_of_natSepDegree_eq_one_of_splits",
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
  "slug": "eq-x-sub-c-pow-of-natsepdegree-eq-one-of-splits--1e076e693d30021ff14a653f",
  "source": {
    "blob": "fba01a2f6998d307b1037125a2c6f0b7bac53525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 560,
    "path": "GRWTSK/Algebra/SeparableDegree/Variantc67e2467526c097efbfc5cc47b6eaaffdc3a806fb4223149261e4f8873e61774.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e076e693d30021ff14a653f67507531f610cfae97ecd3a83faac19c65003f92",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableDegree/Variantc67e2467526c097efbfc5cc47b6eaaffdc3a806fb4223149261e4f8873e61774.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7209d78a-849c-0434-099f-7c0e550942af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_X_sub_C_pow_of_natSepDegree_eq_one_of_splits (hm : f.Monic)
    (hs : f.Splits)
    (h : f.natSepDegree = 1) : ∃ (m : ℕ) (y : F), m ≠ 0 ∧ f = (X - C y) ^ m := by
  classical
  have h1 := hs.eq_prod_roots_of_monic hm
  have h2 := (natSepDegree_eq_of_splits f (hs.map <| .id F)).symm
  rw [h, aroots_def, Algebra.algebraMap_self, map_id, Multiset.toFinset_card_eq_one_iff] at h2
  obtain ⟨h2, y, h3⟩ := h2
  exact ⟨_, y, h2, by rwa [h3, Multiset.map_nsmul, Multiset.map_singleton, Multiset.prod_nsmul,
    Multiset.prod_singleton] at h1⟩

/-- If a monic irreducible polynomial over a field `F` of exponential characteristic `q` has
separable degree one, then it is of the form `X ^ (q ^ n) - C y` for some natural number `n`,
and some element `y` of `F`, such that either `n = 0` or `y` has no `q`-th root in `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variantc67e2467526c097efbfc5cc47b6eaaffdc3a806fb4223149261e4f8873e61774.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variantc67e2467526c097efbfc5cc47b6eaaffdc3a806fb4223149261e4f8873e61774.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fba01a2f6998d307b1037125a2c6f0b7bac53525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
