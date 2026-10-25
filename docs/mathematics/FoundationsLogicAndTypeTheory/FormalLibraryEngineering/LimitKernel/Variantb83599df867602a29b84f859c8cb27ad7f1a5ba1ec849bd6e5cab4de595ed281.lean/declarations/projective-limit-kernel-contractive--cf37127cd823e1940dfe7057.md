# projective_limit_kernel_contractive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "181e63204d6f94c2d4806de44d359798a6c7abf8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b83599df867602a29b84f859c8cb27ad7f1a5ba1ec849bd6e5cab4de595ed281.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cace014a-ff7d-0bf6-6ec6-efda10c15b6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0bcba449-32c1-bbb7-4177-96afe506a080",
  "kind": "theorem",
  "lexical_name": "projective_limit_kernel_contractive",
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
  "slug": "projective-limit-kernel-contractive--cf37127cd823e1940dfe7057",
  "source": {
    "blob": "181e63204d6f94c2d4806de44d359798a6c7abf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitKernel/Variantb83599df867602a29b84f859c8cb27ad7f1a5ba1ec849bd6e5cab4de595ed281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf37127cd823e1940dfe7057806ea004677fdb9f7a8f37941e73fca5f9ef15e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitKernel/Variantb83599df867602a29b84f859c8cb27ad7f1a5ba1ec849bd6e5cab4de595ed281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bcba449-32c1-bbb7-4177-96afe506a080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projective_limit_kernel_contractive
    {Kernel Measure : Type u}
    (certificate :
      ContractiveProjectiveLimitKernel Kernel Measure)
    (left right : Measure) :
    certificate.contractionDenominator *
        certificate.distance
          (certificate.applyKernel certificate.kernel left)
          (certificate.applyKernel certificate.kernel right) ≤
      certificate.contractionNumerator *
        certificate.distance left right :=
  certificate.contractive left right

end Mathematics.StratifiedBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitKernel/Variantb83599df867602a29b84f859c8cb27ad7f1a5ba1ec849bd6e5cab4de595ed281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitKernel/Variantb83599df867602a29b84f859c8cb27ad7f1a5ba1ec849bd6e5cab4de595ed281.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `181e63204d6f94c2d4806de44d359798a6c7abf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
