# IsSymmetric.apply_clm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c781cf486b0a1a7f074411c075f7a487535ea23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6048b536-13f5-640a-5a53-3d7b26a3a186",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92ae0923-d40b-31fb-24ee-355f335027a5",
  "kind": "theorem",
  "lexical_name": "IsSymmetric.apply_clm",
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
  "slug": "issymmetric-apply-clm--25d4618d7504da80fbf9b887",
  "source": {
    "blob": "8c781cf486b0a1a7f074411c075f7a487535ea23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25d4618d7504da80fbf9b887c26a210ecfb64d71e8d9791f4862c045547175ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ae0923-d40b-31fb-24ee-355f335027a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSymmetric.apply_clm {T : E →L[𝕜] E} (hT : IsSymmetric (T : E →ₗ[𝕜] E)) (x y : E) :
    ⟪T x, y⟫ = ⟪x, T y⟫ :=
  hT x y

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant8e73a01a99ecad538946e916b48ae2a13ee830912220cc60277bb3f9994ab2b6.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c781cf486b0a1a7f074411c075f7a487535ea23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
