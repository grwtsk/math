# formalManifestJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a1470d642bc57694b9c406e9687e27dd3b6932a28efb9376d3aaddc25ad2ebb",
  "kind": "def",
  "lexical_name": "formalManifestJson",
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
  "slug": "formalmanifestjson--99f280e57ec9ce4ffd0a67fe",
  "source": {
    "blob": "484ca8d7efe995ff28370abcc9d8b703f98475d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant31354a8802f4fbf5a32beb9bea0038d78faf2124c97cd5538a6b40c91bb0d20d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99f280e57ec9ce4ffd0a67feb2c577548e6134504db7be49e124b9a13a811a80",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant31354a8802f4fbf5a32beb9bea0038d78faf2124c97cd5538a6b40c91bb0d20d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a1470d642bc57694b9c406e9687e27dd3b6932a28efb9376d3aaddc25ad2ebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def formalManifestJson : String :=
  "{" ++
    "\"conflicts\":" ++ edgeArray conflictEdges ++ "," ++
    "\"conflictValidity\":" ++ edgeArray conflictValidityEdges ++ "," ++
    "\"exactBridges\":" ++ edgeArray exactBridgeEdges ++ "," ++
    "\"formalCertificateRoot\":" ++
      quote phaseOneStaticComposite.formalCertificateRoot ++ "," ++
    "\"imports\":" ++ edgeArray importEdges ++ "," ++
    "\"logicalSide\":" ++ toString projectCount ++ "," ++
    "\"projects\":[" ++
      String.intercalate "," (projectDescriptors.map projectJson) ++ "]," ++
    "\"propertyNaturality\":" ++
      edgeArray propertyNaturalityEdges ++ "," ++
    "\"schema\":\"mathematics.lean-composite-formal/1\"," ++
    "\"transports\":" ++ edgeArray transportEdges ++
  "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant31354a8802f4fbf5a32beb9bea0038d78faf2124c97cd5538a6b40c91bb0d20d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant31354a8802f4fbf5a32beb9bea0038d78faf2124c97cd5538a6b40c91bb0d20d.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `484ca8d7efe995ff28370abcc9d8b703f98475d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
