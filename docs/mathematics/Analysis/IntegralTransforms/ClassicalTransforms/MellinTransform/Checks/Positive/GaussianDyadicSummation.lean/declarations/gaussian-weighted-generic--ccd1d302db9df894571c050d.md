# gaussian_weighted_generic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6e9a7a5ab6a0da7ba850f6307176abaa4b4d29f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 12,
      "path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46d8b0cf-3636-ce5f-d4be-7977429605d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11aec450-3435-d7a3-128d-070a5b9d4e21",
  "kind": "theorem",
  "lexical_name": "gaussian_weighted_generic",
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
  "slug": "gaussian-weighted-generic--ccd1d302db9df894571c050d",
  "source": {
    "blob": "c6e9a7a5ab6a0da7ba850f6307176abaa4b4d29f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17,
    "line": 12,
    "path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccd1d302db9df894571c050d66f8cd7c91b66ae30c9466bea5a89c8ac24b3339",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11aec450-3435-d7a3-128d-070a5b9d4e21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–17.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussian_weighted_generic (s : ℝ) (hs : 0<s) (S : Finset (ℕ×ℕ)) :
    ∃ C : ℝ, 0<C ∧ ∀ Z : ℝ, ∀ hZ : 0<Z,
      Summable (fun j : ℕ => ((2:ℝ)^j)^s*S.sup (schwartzSeminormFamily ℝ ℝ ℂ) (gaussianDyadicSchwartz Z hZ j)) ∧
      (∑' j : ℕ, ((2:ℝ)^j)^s*S.sup (schwartzSeminormFamily ℝ ℝ ℂ) (gaussianDyadicSchwartz Z hZ j)) ≤ C*Z^s :=
  gaussianDyadicSchwartz_summed s hs S

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6e9a7a5ab6a0da7ba850f6307176abaa4b4d29f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
