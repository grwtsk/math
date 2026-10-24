# exists_nat_nat_continuous_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ba66b7f-2c02-9662-0fae-36018ad1a5eb",
  "kind": "theorem",
  "lexical_name": "exists_nat_nat_continuous_surjective",
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
  "slug": "exists-nat-nat-continuous-surjective--b0fe908c6cb9e4d4ad040707",
  "source": {
    "blob": "4c64f6a336b6863be575f3d9eacbd6e4aa76f6eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0fe908c6cb9e4d4ad0407073b6ac25b7eba0ffeccdce30c107a6f835e996bf1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ba66b7f-2c02-9662-0fae-36018ad1a5eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nat_nat_continuous_surjective (α : Type*) [TopologicalSpace α] [PolishSpace α]
    [Nonempty α] : ∃ f : (ℕ → ℕ) → α, Continuous f ∧ Surjective f :=
  letI := upgradeIsCompletelyMetrizable α
  exists_nat_nat_continuous_surjective_of_completeSpace α

/-- Given a closed embedding into a Polish space, the source space is also Polish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c64f6a336b6863be575f3d9eacbd6e4aa76f6eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
