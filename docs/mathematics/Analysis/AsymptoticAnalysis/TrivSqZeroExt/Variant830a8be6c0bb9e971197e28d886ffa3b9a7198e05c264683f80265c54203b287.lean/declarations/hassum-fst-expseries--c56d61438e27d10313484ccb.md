# hasSum_fst_expSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61c063dc-2a78-2250-d690-06a144c03f21",
  "kind": "theorem",
  "lexical_name": "hasSum_fst_expSeries",
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
  "slug": "hassum-fst-expseries--c56d61438e27d10313484ccb",
  "source": {
    "blob": "71bc66c7f2f2bd3b9e9a2b73ab0694d29e30573b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 56,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c56d61438e27d10313484ccb3b7a5ecb2314bd7ea9557b5c6f7488fdb399cdc0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61c063dc-2a78-2250-d690-06a144c03f21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_fst_expSeries [Field 𝕜] [Ring R] [AddCommGroup M] [Algebra 𝕜 R] [Module R M]
    [Module Rᵐᵒᵖ M] [SMulCommClass R Rᵐᵒᵖ M] [Module 𝕜 M] [IsScalarTower 𝕜 R M]
    [IsScalarTower 𝕜 Rᵐᵒᵖ M] [TopologicalRing R] [TopologicalAddGroup M] [ContinuousSMul R M]
    [ContinuousSMul Rᵐᵒᵖ M] (x : tsze R M) {e : R}
    (h : HasSum (fun n => expSeries 𝕜 R n fun _ => x.fst) e) :
    HasSum (fun n => fst (expSeries 𝕜 (tsze R M) n fun _ => x)) e := by
  simpa [expSeries_apply_eq] using h
#align triv_sq_zero_ext.has_sum_fst_exp_series TrivSqZeroExt.hasSum_fst_expSeries

/-- If `exp R x.fst` converges to `e` then `(exp R x).snd` converges to `e • x.snd`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71bc66c7f2f2bd3b9e9a2b73ab0694d29e30573b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
