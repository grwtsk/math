# KernelReplayReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08c724a91e6a4761572d632eb8eac3223b8ad341ebf441b1004c1cbdd62ca84b",
  "kind": "structure",
  "lexical_name": "KernelReplayReceipt",
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
  "slug": "kernelreplayreceipt--d090287c34830b17a555ecb7",
  "source": {
    "blob": "47e2e4acefc804eb14a6a1eb5be13fea09036606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d090287c34830b17a555ecb78eb2e2bd7a01a6f5f5b6f9a282060603c570c8bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08c724a91e6a4761572d632eb8eac3223b8ad341ebf441b1004c1cbdd62ca84b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure KernelReplayReceipt
    (environment : FrozenKernelEnvironment)
    (declaration : KernelDeclarationIdentity) where
  checkerName : String
  checkerSourceDigest : Digest
  checker_source_bound :
    checkerSourceDigest = environment.checkerSourceDigest
  checkerExecutableDigest : Digest
  checker_executable_bound :
    checkerExecutableDigest = environment.checkerExecutableDigest
  environmentDigest : Digest
  environment_bound :
    environmentDigest = environment.environmentDigest
  declarationDigest : Digest
  declaration_bound :
    declarationDigest = declaration.declarationDigest
  proofTermDigest : Digest
  proof_bound :
    proofTermDigest = declaration.proofTermDigest
  retainedReplaySource : ObjectAddress
  retainedCompiledModule : ObjectAddress
  receiptAddress : ObjectAddress
  receiptDigest : Digest
  receiptDigest_valid : receiptDigest.Valid

/-- The only logically authoritative payload. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47e2e4acefc804eb14a6a1eb5be13fea09036606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
