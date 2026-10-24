# conductorThreeVaughanRight_block_l2_harmonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e180d64b3f2fd925e10fca849b5d7436e02520f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5c71034ead1cadc70d0382560a148e46acdd594ff326997334bc5e4c467f1df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b88ca7b-65a4-b23c-bd54-eaca42050020",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0c795cd-75a3-8bd0-7513-3e5a217ca120",
  "kind": "theorem",
  "lexical_name": "conductorThreeVaughanRight_block_l2_harmonic",
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
  "slug": "conductorthreevaughanright-block-l2-harmonic--70b94c23d07b1d241d527d08",
  "source": {
    "blob": "e180d64b3f2fd925e10fca849b5d7436e02520f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variantc5c71034ead1cadc70d0382560a148e46acdd594ff326997334bc5e4c467f1df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70b94c23d07b1d241d527d08789b04517b33d0e9c57890aff54950623e6a0ffc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variantc5c71034ead1cadc70d0382560a148e46acdd594ff326997334bc5e4c467f1df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0c795cd-75a3-8bd0-7513-3e5a217ca120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeVaughanRight_block_l2_harmonic {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    ‖blockRightEuclideanCoefficient B‖ ≤
      Real.sqrt ((vaughanFourthRootCutoff N : ℝ) *
        (2 * B.K : ℝ) *
        (harmonic (vaughanFourthRootCutoff N) : ℝ)) := by
  have hharmonic : 0 ≤
      (harmonic (vaughanFourthRootCutoff N) : ℝ) := by
    exact (Real.log_nonneg (by
      exact_mod_cast (show 1 ≤ vaughanFourthRootCutoff N + 1 by omega))).trans
      (log_add_one_le_harmonic (vaughanFourthRootCutoff N))
  apply (Real.le_sqrt (norm_nonneg _)
    (by
      exact mul_nonneg (mul_nonneg (by positivity) (by positivity)) hharmonic : 0 ≤
      (vaughanFourthRootCutoff N : ℝ) * (2 * B.K : ℝ) *
        (harmonic (vaughanFourthRootCutoff N) : ℝ))).2
  exact (blockRight_norm_sq_le_secondMoment B).trans (by
    simpa only [Nat.cast_mul, Nat.cast_ofNat] using
      conductorThreeVaughanRightSecondMoment_le_harmonic
        (vaughanFourthRootCutoff N) (2 * B.K))

/-- Sharp harmonic-cube energy bound for one dyadic right block. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variantc5c71034ead1cadc70d0382560a148e46acdd594ff326997334bc5e4c467f1df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variantc5c71034ead1cadc70d0382560a148e46acdd594ff326997334bc5e4c467f1df.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e180d64b3f2fd925e10fca849b5d7436e02520f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
