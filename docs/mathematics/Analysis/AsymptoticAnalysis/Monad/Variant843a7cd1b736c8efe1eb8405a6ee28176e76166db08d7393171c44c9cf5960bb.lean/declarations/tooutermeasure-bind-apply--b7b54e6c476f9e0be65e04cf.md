# toOuterMeasure_bind_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bfbf6b5d5daba52ef5b27c316138eed379f279c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63e2befe-6f36-c1ee-ccc1-ea463cadd627",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5719f55c-decc-0cce-c174-3a072f9e580f",
  "kind": "theorem",
  "lexical_name": "toOuterMeasure_bind_apply",
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
  "slug": "tooutermeasure-bind-apply--b7b54e6c476f9e0be65e04cf",
  "source": {
    "blob": "8bfbf6b5d5daba52ef5b27c316138eed379f279c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 155,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7b54e6c476f9e0be65e04cf14c34fd36edb7ef0a97a1f28eed1bf909f0c7fa1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5719f55c-decc-0cce-c174-3a072f9e580f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toOuterMeasure_bind_apply :
    (p.bind f).toOuterMeasure s = ∑' a, p a * (f a).toOuterMeasure s := by
  classical
  calc
    (p.bind f).toOuterMeasure s = ∑' b, if b ∈ s then ∑' a, p a * f a b else 0 := by
      simp [toOuterMeasure_apply, Set.indicator_apply]
    _ = ∑' (b) (a), p a * if b ∈ s then f a b else 0 := tsum_congr fun b => by split_ifs <;> simp
    _ = ∑' (a) (b), p a * if b ∈ s then f a b else 0 := ENNReal.tsum_comm
    _ = ∑' a, p a * ∑' b, if b ∈ s then f a b else 0 := tsum_congr fun _ => ENNReal.tsum_mul_left
    _ = ∑' a, p a * ∑' b, if b ∈ s then f a b else 0 :=
      (tsum_congr fun a => (congr_arg fun x => p a * x) <| tsum_congr fun b => by split_ifs <;> rfl)
    _ = ∑' a, p a * (f a).toOuterMeasure s :=
      tsum_congr fun a => by simp only [toOuterMeasure_apply, Set.indicator_apply]

/-- The measure of a set under `p.bind f` is the sum over `a : α`
  of the probability of `a` under `p` times the measure of the set under `f a`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant843a7cd1b736c8efe1eb8405a6ee28176e76166db08d7393171c44c9cf5960bb.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bfbf6b5d5daba52ef5b27c316138eed379f279c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
