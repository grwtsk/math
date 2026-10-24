# gramEquiv_solve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "975d43f98daacfcf2472ed6c7a02a724798b5d3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ba9e16e-efcd-0b27-8431-719ba856dd6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc245a5e-96b2-0b1c-41a4-3cfbb4e8bb5a",
  "kind": "theorem",
  "lexical_name": "gramEquiv_solve",
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
  "slug": "gramequiv-solve--25a2b13f365778a66ec941f8",
  "source": {
    "blob": "975d43f98daacfcf2472ed6c7a02a724798b5d3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25a2b13f365778a66ec941f85a7efd0222ae2aadbb8bbcfbb8f7bd6410198469",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc245a5e-96b2-0b1c-41a4-3cfbb4e8bb5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gramEquiv_solve (I : InvertibleProvenanceBlock G) (u : U) :
    I.gramEquiv (I.solve u) = provenanceCrossMap G u := by
  simp [solve]

/-- The canonical correction reproduces the cross block against every provenance
test direction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975d43f98daacfcf2472ed6c7a02a724798b5d3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
