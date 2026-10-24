# banachToHilbert_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af7b40521d0282deb04ca1dd27c465b37cf2dca0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6f5b437-6fa2-fe1a-af8b-9e5fb1be83e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c88f6e8-839b-d544-0781-55b7e6e2e9ac",
  "kind": "theorem",
  "lexical_name": "banachToHilbert_unique",
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
  "slug": "banachtohilbert-unique--69ff6561a1108a48b1157897",
  "source": {
    "blob": "af7b40521d0282deb04ca1dd27c465b37cf2dca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 138,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69ff6561a1108a48b11578974f6fb869585257b3b76d730063b137df28827b39",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c88f6e8-839b-d544-0781-55b7e6e2e9ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem banachToHilbert_unique
    {Atom : Type u}
    {data : Concept.QuotientNormData Atom}
    {kernel : Kernel.PositiveKernel Atom}
    (compatibility : KernelCompatibility data kernel)
    (candidate :
      Concept.BanachCarrier data →L[ℂ] KernelSpace kernel)
    (agrees_on_raw :
      candidate.toLinearMap.comp (Concept.rawToBanach data) =
        rawToKernelSpace kernel) :
    banachToHilbert compatibility = candidate := by
  exact LinearMap.extendOfNorm_unique
    (Concept.rawToBanach_denseRange data)
    compatibility.upperConstant
    (by
      intro raw
      simpa only [Concept.norm_rawToBanach] using
        compatibility.bounded_on_raw raw)
    candidate
    agrees_on_raw

/--
A lower estimate is additional mathematical data.  It is not derivable from
positive semidefiniteness or from the upper boundedness certificate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af7b40521d0282deb04ca1dd27c465b37cf2dca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
