# dirichletMeanMixture_spectralExpectation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee2a8328f9c4c5854500b51bf6a9a2b26f29a137",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d17efefb-36a7-6bc9-d994-87add3ecf0c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fd9342d-9c17-83b7-603f-4b124a41f913",
  "kind": "theorem",
  "lexical_name": "dirichletMeanMixture_spectralExpectation",
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
  "slug": "dirichletmeanmixture-spectralexpectation--1ea4aea28addc985fc59cb08",
  "source": {
    "blob": "ee2a8328f9c4c5854500b51bf6a9a2b26f29a137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ea4aea28addc985fc59cb08460c6d5e1d4c7dbbd6d102cf4600912b0d600b4a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fd9342d-9c17-83b7-603f-4b124a41f913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletMeanMixture_spectralExpectation
    (parameters : DirichletParameters I)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (observable : ℝ → ℝ) :
    (dirichletMeanMixture parameters packets).spectralExpectation observable =
      ∑ i, (parameters.shape i / parameters.total) *
        (packets i).spectralExpectation observable := by
  exact FinitePacket.spectralExpectation_mix
    (dirichletMeanPoint parameters) packets observable

/-- Packet turn covariance and Dirichlet-parameter permutation commute at the
level of every finite spectral observable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2a8328f9c4c5854500b51bf6a9a2b26f29a137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
