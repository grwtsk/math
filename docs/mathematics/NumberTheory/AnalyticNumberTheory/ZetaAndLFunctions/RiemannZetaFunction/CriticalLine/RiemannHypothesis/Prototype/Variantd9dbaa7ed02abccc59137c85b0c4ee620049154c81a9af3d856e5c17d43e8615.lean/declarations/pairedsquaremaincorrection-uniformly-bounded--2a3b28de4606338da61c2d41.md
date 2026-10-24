# pairedSquareMainCorrection_uniformly_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30b36d82fa2a5d644db8224331af2726f561085a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9dbaa7ed02abccc59137c85b0c4ee620049154c81a9af3d856e5c17d43e8615.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce356ca1-431d-011e-e9d4-4701e2368e1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71516b2d-e593-3fd8-f410-02c24c8d2466",
  "kind": "theorem",
  "lexical_name": "pairedSquareMainCorrection_uniformly_bounded",
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
  "slug": "pairedsquaremaincorrection-uniformly-bounded--2a3b28de4606338da61c2d41",
  "source": {
    "blob": "30b36d82fa2a5d644db8224331af2726f561085a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantd9dbaa7ed02abccc59137c85b0c4ee620049154c81a9af3d856e5c17d43e8615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a3b28de4606338da61c2d41c1ebe45f21d02215e3b8016ca23f9f941330d44b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantd9dbaa7ed02abccc59137c85b0c4ee620049154c81a9af3d856e5c17d43e8615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71516b2d-e593-3fd8-f410-02c24c8d2466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedSquareMainCorrection_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A → |pairedSquareMainCorrection A| ≤ C := by
  obtain ⟨C, hC0, _, hC⟩ := primeSquareMoment_uniform_main_term_error
  refine ⟨11 * C + squarePrefixBaseline, ?_, ?_⟩
  · have hb := squarePrefixBaseline_nonneg
    linarith
  · intro A hA
    have hm0 : 0 ≤ squarePrefixBaseline - squareTailNegativeMean A :=
      sub_nonneg.mpr (squareTailNegativeMean_le_baseline hA)
    have hm : squarePrefixBaseline - squareTailNegativeMean A ≤ squarePrefixBaseline :=
      sub_le_self _ (squareTailNegativeMean_nonneg hA)
    have hs : |diagonalMainCoefficient A * A - primeSquareMoment A| ≤ 11 * C := by
      rw [abs_sub_comm]
      exact hC A hA
    unfold pairedSquareMainCorrection
    exact (abs_add_le _ _).trans (add_le_add hs (by rwa [abs_of_nonneg hm0]))

/-- No piece of the full time-mean minus continuous-half drift is absorbed into a budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantd9dbaa7ed02abccc59137c85b0c4ee620049154c81a9af3d856e5c17d43e8615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantd9dbaa7ed02abccc59137c85b0c4ee620049154c81a9af3d856e5c17d43e8615.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30b36d82fa2a5d644db8224331af2726f561085a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
