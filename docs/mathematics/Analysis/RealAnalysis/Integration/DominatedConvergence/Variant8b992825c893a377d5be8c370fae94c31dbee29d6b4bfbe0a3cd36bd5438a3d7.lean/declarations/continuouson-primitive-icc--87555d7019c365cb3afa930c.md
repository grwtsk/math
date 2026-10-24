# continuousOn_primitive_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9151af5679b358686392d6d28721e01382dcad0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 453,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c38f4a32-5d67-b89d-db30-70d42bef9810",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51f1098f-1faa-d594-c114-ee8ac7f85577",
  "kind": "theorem",
  "lexical_name": "continuousOn_primitive_Icc",
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
  "slug": "continuouson-primitive-icc--87555d7019c365cb3afa930c",
  "source": {
    "blob": "f9151af5679b358686392d6d28721e01382dcad0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 453,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87555d7019c365cb3afa930cb8d812265613f37650ab6a57f3387c1d1bc1120a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51f1098f-1faa-d594-c114-ee8ac7f85577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_primitive_Icc (h_int : IntegrableOn f (Icc a b) μ) :
    ContinuousOn (fun x => ∫ t in Icc a x, f t ∂μ) (Icc a b) := by
  have aux : (fun x => ∫ t in Icc a x, f t ∂μ) = fun x => ∫ t in Ioc a x, f t ∂μ := by
    ext x
    exact integral_Icc_eq_integral_Ioc
  rw [aux]
  exact continuousOn_primitive h_int

/-- Note: this assumes that `f` is `IntervalIntegrable`, in contrast to some other lemmas here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9151af5679b358686392d6d28721e01382dcad0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
