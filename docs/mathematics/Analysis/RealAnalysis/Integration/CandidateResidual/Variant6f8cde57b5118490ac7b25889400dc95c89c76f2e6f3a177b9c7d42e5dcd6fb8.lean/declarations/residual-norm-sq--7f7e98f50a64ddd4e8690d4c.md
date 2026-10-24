# residual_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21630135358a7e81c299af94af1f85514d3c2caa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af5c5bbf-a7e6-3ddc-3dce-ee6de19ba262",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05012e65-16c4-2904-063f-2a007004abca",
  "kind": "theorem",
  "lexical_name": "residual_norm_sq",
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
  "slug": "residual-norm-sq--7f7e98f50a64ddd4e8690d4c",
  "source": {
    "blob": "21630135358a7e81c299af94af1f85514d3c2caa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f7e98f50a64ddd4e8690d4c10a2725cea8105b8d4431a7bf680312ca6b28076",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05012e65-16c4-2904-063f-2a007004abca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_norm_sq (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      ‖1 / (1 + (t : ℂ) * Complex.I) - actualLaplace ((t : ℂ) * Complex.I) *
        candidate X ε h ((t : ℂ) * Complex.I)‖ ^ 2) ∧
      ‖referenceVector - sourceOperator (controller X hX ε h hε hh hh1)‖ ^ 2 =
        (1 / (2 * Real.pi)) * ∫ t : ℝ,
          ‖1 / (1 + (t : ℂ) * Complex.I) - actualLaplace ((t : ℂ) * Complex.I) *
            candidate X ε h ((t : ℂ) * Complex.I)‖ ^ 2 := by
  have he := angular_plancherel _ (residual_integrable X hX ε h hε hh hh1)
    (fun t : ℝ => 1 / (1 + (t : ℂ) * Complex.I) -
      actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I))
    (residual_fourier X hX ε h hε hh hh1)
  simpa only [LinearIsometry.norm_map] using he

/-- The admitted original controller satisfies the complete signed residual bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21630135358a7e81c299af94af1f85514d3c2caa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
