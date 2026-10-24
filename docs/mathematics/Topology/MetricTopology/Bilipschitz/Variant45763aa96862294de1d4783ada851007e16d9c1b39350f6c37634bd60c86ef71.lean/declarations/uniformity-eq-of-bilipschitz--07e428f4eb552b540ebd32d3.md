# uniformity_eq_of_bilipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d060c0a3-38dd-3bd7-5884-9397e7d9263b",
  "kind": "lemma",
  "lexical_name": "uniformity_eq_of_bilipschitz",
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
  "slug": "uniformity-eq-of-bilipschitz--07e428f4eb552b540ebd32d3",
  "source": {
    "blob": "e2fc88f43d20b68098907838afb2dff0cf2018de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 64,
    "path": "GRWTSK/Topology/MetricTopology/Bilipschitz/Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07e428f4eb552b540ebd32d35ea1d0c8d4e8f90392b83588826ac3646bcbe81f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Bilipschitz/Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d060c0a3-38dd-3bd7-5884-9397e7d9263b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uniformity_eq_of_bilipschitz (hf₁ : AntilipschitzWith K₁ f) (hf₂ : LipschitzWith K₂ f) :
    𝓤[(inferInstance : UniformSpace β).comap f] = 𝓤 α :=
  hf₁.isUniformInducing hf₂.uniformContinuous |>.comap_uniformity

end Uniformity

section Bornology

open Bornology Filter

variable {α β : Type*} [PseudoMetricSpace α] [PseudoMetricSpace β]
variable {K₁ K₂ : ℝ≥0} {f : α → β}

/-- If `f : α → β` is bilipschitz, then the pullback of the bornology on `β` through `f` agrees
with the bornology on `α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Bilipschitz/Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Bilipschitz/Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2fc88f43d20b68098907838afb2dff0cf2018de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
