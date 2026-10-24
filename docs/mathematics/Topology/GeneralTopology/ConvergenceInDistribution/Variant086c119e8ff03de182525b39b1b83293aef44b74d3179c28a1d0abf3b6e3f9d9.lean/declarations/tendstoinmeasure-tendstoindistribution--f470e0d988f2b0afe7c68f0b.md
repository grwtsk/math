# TendstoInMeasure.tendstoInDistribution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf771282-0f13-eea4-5528-72cd85960f2d",
  "kind": "theorem",
  "lexical_name": "TendstoInMeasure.tendstoInDistribution",
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
  "slug": "tendstoinmeasure-tendstoindistribution--f470e0d988f2b0afe7c68f0b",
  "source": {
    "blob": "a1d2e9c667e753dfbcc5ade3cb0276aa30808ded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f470e0d988f2b0afe7c68f0b831ec5c14681115cfa0726b3741fda8531294d53",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf771282-0f13-eea4-5528-72cd85960f2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoInMeasure.tendstoInDistribution [PseudoEMetricSpace E] [BorelSpace E]
    [l.IsCountablyGenerated] [l.NeBot] {X : ι → Ω' → E}
    (h : TendstoInMeasure μ' X l Z) (hX : ∀ i, AEMeasurable (X i) μ') :
    TendstoInDistribution X l Z (fun _ ↦ μ') μ' := by
  have hZ := h.aemeasurable hX
  refine ⟨hX, hZ, ?_⟩
  refine Filter.tendsto_of_subseq_tendsto (fun ns hns ↦ ?_)
  obtain ⟨ms, hms1, hms2⟩ := h.comp hns |>.exists_seq_tendsto_ae'
  refine ⟨ms, TendstoInDistribution.tendsto ?_⟩
  exact tendstoInDistribution_of_ae_tendsto (by fun_prop) hZ hms2

variable [SeminormedAddCommGroup E] [SecondCountableTopology E] [BorelSpace E]

set_option backward.isDefEq.respectTransparency.types false in
/-- Let `X, Y` be two sequences of measurable functions such that `X n` converges in distribution
to `Z`, and `Y n - X n` converges in probability to `0`.
Then `Y n` converges in distribution to `Z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1d2e9c667e753dfbcc5ade3cb0276aa30808ded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
