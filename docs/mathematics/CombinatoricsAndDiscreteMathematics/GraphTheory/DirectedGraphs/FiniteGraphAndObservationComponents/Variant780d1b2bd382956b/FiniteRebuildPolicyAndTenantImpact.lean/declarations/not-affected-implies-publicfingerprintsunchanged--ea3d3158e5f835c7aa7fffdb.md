# not_affected_implies_publicFingerprintsUnchanged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:994e3040-a805-ccc6-a413-60e2d028ae96",
  "kind": "theorem",
  "lexical_name": "not_affected_implies_publicFingerprintsUnchanged",
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
  "slug": "not-affected-implies-publicfingerprintsunchanged--ea3d3158e5f835c7aa7fffdb",
  "source": {
    "blob": "43fb4e1ec7c9468f8c70fd8c681326c3b101df44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteRebuildPolicyAndTenantImpact.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea3d3158e5f835c7aa7fffdb2b6d9e950fff244baa7d7d1f2aae41dd618b5294",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteRebuildPolicyAndTenantImpact.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:994e3040-a805-ccc6-a413-60e2d028ae96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_affected_implies_publicFingerprintsUnchanged
    {G : DependencyGraph}
    (t : DAF.Tenant G)
    (old new : ManifestSet G)
    (h : ¬ Affected t (ChangeSet.between G old new)) :
    PublicFingerprintsUnchanged t old new := by
  intro p hp
  by_contra hne
  apply h
  refine ⟨p, hp, publicChanged_subset_leanRebuild _ ?_⟩
  simpa using hne

end Tenant

end Build

namespace Tenant

/-- Public tenant-facing name for operational rebuild impact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteRebuildPolicyAndTenantImpact.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DirectedGraphs/FiniteGraphAndObservationComponents/Variant780d1b2bd382956b/FiniteRebuildPolicyAndTenantImpact.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43fb4e1ec7c9468f8c70fd8c681326c3b101df44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
