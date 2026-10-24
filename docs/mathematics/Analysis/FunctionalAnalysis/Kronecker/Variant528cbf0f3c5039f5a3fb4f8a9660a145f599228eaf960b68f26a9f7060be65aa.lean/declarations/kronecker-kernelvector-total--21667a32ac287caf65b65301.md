# kronecker_kernelVector_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16b17b0caa5078bc2866e895d72e3aa513aa0e29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7b5d563-25b5-30cd-b578-5a76321ec59a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f18386e-589b-dffc-e301-8c896730a604",
  "kind": "theorem",
  "lexical_name": "kronecker_kernelVector_total",
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
  "slug": "kronecker-kernelvector-total--21667a32ac287caf65b65301",
  "source": {
    "blob": "16b17b0caa5078bc2866e895d72e3aa513aa0e29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 94,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21667a32ac287caf65b65301b99e5711a704b68c408ab63f381e1bc851fecfdf",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f18386e-589b-dffc-e301-8c896730a604`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kronecker_kernelVector_total :
    (Submodule.span ℂ
      (Set.range (kernelVector
        (Kernel.kroneckerKernel (Index := Index))))).topologicalClosure = ⊤ := by
  exact kernelVector_denseSpan (Kernel.kroneckerKernel (Index := Index))

/-- The total Kronecker feature family bundled as a Hilbert basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16b17b0caa5078bc2866e895d72e3aa513aa0e29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
