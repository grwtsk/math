# CompletenessCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e72c5da3dd12fb3d278164647145238c53d51ec2d818f69f25ef0d9b9ecf30b",
  "kind": "structure",
  "lexical_name": "CompletenessCertificate",
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
  "slug": "completenesscertificate--a515727efb5d770fb93c913f",
  "source": {
    "blob": "e56bf9c9a2213346fdafcbdb31c59595ec3ab57a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ACf169b328d3d7216/Variantf5b2fb5ededdb5bd37e5f37bf72b5c4e7aeba59bc536f836bea1fe90679657dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a515727efb5d770fb93c913f4bd3185d20150ab7d780ecda70f874648e493928",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ACf169b328d3d7216/Variantf5b2fb5ededdb5bd37e5f37bf72b5c4e7aeba59bc536f836bea1fe90679657dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e72c5da3dd12fb3d278164647145238c53d51ec2d818f69f25ef0d9b9ecf30b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompletenessCertificate where
  certificateId : CompletenessCertificateId
  selectedModules : Array Lean.Name
  loadedModules : Array Lean.Name
  failedModules : Array ModuleFailure
  coverageScope : String
  visibleConstantObservationCount : Nat
  environmentConstantCount : Nat
  emittedConstantCount : Nat
  ownedConstantCount : Nat
  emittedOwnedConstantCount : Nat
  externalReferenceCount : Nat
  unsupportedExtensions : Array Lean.Name
  unresolvedOwners : Array Lean.Name
  unresolvedSources : Array Lean.Name
  exactConstantCoverage : Bool
  exactOwnedCoverage : Bool
  deriving DecidableEq, Repr, Inhabited

namespace CompletenessCertificate

end CompletenessCertificate

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ACf169b328d3d7216/Variantf5b2fb5ededdb5bd37e5f37bf72b5c4e7aeba59bc536f836bea1fe90679657dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ACf169b328d3d7216/Variantf5b2fb5ededdb5bd37e5f37bf72b5c4e7aeba59bc536f836bea1fe90679657dd.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e56bf9c9a2213346fdafcbdb31c59595ec3ab57a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
