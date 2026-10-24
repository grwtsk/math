# EnvironmentExtraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05d67e25c4c6bfcefe980cddfa8bd2cd67533b1c6b495812e0c85bed3c2ba3c1",
  "kind": "structure",
  "lexical_name": "EnvironmentExtraction",
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
  "slug": "environmentextraction--67df1aef78b3f111f2d21194",
  "source": {
    "blob": "c20ba5a80befb1d73904aa43f64f9d37eaabf4b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A70e3f8d5d1369c2b/Variantc5b0e400f970b040737feac2f239824e4d7312cc9deaef6ac3cb8c653ee97378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67df1aef78b3f111f2d211944dfcc18f193a9c87bbc720ed942f8f509dd70b20",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A70e3f8d5d1369c2b/Variantc5b0e400f970b040737feac2f239824e4d7312cc9deaef6ac3cb8c653ee97378.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05d67e25c4c6bfcefe980cddfa8bd2cd67533b1c6b495812e0c85bed3c2ba3c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EnvironmentExtraction where
  ledgerId : EnvironmentLedgerId
  schemaVersion : Nat
  extractorVersion : Version
  toolchain : ToolchainReceipt
  project : ProjectRecord
  config : ExtractConfig
  packages : Array PackageRecord
  modules : Array ModuleRecord
  declarations : Array DeclarationRecord
  expressions : Array ExpressionRecord
  dependencies : Array DependencyEdge
  generationRelations : Array GenerationRelation
  attributes : Array AttributeRecord
  sources : Array DeclarationSource
  trustClosures : Array TrustClosure
  rootCones : Array RootConeRecord
  diagnostics : Array ExtractionDiagnostic
  completeness : CompletenessCertificate
  digest : Digest
  deriving DecidableEq, Repr, Inhabited

namespace EnvironmentExtraction

end EnvironmentExtraction

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A70e3f8d5d1369c2b/Variantc5b0e400f970b040737feac2f239824e4d7312cc9deaef6ac3cb8c653ee97378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A70e3f8d5d1369c2b/Variantc5b0e400f970b040737feac2f239824e4d7312cc9deaef6ac3cb8c653ee97378.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c20ba5a80befb1d73904aa43f64f9d37eaabf4b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
