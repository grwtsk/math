# mem_between_runtime_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c465d04-267e-273e-c9f2-c0ddee5a9ac9",
  "kind": "theorem",
  "lexical_name": "mem_between_runtime_iff",
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
  "slug": "mem-between-runtime-iff--74b260b7e3397e5bff13dce9",
  "source": {
    "blob": "73e9f352278cc319b9fcf985895cc8b40c1a598d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/WholeFiniteChangeSetAndByteComparisons.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74b260b7e3397e5bff13dce995ece151b22ba02eed0c1ddeb12f1190aa43d311",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/WholeFiniteChangeSetAndByteComparisons.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c465d04-267e-273e-c9f2-c0ddee5a9ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_between_runtime_iff
    (G : DependencyGraph)
    (old new : ManifestSet G)
    (p : G.ProjectId) :
    p ∈ (between G old new).runtimeChangedSet ↔
      (old p).runtimeArtifactFingerprint ≠
        (new p).runtimeArtifactFingerprint := by
  simp [between]

end ChangeSet

namespace Tenant

end Tenant

end Build

namespace Tenant

end Tenant

namespace Build

end Build

end DAF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/WholeFiniteChangeSetAndByteComparisons.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/WholeFiniteChangeSetAndByteComparisons.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73e9f352278cc319b9fcf985895cc8b40c1a598d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
