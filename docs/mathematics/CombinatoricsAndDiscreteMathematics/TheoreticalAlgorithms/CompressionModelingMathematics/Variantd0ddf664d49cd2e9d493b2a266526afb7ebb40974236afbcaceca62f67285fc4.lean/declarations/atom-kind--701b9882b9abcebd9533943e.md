# Atom.kind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1848f4715ac5299cf06caff7669024b7d03dac6fe872ad647e92f60eb295e007",
  "kind": "def",
  "lexical_name": "Atom.kind",
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
  "slug": "atom-kind--701b9882b9abcebd9533943e",
  "source": {
    "blob": "717c26770c7d4e59499b1f46321deefc6a6488a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompressionModelingMathematics/Variantd0ddf664d49cd2e9d493b2a266526afb7ebb40974236afbcaceca62f67285fc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:701b9882b9abcebd9533943ec55b99680fae19cd5f6197d23ed80b5f43d2305a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompressionModelingMathematics/Variantd0ddf664d49cd2e9d493b2a266526afb7ebb40974236afbcaceca62f67285fc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1848f4715ac5299cf06caff7669024b7d03dac6fe872ad647e92f60eb295e007`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.kind : Atom -> FWR.ResidueKind
  | .formalMathStringModel => FWR.ResidueKind.missingDefinition
  | .humanMathCompressibilityMetric => FWR.ResidueKind.missingDefinition
  | .macroSetDensity => FWR.ResidueKind.missingUniformBound
  | .freeAbelianMonoidExpansion => FWR.ResidueKind.externalTheoremNotImported
  | .freeNonabelianMonoidBound => FWR.ResidueKind.externalTheoremNotImported
  | .mathlibProxyValidity => FWR.ResidueKind.externalTheoremNotImported
  | .compressionMotifNotAuthority => FWR.ResidueKind.authorityOverclaim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompressionModelingMathematics/Variantd0ddf664d49cd2e9d493b2a266526afb7ebb40974236afbcaceca62f67285fc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompressionModelingMathematics/Variantd0ddf664d49cd2e9d493b2a266526afb7ebb40974236afbcaceca62f67285fc4.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717c26770c7d4e59499b1f46321deefc6a6488a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
