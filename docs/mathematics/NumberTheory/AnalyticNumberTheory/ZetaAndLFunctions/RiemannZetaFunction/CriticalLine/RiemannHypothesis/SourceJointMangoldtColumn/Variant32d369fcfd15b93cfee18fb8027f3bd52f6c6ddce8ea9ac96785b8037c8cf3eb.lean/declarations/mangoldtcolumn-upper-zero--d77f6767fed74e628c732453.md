# mangoldtColumn_upper_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:002b5cc4-e43a-fe2e-2610-7e0a55b8285b",
  "kind": "theorem",
  "lexical_name": "mangoldtColumn_upper_zero",
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
  "slug": "mangoldtcolumn-upper-zero--d77f6767fed74e628c732453",
  "source": {
    "blob": "5dbe8f74db5fbf928d337f4cc48ecdef7b0d1726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceJointMangoldtColumn/Variant32d369fcfd15b93cfee18fb8027f3bd52f6c6ddce8ea9ac96785b8037c8cf3eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d77f6767fed74e628c732453a0d48d21104593203d5a895c0e4d75f32fa78b27",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceJointMangoldtColumn/Variant32d369fcfd15b93cfee18fb8027f3bd52f6c6ddce8ea9ac96785b8037c8cf3eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:002b5cc4-e43a-fe2e-2610-7e0a55b8285b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mangoldtColumn_upper_zero (A : ℝ) (hA : 1 ≤ A) :
    mangoldtColumn A (sourceKernelCutoff A) = 0 := by
  classical
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : 1 ≤ sourceKernelCutoff A := hU.trans hUN
  apply Finset.sum_eq_zero
  intro m hm
  have hmU := (Finset.mem_Ioc.mp hm).1
  have hm2 : 2 ≤ m := by omega
  have hcut : sourceKernelCutoff A < m * sourceKernelCutoff A := by nlinarith
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m * sourceKernelCutoff A) hcut]
  exact mul_zero _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceJointMangoldtColumn/Variant32d369fcfd15b93cfee18fb8027f3bd52f6c6ddce8ea9ac96785b8037c8cf3eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceJointMangoldtColumn/Variant32d369fcfd15b93cfee18fb8027f3bd52f6c6ddce8ea9ac96785b8037c8cf3eb.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dbe8f74db5fbf928d337f4cc48ecdef7b0d1726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
