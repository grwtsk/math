# columnTest_at_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fd27d10f65961217a24ee3c571e54b169bc9401",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1720c78d-2747-938c-e399-b6a3fc06931c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2405af15-2585-10e7-5286-25f4530c164d",
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
  "slug": "columntest-at-natural--38520b2178c7b4fc1025ad8d",
  "source": {
    "blob": "5fd27d10f65961217a24ee3c571e54b169bc9401",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38520b2178c7b4fc1025ad8d99e3fdb02c47b8bb696715272cb616781a8484b8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2405af15-2585-10e7-5286-25f4530c164d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–92.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd27d10f65961217a24ee3c571e54b169bc9401` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
