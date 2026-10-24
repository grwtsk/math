# Metric.exists_subseq_summable_dist_of_cauchySeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9e571b4-2149-a924-4f7d-58f45333d1c7",
  "kind": "lemma",
  "lexical_name": "Metric.exists_subseq_summable_dist_of_cauchySeq",
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
  "slug": "metric-exists-subseq-summable-dist-of-cauchyseq--150519d711bd55ffd30db0d4",
  "source": {
    "blob": "8b7d4e7ad15f002b2dcea99cff75cada24ca325e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 47,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:150519d711bd55ffd30db0d418b116b09e4dcee821ccbbad9c38622b686544c7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9e571b4-2149-a924-4f7d-58f45333d1c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Metric.exists_subseq_summable_dist_of_cauchySeq (u : ℕ → α) (hu : CauchySeq u) :
    ∃ f : ℕ → ℕ, StrictMono f ∧ Summable fun i => dist (u (f (i+1))) (u (f i)) := by
  obtain ⟨f, hf₁, hf₂⟩ := Metric.exists_subseq_bounded_of_cauchySeq u hu
    (fun n => (1 / (2 : ℝ))^n) (fun n => by positivity)
  refine ⟨f, hf₁, ?_⟩
  refine Summable.of_nonneg_of_le (fun n => by positivity) ?_ summable_geometric_two
  exact fun n => le_of_lt <| hf₂ n (f (n+1)) <| hf₁.monotone (Nat.le_add_right n 1)

end Metric

section Normed

variable {E : Type*} [NormedAddCommGroup E]

/-- A normed additive group is complete if any absolutely convergent series converges in the
space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Completeness/Variantf6876a451d3d0acff5a09515785f8590b6ff77fe23896c7c9aaa4d111ea555f4.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b7d4e7ad15f002b2dcea99cff75cada24ca325e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
