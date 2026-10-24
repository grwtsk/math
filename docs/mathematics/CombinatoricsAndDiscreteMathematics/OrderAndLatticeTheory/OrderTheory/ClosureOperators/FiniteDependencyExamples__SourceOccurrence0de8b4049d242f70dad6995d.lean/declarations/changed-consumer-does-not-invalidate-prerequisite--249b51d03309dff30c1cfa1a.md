# changed_consumer_does_not_invalidate_prerequisite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2eca3cc-fb1d-a6a5-db37-c134d32ddfbd",
  "kind": "theorem",
  "lexical_name": "changed_consumer_does_not_invalidate_prerequisite",
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
  "slug": "changed-consumer-does-not-invalidate-prerequisite--249b51d03309dff30c1cfa1a",
  "source": {
    "blob": "c0fb4b806bbb430c80642390811538e7ddff949a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Closure/FiniteDependencyExamples.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:249b51d03309dff30c1cfa1a4ac720a4b1a542ff088169b83b3ae85106db1a1a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyExamples__SourceOccurrence0de8b4049d242f70dad6995d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2eca3cc-fb1d-a6a5-db37-c134d32ddfbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem changed_consumer_does_not_invalidate_prerequisite :
    affectedClosure cyclicDependencies {0} = {0, 1, 3} := by
  have hfirst : dependencyStep cyclicDependencies {0} ≠ {0} := by decide
  have hfirst_eq : dependencyStep cyclicDependencies {0} = {0, 1} := by decide
  have hsecond : dependencyStep cyclicDependencies {0, 1} ≠ {0, 1} := by decide
  have hsecond_eq : dependencyStep cyclicDependencies {0, 1} = {0, 1, 3} := by decide
  rw [affectedClosure, dif_neg hfirst, hfirst_eq]
  rw [affectedClosure, dif_neg hsecond, hsecond_eq]
  apply affectedClosure_eq_of_closed
  exact (dependencyStep_eq_iff_closed cyclicDependencies {0, 1, 3}).mp (by decide)

end DependencyFixtures

end GRWTSK.ProofHorizon.CorkscrewChamberCap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyExamples__SourceOccurrence0de8b4049d242f70dad6995d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Order/Closure/FiniteDependencyExamples.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0fb4b806bbb430c80642390811538e7ddff949a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
