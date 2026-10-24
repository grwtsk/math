# featureChannelKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77dbc4a3c8d985f0e8c9e7dcb44ac32286462c3cb91fa2dedc75e4242a376644",
  "kind": "def",
  "lexical_name": "featureChannelKernel",
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
  "slug": "featurechannelkernel--607d3b3c68d937ffba69b946",
  "source": {
    "blob": "69e26c1e9ec222f1bba2d9f9156330859127edea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A4947b2001c8ae887/Variant96391076f4f63274eba4b2c4cd92bb1393c77d12d6db0ff20a092c775a1862a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:607d3b3c68d937ffba69b946a6bc55e8d54818644f2f7b2cbe4f5602f57b0cb9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A4947b2001c8ae887/Variant96391076f4f63274eba4b2c4cd92bb1393c77d12d6db0ff20a092c775a1862a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77dbc4a3c8d985f0e8c9e7dcb44ac32286462c3cb91fa2dedc75e4242a376644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def featureChannelKernel
    {Channel : Type} [Fintype Channel]
    (channels : Channel → FeatureKernelChannel Index) : PositiveKernel Index where
  matrix := ∑ channel, (channels channel).weighted.matrix
  positiveSemidefinite := Matrix.posSemidef_sum Finset.univ fun channel _ =>
    (channels channel).weighted.positiveSemidefinite

end Mathematics.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A4947b2001c8ae887/Variant96391076f4f63274eba4b2c4cd92bb1393c77d12d6db0ff20a092c775a1862a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A4947b2001c8ae887/Variant96391076f4f63274eba4b2c4cd92bb1393c77d12d6db0ff20a092c775a1862a5.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e26c1e9ec222f1bba2d9f9156330859127edea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
