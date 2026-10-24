# conductorThreeDiscreteWeightedSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:089593b0af8e24c372156b8017a1c4fd64b157d01d2d201b31904398980f4dac",
  "kind": "def",
  "lexical_name": "conductorThreeDiscreteWeightedSum",
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
  "slug": "conductorthreediscreteweightedsum--cf1cc45c9ab3f554c3cd9856",
  "source": {
    "blob": "2cc6943dbc28d767b787ae0aec2de37101ab3926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant37b67747d7e393ec385740d7b0be2748326c407f9f5b3ee203210c4a7ffa786b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf1cc45c9ab3f554c3cd985645eccf3b8e66d497f1481e4f03c54f9a836e4a07",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant37b67747d7e393ec385740d7b0be2748326c407f9f5b3ee203210c4a7ffa786b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:089593b0af8e24c372156b8017a1c4fd64b157d01d2d201b31904398980f4dac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conductorThreeDiscreteWeightedSum (N : ℕ) (weight : ℕ → ℝ) : ℝ :=
  ∑ n ∈ Finset.range (2 * N + 1),
    twistedVonMangoldtThree n * weight n

/-- Uniform half-plus-epsilon control for discrete BV test multipliers.

This is a genuine maximal signed estimate.  Unlike finite-order weighted
`L∞` derivative control, it admits moving sharp cutoffs with a uniform cost.
-/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant37b67747d7e393ec385740d7b0be2748326c407f9f5b3ee203210c4a7ffa786b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant37b67747d7e393ec385740d7b0be2748326c407f9f5b3ee203210c4a7ffa786b.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc6943dbc28d767b787ae0aec2de37101ab3926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
