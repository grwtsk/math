# ltByCases_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "117b17c9ef1d2e37b2f63ca8f5c70fd38acda001",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 458,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72acf0de-0674-d291-6e99-e4912506edae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c85707a-ffea-d437-813e-3457ecf82f4a",
  "kind": "lemma",
  "lexical_name": "ltByCases_congr",
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
  "slug": "ltbycases-congr--f1e168c64b260623e7b98a32",
  "source": {
    "blob": "117b17c9ef1d2e37b2f63ca8f5c70fd38acda001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 458,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1e168c64b260623e7b98a3293efc6978b9e11202ff4510ce342cc98240a58bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c85707a-ffea-d437-813e-3457ecf82f4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ltByCases_congr {x' y' : α} {h₁ : x < y → P} {h₂ : x = y → P} {h₃ : y < x → P}
    {h₁' : x' < y' → P} {h₂' : x' = y' → P} {h₃' : y' < x' → P} (ltc : (x < y) ↔ (x' < y'))
    (gtc : (y < x) ↔ (y' < x')) (hh'₁ : ∀ (h : x' < y'), h₁ (ltc.mpr h) = h₁' h)
    (hh'₂ : ∀ (h : x' = y'), h₂ ((eq_iff_eq_of_lt_iff_lt_of_gt_iff_gt ltc gtc).mpr h) = h₂' h)
    (hh'₃ : ∀ (h : y' < x'), h₃ (gtc.mpr h) = h₃' h) :
    ltByCases x y h₁ h₂ h₃ = ltByCases x' y' h₁' h₂' h₃' := by
  refine ltByCases_rec _ (fun h => ?_) (fun h => ?_) (fun h => ?_)
  · rw [ltByCases_lt (ltc.mp h), hh'₁]
  · rw [eq_iff_eq_of_lt_iff_lt_of_gt_iff_gt ltc gtc] at h
    rw [ltByCases_eq h, hh'₂]
  · rw [ltByCases_gt (gtc.mp h), hh'₃]

/-- Perform a case-split on the ordering of `x` and `y` in a decidable linear order,
non-dependently. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117b17c9ef1d2e37b2f63ca8f5c70fd38acda001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
