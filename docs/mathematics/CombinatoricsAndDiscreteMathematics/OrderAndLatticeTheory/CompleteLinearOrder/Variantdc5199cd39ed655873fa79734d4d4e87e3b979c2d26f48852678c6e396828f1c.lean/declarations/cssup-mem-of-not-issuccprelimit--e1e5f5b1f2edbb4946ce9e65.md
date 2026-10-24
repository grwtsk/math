# csSup_mem_of_not_isSuccPrelimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d58a06c-af25-62e7-e172-bf8920ed4c37",
  "kind": "lemma",
  "lexical_name": "csSup_mem_of_not_isSuccPrelimit",
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
  "slug": "cssup-mem-of-not-issuccprelimit--e1e5f5b1f2edbb4946ce9e65",
  "source": {
    "blob": "ed08c937a1422f045d5f16669b50c881e8173ea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 111,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variantdc5199cd39ed655873fa79734d4d4e87e3b979c2d26f48852678c6e396828f1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1e5f5b1f2edbb4946ce9e65e92532d2fd649521df47f1392bb0953ea137d172",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variantdc5199cd39ed655873fa79734d4d4e87e3b979c2d26f48852678c6e396828f1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d58a06c-af25-62e7-e172-bf8920ed4c37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma csSup_mem_of_not_isSuccPrelimit (hlim : ¬ IsSuccPrelimit (sSup s)) : sSup s ∈ s := by
  obtain rfl | hs := s.eq_empty_or_nonempty
  · simp [isSuccPrelimit_bot] at hlim
  · apply csSup_mem_of_not_isSuccLimit hs _ <| mt IsSuccLimit.isSuccPrelimit hlim
    contrapose! hlim
    rw [csSup_of_not_bddAbove hlim, csSup_empty]
    exact isSuccPrelimit_bot

@[deprecated (since := "2026-04-24")]
alias csSup_mem_of_not_isSuccPrelimit' := csSup_mem_of_not_isSuccPrelimit

/-- See `exists_eq_ciSup_of_not_isSuccLimit` for the `ConditionallyCompleteLinearOrder` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variantdc5199cd39ed655873fa79734d4d4e87e3b979c2d26f48852678c6e396828f1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variantdc5199cd39ed655873fa79734d4d4e87e3b979c2d26f48852678c6e396828f1c.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed08c937a1422f045d5f16669b50c881e8173ea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
