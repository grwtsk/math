# critical_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c36b0be-cbe1-4e13-c933-fce073c7420f",
  "kind": "theorem",
  "lexical_name": "critical_summable",
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
  "slug": "critical-summable--8040004c73fb8560933671ef",
  "source": {
    "blob": "642f273bf48db2eea0f55eec0801f739ca56a36c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/07SourceActualFullCriticalPartition/Variant8761e306855667df11eb933f7a4c203ca53073570f13a2030178725cd6ac5fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8040004c73fb8560933671efe22ea8de9240800b94c16d96612e9341acd28188",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/07SourceActualFullCriticalPartition/Variant8761e306855667df11eb933f7a4c203ca53073570f13a2030178725cd6ac5fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c36b0be-cbe1-4e13-c933-fce073c7420f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem critical_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
      if (ρ : ℂ).re = 1 / 2 then
        ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0) := by
  apply (actualFullZeroContribution_summable A hA).norm.of_norm_bounded
  intro ρ
  by_cases hρ : (ρ : ℂ).re = 1 / 2
  · simp only [hρ, if_true, le_refl]
  · simp only [hρ, if_false, norm_zero]
    exact norm_nonneg _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/07SourceActualFullCriticalPartition/Variant8761e306855667df11eb933f7a4c203ca53073570f13a2030178725cd6ac5fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/07SourceActualFullCriticalPartition/Variant8761e306855667df11eb933f7a4c203ca53073570f13a2030178725cd6ac5fa0.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `642f273bf48db2eea0f55eec0801f739ca56a36c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
