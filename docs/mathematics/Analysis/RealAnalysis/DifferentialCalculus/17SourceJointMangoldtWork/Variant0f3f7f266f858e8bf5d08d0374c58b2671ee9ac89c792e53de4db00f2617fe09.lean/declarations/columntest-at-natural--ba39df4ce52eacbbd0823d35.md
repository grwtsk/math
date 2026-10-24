# columnTest_at_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07bcceb5-686d-283e-0cd7-48054fbc94d8",
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
  "slug": "columntest-at-natural--ba39df4ce52eacbbd0823d35",
  "source": {
    "blob": "2437b4664b215885ec01d74e11541f0be6909cd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/17SourceJointMangoldtWork/Variant0f3f7f266f858e8bf5d08d0374c58b2671ee9ac89c792e53de4db00f2617fe09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba39df4ce52eacbbd0823d35d2a0b407b8fb4ca3bfa54ad60cf9106adb5ceb05",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/17SourceJointMangoldtWork/Variant0f3f7f266f858e8bf5d08d0374c58b2671ee9ac89c792e53de4db00f2617fe09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07bcceb5-686d-283e-0cd7-48054fbc94d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–101.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/17SourceJointMangoldtWork/Variant0f3f7f266f858e8bf5d08d0374c58b2671ee9ac89c792e53de4db00f2617fe09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/17SourceJointMangoldtWork/Variant0f3f7f266f858e8bf5d08d0374c58b2671ee9ac89c792e53de4db00f2617fe09.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2437b4664b215885ec01d74e11541f0be6909cd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
