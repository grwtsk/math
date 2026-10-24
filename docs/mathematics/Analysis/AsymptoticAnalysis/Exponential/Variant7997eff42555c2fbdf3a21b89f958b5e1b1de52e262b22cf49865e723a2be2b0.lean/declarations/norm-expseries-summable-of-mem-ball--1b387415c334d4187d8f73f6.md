# norm_expSeries_summable_of_mem_ball'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04c84dc9-8d3a-19e3-fc6a-b947a0929cf6",
  "kind": "theorem",
  "lexical_name": "norm_expSeries_summable_of_mem_ball'",
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
  "slug": "norm-expseries-summable-of-mem-ball--1b387415c334d4187d8f73f6",
  "source": {
    "blob": "bfcd7600f39869f55fb9e778463756b4ddae7fb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 209,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant7997eff42555c2fbdf3a21b89f958b5e1b1de52e262b22cf49865e723a2be2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b387415c334d4187d8f73f67721526bef19259dc89ea205ef1404abab4a410e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exponential/Variant7997eff42555c2fbdf3a21b89f958b5e1b1de52e262b22cf49865e723a2be2b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04c84dc9-8d3a-19e3-fc6a-b947a0929cf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_expSeries_summable_of_mem_ball' (x : 𝔸)
    (hx : x ∈ EMetric.ball (0 : 𝔸) (expSeries 𝕂 𝔸).radius) :
    Summable fun n => ‖(n !⁻¹ : 𝕂) • x ^ n‖ := by
  change Summable (norm ∘ _)
  rw [← expSeries_apply_eq']
  exact norm_expSeries_summable_of_mem_ball x hx
#align norm_exp_series_summable_of_mem_ball' norm_expSeries_summable_of_mem_ball'

section CompleteAlgebra

variable [CompleteSpace 𝔸]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exponential/Variant7997eff42555c2fbdf3a21b89f958b5e1b1de52e262b22cf49865e723a2be2b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant7997eff42555c2fbdf3a21b89f958b5e1b1de52e262b22cf49865e723a2be2b0.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfcd7600f39869f55fb9e778463756b4ddae7fb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
