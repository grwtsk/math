# Ix_eq_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58f64603997f6b0032f476beef11592a3c6ffce1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afe6d56c4d153de6a812fa888a587d2cfe6f7904bbebb5497acff5cdadd48723.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a782b59c-d5cd-b49f-067b-1a7aece3c401",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78abfa06-b6aa-10db-1c40-aa5d539ca137",
  "kind": "lemma",
  "lexical_name": "Ix_eq_empty",
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
  "slug": "ix-eq-empty--af715e8befc46e0494579a4f",
  "source": {
    "blob": "58f64603997f6b0032f476beef11592a3c6ffce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 186,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variantafe6d56c4d153de6a812fa888a587d2cfe6f7904bbebb5497acff5cdadd48723.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af715e8befc46e0494579a4fc583a9662504d1a25754a8e4b983808d39f6d8bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PPKernel/Variantafe6d56c4d153de6a812fa888a587d2cfe6f7904bbebb5497acff5cdadd48723.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78abfa06-b6aa-10db-1c40-aa5d539ca137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ix_eq_empty (_hT : 0 ≤ T) {x : ℝ} (hx : T < |x|) : Ix T x = ∅ := by
  unfold Ix
  apply Set.Icc_eq_empty
  intro hle
  have h1 : T - x ≤ 2 * T := le_trans (le_max_left _ _) (hle.trans (min_le_right _ _))
  have h2 : T ≤ 2 * T - x := le_trans (le_max_right _ _) (hle.trans (min_le_left _ _))
  rcases le_or_gt 0 x with h | h
  · rw [abs_of_nonneg h] at hx; linarith
  · rw [abs_of_neg h] at hx; linarith

/-- On `|x| ≤ T` (and `T ≥ 0`) the window is the honest interval `[max(T−x,T), min(2T−x,2T)]`
with left end ≤ right end, of length `T − |x|`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PPKernel/Variantafe6d56c4d153de6a812fa888a587d2cfe6f7904bbebb5497acff5cdadd48723.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variantafe6d56c4d153de6a812fa888a587d2cfe6f7904bbebb5497acff5cdadd48723.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58f64603997f6b0032f476beef11592a3c6ffce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
