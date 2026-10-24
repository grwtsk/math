# columnTest_at_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:397e6ffc-0a79-78dd-aa5c-b6bdca1407c4",
  "kind": "theorem",
  "lexical_name": "columnTest_at_natural",
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
  "slug": "columntest-at-natural--0a15abd9d2ca1f4571e749c5",
  "source": {
    "blob": "bb795d728c027304c41bb4160eb7be27eb97896b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/156a705b42c568f74a02SourceConstantOffsetCancellation/Variant8f564844a447d2103f40c088e71555e5d850af562766a7d3b00e549f6371b6b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a15abd9d2ca1f4571e749c550a0c82f8c34deead63f586536f3d2ec2ab006e6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/156a705b42c568f74a02SourceConstantOffsetCancellation/Variant8f564844a447d2103f40c088e71555e5d850af562766a7d3b00e549f6371b6b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:397e6ffc-0a79-78dd-aa5c-b6bdca1407c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem columnTest_at_natural (A : ℝ) (m k : ℕ)
    (hm : 0 < m) (hk : 0 < k) :
    columnTest A k (Real.log (m : ℝ)) / (m : ℝ) =
      sourcePlainWeight A ((m * k : ℕ) : ℝ) := by
  have hm0 : 0 < (m : ℝ) := by exact_mod_cast hm
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast hk
  unfold columnTest sourcePlainWeight
  rw [Real.exp_half, Real.exp_log hm0, Nat.cast_mul,
    Real.log_mul hm0.ne' hk0.ne', Real.sqrt_mul hm0.le]
  calc
    Real.sqrt (m : ℝ) / Real.sqrt (k : ℝ) *
        sourceCorrelation explicitSecondDerivative A
          (Real.log (m : ℝ) + Real.log (k : ℝ)) / (m : ℝ) =
      (Real.sqrt (m : ℝ) / (m : ℝ)) *
        sourceCorrelation explicitSecondDerivative A
          (Real.log (m : ℝ) + Real.log (k : ℝ)) / Real.sqrt (k : ℝ) := by ring
    _ = _ := by rw [Real.sqrt_div_self]; ring


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/156a705b42c568f74a02SourceConstantOffsetCancellation/Variant8f564844a447d2103f40c088e71555e5d850af562766a7d3b00e549f6371b6b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/156a705b42c568f74a02SourceConstantOffsetCancellation/Variant8f564844a447d2103f40c088e71555e5d850af562766a7d3b00e549f6371b6b1.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb795d728c027304c41bb4160eb7be27eb97896b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
