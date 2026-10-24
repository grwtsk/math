# aemeasurable_of_integrable_exp_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed082012-def0-487e-810c-f1b2a73c02dc",
  "kind": "lemma",
  "lexical_name": "aemeasurable_of_integrable_exp_mul",
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
  "slug": "aemeasurable-of-integrable-exp-mul--d365e33b28db2fbe2def7206",
  "source": {
    "blob": "883c2b712afc8fbc98050e857165c78eb6d6840c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d365e33b28db2fbe2def7206314c23bf2cb89ab2deb23275ccc63fe3621766df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed082012-def0-487e-810c-f1b2a73c02dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma aemeasurable_of_integrable_exp_mul (huv : u ≠ v)
    (hu_int : Integrable (fun ω ↦ exp (u * X ω)) μ)
    (hv_int : Integrable (fun ω ↦ exp (v * X ω)) μ) :
    AEMeasurable X μ := by
  by_cases hu : u = 0
  · have hv : v ≠ 0 := ne_of_ne_of_eq huv.symm hu
    exact aemeasurable_of_aemeasurable_exp_mul hv hv_int.aemeasurable
  · exact aemeasurable_of_aemeasurable_exp_mul hu hu_int.aemeasurable

/-- If `exp ((v + t) * X)` and `exp ((v - t) * X)` are integrable, then
`ω ↦ exp (t * |X| + v * X)` is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `883c2b712afc8fbc98050e857165c78eb6d6840c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
