# mgf_anti_of_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17f19e29a104382b33c6b64c5a3099841eef1c44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb109ae5-ebce-382c-9783-dd899f343d0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8503f957-0fa6-8c86-f812-226ce62437d4",
  "kind": "lemma",
  "lexical_name": "mgf_anti_of_nonpos",
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
  "slug": "mgf-anti-of-nonpos--51040d27dbb6cf31cb155f64",
  "source": {
    "blob": "17f19e29a104382b33c6b64c5a3099841eef1c44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 274,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51040d27dbb6cf31cb155f648b4ee76614f019b17949c701ca7e4bfb97d58dd4",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8503f957-0fa6-8c86-f812-226ce62437d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mgf_anti_of_nonpos {Y : Ω → ℝ} (hXY : X ≤ᵐ[μ] Y) (ht : t ≤ 0)
    (htX : Integrable (fun ω ↦ exp (t * X ω)) μ) :
    mgf Y μ t ≤ mgf X μ t := by
  by_cases htY : Integrable (fun ω ↦ exp (t * Y ω)) μ
  · refine integral_mono_ae htY htX ?_
    filter_upwards [hXY] with ω hω using exp_monotone <| mul_le_mul_of_nonpos_left hω ht
  · rw [mgf_undef htY]
    exact mgf_nonneg

section IndepFun

/-- This is a trivial application of `IndepFun.comp` but it will come up frequently. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f19e29a104382b33c6b64c5a3099841eef1c44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
