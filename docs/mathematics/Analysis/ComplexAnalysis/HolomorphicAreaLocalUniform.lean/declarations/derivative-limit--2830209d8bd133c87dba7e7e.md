# derivative_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dd87866f5a16c3297c3a744e4d34cc2b65417d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/Analysis/Complex/HolomorphicAreaLocalUniform.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:914d7e6b-7bc5-d031-b423-db3715ea9e8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71619552-6981-5acc-8d03-c0a550b1c7f5",
  "kind": "theorem",
  "lexical_name": "derivative_limit",
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
  "slug": "derivative-limit--2830209d8bd133c87dba7e7e",
  "source": {
    "blob": "8dd87866f5a16c3297c3a744e4d34cc2b65417d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 206,
    "path": "GRWTSK/Analysis/Complex/HolomorphicAreaLocalUniform.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2830209d8bd133c87dba7e7e1dca2d754f12247dbdf91be95a0ed6d2bd07b380",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71619552-6981-5acc-8d03-c0a550b1c7f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_limit (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) :
    TendstoLocallyUniformlyOn (fun n => deriv (ambient hOpen (F n)))
      (deriv (ambientRepresentative D.X (holomorphicLimit hOpen F hF : Section D.X)))
      atTop D.X.carrier :=
  (locallyUniform_limit hOpen F hF).deriv
    (Eventually.of_forall (fun n => ambient_differentiableOn hOpen (F n)))
    (coveredDomain_isOpen D hOpen)

namespace Fixtures

/-- Empty compact subsets require neither a point nor a nonzero detecting section. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicAreaLocalUniform.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd87866f5a16c3297c3a744e4d34cc2b65417d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
