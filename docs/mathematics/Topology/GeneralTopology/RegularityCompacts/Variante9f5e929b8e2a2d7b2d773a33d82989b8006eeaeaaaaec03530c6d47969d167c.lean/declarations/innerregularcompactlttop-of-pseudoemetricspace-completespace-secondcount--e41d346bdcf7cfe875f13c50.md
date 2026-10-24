# InnerRegularCompactLTTop_of_pseudoEMetricSpace_completeSpace_secondCountable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbed3d989940e3b3717eaa761a489438518f949e74ab20cd08aac35c6425d3a0",
  "kind": "instance",
  "lexical_name": "InnerRegularCompactLTTop_of_pseudoEMetricSpace_completeSpace_secondCountable",
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
  "slug": "innerregularcompactlttop-of-pseudoemetricspace-completespace-secondcount--e41d346bdcf7cfe875f13c50",
  "source": {
    "blob": "33bd25384eb2abe88ef3f47a23b70756efe52abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 201,
    "path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e41d346bdcf7cfe875f13c500486c1f1bbb7840930c6bbd4c47c5f0d664fd52c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbed3d989940e3b3717eaa761a489438518f949e74ab20cd08aac35c6425d3a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance InnerRegularCompactLTTop_of_pseudoEMetricSpace_completeSpace_secondCountable
    [PseudoEMetricSpace α] [CompleteSpace α] [SecondCountableTopology α] [BorelSpace α]
    (μ : Measure α) :
    μ.InnerRegularCompactLTTop := by
  constructor
  intro A ⟨hA1, hA2⟩ r hr
  have := Fact.mk hA2.lt_top
  have hA2' : (μ.restrict A) A ≠ ⊤ := by
    rwa [Measure.restrict_apply_self]
  have hr' : r < μ.restrict A A := by
    rwa [Measure.restrict_apply_self]
  obtain ⟨K, ⟨hK1, hK2, hK3⟩⟩ := MeasurableSet.exists_lt_isCompact_of_ne_top hA1 hA2' hr'
  use K, hK1, hK2
  rwa [Measure.restrict_eq_self μ hK1] at hK3

/--
A special case of `innerRegularCompactLTTop_of_pseudoEMetricSpace_completeSpace_secondCountable`
for Polish spaces: A measure `μ` on a Polish space inner regular for finite measure sets with
respect to compact sets.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33bd25384eb2abe88ef3f47a23b70756efe52abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
