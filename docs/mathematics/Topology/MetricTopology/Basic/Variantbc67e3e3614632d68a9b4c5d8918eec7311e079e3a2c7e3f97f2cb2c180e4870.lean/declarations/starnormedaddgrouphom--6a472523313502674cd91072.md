# starNormedAddGroupHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0814d8a4dd25eac9a3b0a5d055f9fea302475f5880020ed0927f97518e024cbb",
  "kind": "def",
  "lexical_name": "starNormedAddGroupHom",
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
  "slug": "starnormedaddgrouphom--6a472523313502674cd91072",
  "source": {
    "blob": "434e48fce4b2bb81a648e664c9ca11577ef4633b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 62,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a472523313502674cd91072ce03c25d8e384aa922b56841629c23aea9b2470f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0814d8a4dd25eac9a3b0a5d055f9fea302475f5880020ed0927f97518e024cbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def starNormedAddGroupHom : NormedAddGroupHom E E :=
  { starAddEquiv with bound' := ⟨1, fun _ => le_trans (norm_star _).le (one_mul _).symm.le⟩ }

/-- The `star` map in a normed star group is an isometry -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `434e48fce4b2bb81a648e664c9ca11577ef4633b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
