# actualSignedZeroHeightShell_eq_head_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f06a3686-9d3a-a62d-e411-96b2fb8e1275",
  "kind": "theorem",
  "lexical_name": "actualSignedZeroHeightShell_eq_head_sub",
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
  "slug": "actualsignedzeroheightshell-eq-head-sub--25e44e55b34c2aeb3c4612cb",
  "source": {
    "blob": "f8571d5cd300f8c5b72bb838f6c759f766ab16a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Variantd8796f9b18a59ab9a6d4ac3bc0360cf30e103fe5d54de13b6e40a0d9894fd89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25e44e55b34c2aeb3c4612cbd4b0f26b7c35ad2f9eb9aeea084e1eab8d9af674",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Variantd8796f9b18a59ab9a6d4ac3bc0360cf30e103fe5d54de13b6e40a0d9894fd89a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f06a3686-9d3a-a62d-e411-96b2fb8e1275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSignedZeroHeightShell_eq_head_sub (A R1 R2 : ℝ) (hR : R1 ≤ R2) :
    actualSignedZeroHeightShell A R1 R2 =
      actualZeroHeightHead A R2 - actualZeroHeightHead A R1 := by
  classical
  let F := (actualZeroHeightHead_finite R2).toFinset
  have hf : F.filter (fun rho : (zetaZeros zetaSeam).carrier => |(rho : ℂ).im| < R1) =
      (actualZeroHeightHead_finite R1).toFinset := by
    ext rho
    simp only [F, mem_filter, Set.Finite.mem_toFinset, Set.mem_ofPred_eq]
    constructor
    · exact fun h => h.2
    · exact fun h => ⟨h.trans_le hR, h⟩
  have hs := Finset.sum_filter_add_sum_filter_not F
    (fun rho => |(rho : ℂ).im| < R1)
    (fun rho => ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho)
  simp only [not_lt, hf] at hs
  change actualZeroHeightHead A R1 + actualSignedZeroHeightShell A R1 R2 =
    actualZeroHeightHead A R2 at hs
  linear_combination hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Variantd8796f9b18a59ab9a6d4ac3bc0360cf30e103fe5d54de13b6e40a0d9894fd89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Variantd8796f9b18a59ab9a6d4ac3bc0360cf30e103fe5d54de13b6e40a0d9894fd89a.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8571d5cd300f8c5b72bb838f6c759f766ab16a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
