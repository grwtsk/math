# hasFDerivAt_covarianceScalar_raw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5f3a3b466c6b27664312973fa9ace625fd55501",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b273ab859a17baf950e5eb05d85aabfd05b66662eb9173d0a7c9015aedda173a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c79fc3e-be56-948f-9b03-9312eafb7d7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cd17f85-2769-8414-974d-0d1476e5e98f",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_covarianceScalar_raw",
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
  "slug": "hasfderivat-covariancescalar-raw--71d4a689c017d1e25b5bf309",
  "source": {
    "blob": "d5f3a3b466c6b27664312973fa9ace625fd55501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantb273ab859a17baf950e5eb05d85aabfd05b66662eb9173d0a7c9015aedda173a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71d4a689c017d1e25b5bf309828953ff0521a81cff9dbfd869aecc5c2ba5327f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantb273ab859a17baf950e5eb05d85aabfd05b66662eb9173d0a7c9015aedda173a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cd17f85-2769-8414-974d-0d1476e5e98f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_covarianceScalar_raw
    (theta u v : E) :
    HasFDerivAt
      (F.covarianceScalar u v)
      (F.rawThirdDerivative theta u v)
      theta := by
  classical
  change
    HasFDerivAt
      (fun x : E => ∑ i : I, F.covarianceSummand u v i x)
      (F.rawThirdDerivative theta u v)
      theta
  simpa [rawThirdDerivative] using
    (HasFDerivAt.fun_sum (u := Finset.univ)
      (fun i _ => F.hasFDerivAt_covarianceSummand theta u v i))

/-- Evaluation formula for one raw third-derivative summand. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantb273ab859a17baf950e5eb05d85aabfd05b66662eb9173d0a7c9015aedda173a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantb273ab859a17baf950e5eb05d85aabfd05b66662eb9173d0a7c9015aedda173a.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5f3a3b466c6b27664312973fa9ace625fd55501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
