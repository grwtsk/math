# classKernelTail_abs_le_harmonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69008a2b-fae3-9351-a512-cad76f73fcf7",
  "kind": "theorem",
  "lexical_name": "classKernelTail_abs_le_harmonic",
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
  "slug": "classkerneltail-abs-le-harmonic--7a47d2a3e89b145e0379f1e6",
  "source": {
    "blob": "b5f80b70b49af1316f76b49a6cbfba65fdc5def4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 152,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a47d2a3e89b145e0379f1e6e35357afa779008a5435b9cb79decd519e83e0a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69008a2b-fae3-9351-a512-cad76f73fcf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classKernelTail_abs_le_harmonic (A : ℝ) (h Y G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    |classKernelTail A h Y G| ≤
      (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
        ∑ g ∈ Ioc Y G, 1 / (g : ℝ) := by
  unfold classKernelTail
  calc
    _ ≤ ∑ g ∈ Ioc Y G, |ThetaRemainder.thetaRemainder A (h * g ^ 2)| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Ioc Y G,
        (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) * (1 / (g : ℝ)) := by
      apply sum_le_sum
      intro g hg
      have hgY := (mem_Ioc.mp hg).1
      exact classKernelTerm_abs_le A h g hA hh (by omega)
    _ = _ := (mul_sum _ _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5f80b70b49af1316f76b49a6cbfba65fdc5def4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
