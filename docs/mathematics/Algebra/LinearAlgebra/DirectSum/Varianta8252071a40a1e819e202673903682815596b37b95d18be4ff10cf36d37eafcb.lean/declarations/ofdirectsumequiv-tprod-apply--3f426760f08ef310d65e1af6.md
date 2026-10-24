# ofDirectSumEquiv_tprod_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e680d3c2600e9d49a4bb9a288d4ef3cf6edff3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8252071a40a1e819e202673903682815596b37b95d18be4ff10cf36d37eafcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15404f38-9480-aad1-2cfb-36691855676c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ef64a73-4124-8e28-d0f1-d3260a11510c",
  "kind": "theorem",
  "lexical_name": "ofDirectSumEquiv_tprod_apply",
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
  "slug": "ofdirectsumequiv-tprod-apply--3f426760f08ef310d65e1af6",
  "source": {
    "blob": "5e680d3c2600e9d49a4bb9a288d4ef3cf6edff3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/DirectSum/Varianta8252071a40a1e819e202673903682815596b37b95d18be4ff10cf36d37eafcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f426760f08ef310d65e1af697923681f765d35c88d334e8e54c6f5ba13a91e5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DirectSum/Varianta8252071a40a1e819e202673903682815596b37b95d18be4ff10cf36d37eafcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ef64a73-4124-8e28-d0f1-d3260a11510c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofDirectSumEquiv_tprod_apply [Finite ι]
    (x : Π i, ⨁ j, M i j) (p : Π i, κ i) :
    ofDirectSumEquiv (tprod R x) p = ⨂ₜ[R] i, x i (p i) := by
  have : Fintype ι := Fintype.ofFinite ι
  convert! ofDFinsuppEquiv_tprod_apply _ _

end PiTensorProduct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DirectSum/Varianta8252071a40a1e819e202673903682815596b37b95d18be4ff10cf36d37eafcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DirectSum/Varianta8252071a40a1e819e202673903682815596b37b95d18be4ff10cf36d37eafcb.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e680d3c2600e9d49a4bb9a288d4ef3cf6edff3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
