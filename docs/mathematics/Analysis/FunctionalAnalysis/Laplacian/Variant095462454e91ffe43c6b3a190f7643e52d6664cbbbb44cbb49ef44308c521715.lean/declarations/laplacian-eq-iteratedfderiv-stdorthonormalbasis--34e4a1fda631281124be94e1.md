# laplacian_eq_iteratedFDeriv_stdOrthonormalBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f87096fffc39c9283b9881bd1976b4ba3b424cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c79ae3d-ac91-acf0-bc54-9a8bf6c17064",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7f293fe-8a17-c9df-79a3-510a4d180844",
  "kind": "theorem",
  "lexical_name": "laplacian_eq_iteratedFDeriv_stdOrthonormalBasis",
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
  "slug": "laplacian-eq-iteratedfderiv-stdorthonormalbasis--34e4a1fda631281124be94e1",
  "source": {
    "blob": "2f87096fffc39c9283b9881bd1976b4ba3b424cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 195,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34e4a1fda631281124be94e197b554d430626a327737ea4fac76d9b1b36acff1",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7f293fe-8a17-c9df-79a3-510a4d180844`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplacian_eq_iteratedFDeriv_stdOrthonormalBasis :
    Δ f = fun x ↦
      ∑ i, iteratedFDeriv ℝ 2 f x ![(stdOrthonormalBasis ℝ E) i, (stdOrthonormalBasis ℝ E) i] :=
  laplacian_eq_iteratedFDeriv_orthonormalBasis f (stdOrthonormalBasis ℝ E)

/-- For a function on `ℝ`, the Laplacian is the second derivative: version within a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f87096fffc39c9283b9881bd1976b4ba3b424cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
