# eqLocus_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7da0b38b13d99fd0bcec3460740af57936aa4b51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fce5b86eda65ea9d9631ba56c3a2c065a0dc8f8f04acf3efe9855ad859691470.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19c577ed-2d2b-4ee1-6263-d166092a1e7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36ec0806-0730-3b6e-f3bc-921a9e990648",
  "kind": "theorem",
  "lexical_name": "eqLocus_eq_top",
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
  "slug": "eqlocus-eq-top--5fff1d5b18db8486b1f2e189",
  "source": {
    "blob": "7da0b38b13d99fd0bcec3460740af57936aa4b51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/EqLocus/Variantfce5b86eda65ea9d9631ba56c3a2c065a0dc8f8f04acf3efe9855ad859691470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fff1d5b18db8486b1f2e189fcb2d902f627f45a47214f536af4db3265c26516",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EqLocus/Variantfce5b86eda65ea9d9631ba56c3a2c065a0dc8f8f04acf3efe9855ad859691470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ec0806-0730-3b6e-f3bc-921a9e990648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqLocus_eq_top {f g : M →ₛₗ[τ₁₂] M₂} : eqLocus f g = ⊤ ↔ f = g := by
  simp [SetLike.ext_iff, DFunLike.ext_iff]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EqLocus/Variantfce5b86eda65ea9d9631ba56c3a2c065a0dc8f8f04acf3efe9855ad859691470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EqLocus/Variantfce5b86eda65ea9d9631ba56c3a2c065a0dc8f8f04acf3efe9855ad859691470.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7da0b38b13d99fd0bcec3460740af57936aa4b51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
