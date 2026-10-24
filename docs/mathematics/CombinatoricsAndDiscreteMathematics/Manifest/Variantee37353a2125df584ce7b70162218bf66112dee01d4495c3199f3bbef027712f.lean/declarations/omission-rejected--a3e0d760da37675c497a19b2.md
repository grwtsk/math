# omission_rejected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f587150a-ae41-6fab-46f0-329b4c504934",
  "kind": "theorem",
  "lexical_name": "omission_rejected",
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
  "slug": "omission-rejected--a3e0d760da37675c497a19b2",
  "source": {
    "blob": "18631ecfb75c734ebef054bad6540bbced242855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variantee37353a2125df584ce7b70162218bf66112dee01d4495c3199f3bbef027712f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3e0d760da37675c497a19b29ad07f2795e76f298bc52e08dd84df9be5e7371a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Manifest/Variantee37353a2125df584ce7b70162218bf66112dee01d4495c3199f3bbef027712f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f587150a-ae41-6fab-46f0-329b4c504934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omission_rejected
    (manifest : ProjectManifest)
    {artifactId : ArtifactId}
    (inventoried : artifactId ∈ manifest.sourceInventory)
    (omitted :
      ¬ ∃ artifact ∈ manifest.artifacts,
        artifact.artifactId = artifactId) :
    False :=
  omitted (manifest.retains_inventoried inventoried)

end ProjectManifest

end Mathematics.Ecosystem
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Manifest/Variantee37353a2125df584ce7b70162218bf66112dee01d4495c3199f3bbef027712f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variantee37353a2125df584ce7b70162218bf66112dee01d4495c3199f3bbef027712f.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18631ecfb75c734ebef054bad6540bbced242855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
