# natDegree_scaleRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80565da5-0257-104f-543b-7a78bcbe8070",
  "kind": "theorem",
  "lexical_name": "natDegree_scaleRoots",
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
  "slug": "natdegree-scaleroots--f18ce5160142517aa235438e",
  "source": {
    "blob": "6bd3e119c7e36bd79b7662b3b6e86c586d3c9e62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 96,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f18ce5160142517aa235438ec5ceb2115fbab619583832a70debe508e1e74e41",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80565da5-0257-104f-543b-7a78bcbe8070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_scaleRoots (p : R[X]) (s : R) : natDegree (scaleRoots p s) = natDegree p := by
  simp only [natDegree, degree_scaleRoots]
#align polynomial.nat_degree_scale_roots Polynomial.natDegree_scaleRoots

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bd3e119c7e36bd79b7662b3b6e86c586d3c9e62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
