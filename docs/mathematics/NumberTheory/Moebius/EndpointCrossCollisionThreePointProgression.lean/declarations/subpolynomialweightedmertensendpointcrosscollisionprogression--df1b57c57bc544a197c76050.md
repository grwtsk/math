# SubpolynomialWeightedMertensEndpointCrossCollisionProgression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a077655121ef6a36af2b2e6d2363856891ca30949d8b8c82b3967bbc19f1fd0",
  "kind": "def",
  "lexical_name": "SubpolynomialWeightedMertensEndpointCrossCollisionProgression",
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
  "slug": "subpolynomialweightedmertensendpointcrosscollisionprogression--df1b57c57bc544a197c76050",
  "source": {
    "blob": "60832bdd30318040a29d3be790717f33c04e4df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 258,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df1b57c57bc544a197c76050c38f894cbcaa77249cecec2151f3b906d498796a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a077655121ef6a36af2b2e6d2363856891ca30949d8b8c82b3967bbc19f1fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SubpolynomialWeightedMertensEndpointCrossCollisionProgression : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensEndpointCrossCollisionProgressionEnergy j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_mertensEndpointForwardCross_eq_progression
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_mertensEndpointBackwardCross_eq_progression
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensEndpointFibreCrossCollisionEnergy_eq_progression
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensEndpointCrossCollisionEnergy_eq_progression
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60832bdd30318040a29d3be790717f33c04e4df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
