# mapping

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50d2484dfe2f4117dab011b55948752298d7a5afbbb284f3082956b8efe4042b",
  "kind": "def",
  "lexical_name": "mapping",
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
  "slug": "mapping--71d1226b9ce3cb9d566edb81",
  "source": {
    "blob": "2832ef9fbbca9527d1ca7fbbf6e3a2e4aef8abfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionContext/Variant8f6af1c4a5be81be5f5909fc85f03dc720a3e7b06f9352bc0bb7d672c916c6a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71d1226b9ce3cb9d566edb81addcdf225a529d62355e8e8841136a30a9e30f12",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionContext/Variant8f6af1c4a5be81be5f5909fc85f03dc720a3e7b06f9352bc0bb7d672c916c6a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50d2484dfe2f4117dab011b55948752298d7a5afbbb284f3082956b8efe4042b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapping
    (context : AssumptionContext)
    (identity : ArtifactIdentity)
    (version : DAF.Version)
    (f : AssumptionRecord → AssumptionRecord)
    (mappedUnique :
      ∀ {left right},
        left ∈ context.assumptions.entries.map f →
        right ∈ context.assumptions.entries.map f →
        left.identity.value = right.identity.value →
        left = right) :
    AssumptionContext where
  identity := identity
  version := version
  assumptions :=
    { entries := context.assumptions.entries.map f
      key := fun record ↦ record.identity.value
      keys_unique := mappedUnique }
  key_is_identity := fun _ ↦ rfl
  conflicts := []

end AssumptionContext

end Surface.ContinuousAssurance.WorldModel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionContext/Variant8f6af1c4a5be81be5f5909fc85f03dc720a3e7b06f9352bc0bb7d672c916c6a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionContext/Variant8f6af1c4a5be81be5f5909fc85f03dc720a3e7b06f9352bc0bb7d672c916c6a9.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2832ef9fbbca9527d1ca7fbbf6e3a2e4aef8abfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
