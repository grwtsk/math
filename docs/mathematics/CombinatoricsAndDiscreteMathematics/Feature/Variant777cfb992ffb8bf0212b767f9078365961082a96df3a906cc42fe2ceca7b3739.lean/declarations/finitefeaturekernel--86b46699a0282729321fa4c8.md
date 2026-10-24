# finiteFeatureKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a67c446670bd20bc0b1971293d3e8836da3acaeb6756331e6d4c918c45c11a1",
  "kind": "def",
  "lexical_name": "finiteFeatureKernel",
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
  "slug": "finitefeaturekernel--86b46699a0282729321fa4c8",
  "source": {
    "blob": "1fd48bb4121e52332f1bff818998152d4b249dc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Feature/Variant777cfb992ffb8bf0212b767f9078365961082a96df3a906cc42fe2ceca7b3739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86b46699a0282729321fa4c8b773a2067d7db96a042bf4c5fdd0fcbbf0099b33",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Feature/Variant777cfb992ffb8bf0212b767f9078365961082a96df3a906cc42fe2ceca7b3739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a67c446670bd20bc0b1971293d3e8836da3acaeb6756331e6d4c918c45c11a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteFeatureKernel
    {Feature : Type} [Fintype Feature]
    (feature : Index → Feature → ℂ) : PositiveKernel Index where
  matrix := ∑ coordinate,
    (scalarFeatureKernel (fun index => feature index coordinate)).matrix
  positiveSemidefinite := Matrix.posSemidef_sum Finset.univ fun coordinate _ =>
    (scalarFeatureKernel (fun index => feature index coordinate)).positiveSemidefinite

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Feature/Variant777cfb992ffb8bf0212b767f9078365961082a96df3a906cc42fe2ceca7b3739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Feature/Variant777cfb992ffb8bf0212b767f9078365961082a96df3a906cc42fe2ceca7b3739.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fd48bb4121e52332f1bff818998152d4b249dc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
