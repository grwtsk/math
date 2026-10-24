# kernel_sub_half_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5ec6d33-b5d3-e428-e3ae-afc28464d072",
  "kind": "theorem",
  "lexical_name": "kernel_sub_half_abs_le",
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
  "slug": "kernel-sub-half-abs-le--c998193679622fad067c6a3c",
  "source": {
    "blob": "3fb92faea820e9a63f43d697cd847eacabed38da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 117,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant0cfab3209708f77cba73fb49cb8d67b3b1a51373162083547e35c67a07a600c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c998193679622fad067c6a3c816f687eac2df716746cb7daed791915f6b5cae9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant0cfab3209708f77cba73fb49cb8d67b3b1a51373162083547e35c67a07a600c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5ec6d33-b5d3-e428-e3ae-afc28464d072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_sub_half_abs_le (A s : ℝ) (hA : 200 ≤ A) (hs : 0 ≤ s) :
    |kapitzaKernel A s - 1 / 2| ≤ (5 / A ^ 2) * (s + s ^ 2 / 4) := by
  have ht := sourceCorrelation_sub_one_abs_le_five hA s
  have hd := sourceCorrelation_deriv_abs_le_scaled_distance hA s
  rw [abs_of_nonneg hs] at hd
  have hid : kapitzaKernel A s - 1 / 2 =
      (sourceCorrelation explicitSecondDerivative A s - 1) / 2 -
        deriv (sourceCorrelation explicitSecondDerivative A) s := by
    unfold kapitzaKernel
    ring
  rw [hid]
  have htri := abs_sub
    ((sourceCorrelation explicitSecondDerivative A s - 1) / 2)
    (deriv (sourceCorrelation explicitSecondDerivative A) s)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at htri
  linarith

/-- Exact positive finite moment; the real endpoint is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant0cfab3209708f77cba73fb49cb8d67b3b1a51373162083547e35c67a07a600c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant0cfab3209708f77cba73fb49cb8d67b3b1a51373162083547e35c67a07a600c4.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb92faea820e9a63f43d697cd847eacabed38da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
