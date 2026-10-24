# payload

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e18e276185eb7d8f8fb813ff124099f26705e50f1d9cd3186f65ba8f9803e5b",
  "kind": "def",
  "lexical_name": "payload",
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
  "slug": "payload--39bb7bfc1a112cbe271de4c2",
  "source": {
    "blob": "0d7848e116216056eaa0416d4e004a5478aa8cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 804,
    "line": 782,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant6b2b22dd8d7123cf53d7382961030d54b040657eccb0e09e1cf50a3d7a555fcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39bb7bfc1a112cbe271de4c2082c745e348d94bf37da1c258839ea3efe1d16e2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Manifest/Variant6b2b22dd8d7123cf53d7382961030d54b040657eccb0e09e1cf50a3d7a555fcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e18e276185eb7d8f8fb813ff124099f26705e50f1d9cd3186f65ba8f9803e5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 782–804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def payload (manifest : ProductionKernelManifest) : List UInt8 :=
  natBytesBE 4 manifest.schemaVersion ++
  sha256 formatDescriptorWire ++
  encodeString manifest.policyVersion ++
  natBytesBE 4 (semanticDefinitionWire manifest.semanticDefinition).length ++
  semanticDefinitionWire manifest.semanticDefinition ++
  totalSemanticDefinitionDigest manifest.semanticDefinition ++
  natBytesBE 8 manifest.epsilonNumerator ++
  natBytesBE 8 manifest.epsilonDenominator ++
  [UInt8.ofNat manifest.roleVocabulary.length] ++
  manifest.roleVocabulary.flatMap encodeRole ++
  natBytesBE 4 manifest.featureChannels.length ++
  manifest.featureChannels.flatMap encodeFeatureChannel ++
  natBytesBE 4 manifest.semanticDimension ++
  natBytesBE 4 manifest.semanticGramWire.length ++
  manifest.semanticGramWire ++
  activeSemanticGramDigest manifest ++
  sourceProfileDigest manifest ++
  encodeString (kernelIdentityPreimage manifest) ++
  kernelDigest manifest ++
  encodeString (kernelId manifest) ++
  sourceProfileWire manifest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Manifest/Variant6b2b22dd8d7123cf53d7382961030d54b040657eccb0e09e1cf50a3d7a555fcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant6b2b22dd8d7123cf53d7382961030d54b040657eccb0e09e1cf50a3d7a555fcd.lean#L782).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d7848e116216056eaa0416d4e004a5478aa8cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
