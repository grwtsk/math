# dyadicOrdinaryMertensGeometricEnvelope_of_pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b52ed42-e07b-439c-d00f-7e3813c4b269",
  "kind": "theorem",
  "lexical_name": "dyadicOrdinaryMertensGeometricEnvelope_of_pointwise",
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
  "slug": "dyadicordinarymertensgeometricenvelope-of-pointwise--ed7c1754ac45ce1a155a3f66",
  "source": {
    "blob": "c733396529d16479328faf49cf014faa96699ad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 260,
    "path": "GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed7c1754ac45ce1a155a3f6645e0d789a220c722ab7a956f7d62b45d7098158e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b52ed42-e07b-439c-d00f-7e3813c4b269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicOrdinaryMertensGeometricEnvelope_of_pointwise
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope) :
    DyadicOrdinaryMertensGeometricEnvelope := by
  intro δ hδ
  obtain ⟨C, hC, hM⟩ :=
    hPoint (pointwiseMertensDyadicEpsilon δ)
      (by unfold pointwiseMertensDyadicEpsilon; positivity)
  refine ⟨
    C * pointwiseMertensDyadicConstantFactor δ,
    pointwiseMertensDyadicRatio δ,
    mul_nonneg hC (by
      unfold pointwiseMertensDyadicConstantFactor
      positivity),
    pointwiseMertensDyadicRatio_nonneg δ,
    pointwiseMertensDyadicRatio_lt_one hδ,
    ?_⟩
  intro j b hb t
  have hbUpper : b < 2 ^ (j + 1) :=
    (Finset.mem_Ico.mp hb).2
  constructor
  · exact ordinaryMertens_descendant_le_geometric
      hδ hC hM hbUpper le_rfl
  · apply ordinaryMertens_descendant_le_geometric
      hδ hC hM hbUpper
    exact Nat.div_le_div_right (Nat.div_le_self b 2)

/-- Constructed value of the proof-relevant adapter left open by PR #616. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c733396529d16479328faf49cf014faa96699ad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
