# Even.pow_pos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdf30b3dbc04906b714810eff6b29f719a775071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 515,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e6ac7b3f0c0b481233179891c6c3113eec384c461a77cf77ea748e500b90a4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:608d24b0-b0c4-bbd5-370a-8667855f997e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c3d6af8-6d56-e75d-1cc1-b47905760b75",
  "kind": "theorem",
  "lexical_name": "Even.pow_pos_iff",
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
  "slug": "even-pow-pos-iff--5f0ab64f564f52298af710ef",
  "source": {
    "blob": "fdf30b3dbc04906b714810eff6b29f719a775071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 515,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Parity/Variant9e6ac7b3f0c0b481233179891c6c3113eec384c461a77cf77ea748e500b90a4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f0ab64f564f52298af710efd77ccd5cf4d5c41a9b9d4da1cc37ada1646c0bb3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Parity/Variant9e6ac7b3f0c0b481233179891c6c3113eec384c461a77cf77ea748e500b90a4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c3d6af8-6d56-e75d-1cc1-b47905760b75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Even.pow_pos_iff (hn : Even n) (h₀ : 0 < n) : 0 < a ^ n ↔ a ≠ 0 :=
  ⟨fun h ha => by
    rw [ha, zero_pow h₀] at h
    exact lt_irrefl 0 h, hn.pow_pos⟩
#align even.pow_pos_iff Even.pow_pos_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Parity/Variant9e6ac7b3f0c0b481233179891c6c3113eec384c461a77cf77ea748e500b90a4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Parity/Variant9e6ac7b3f0c0b481233179891c6c3113eec384c461a77cf77ea748e500b90a4a.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf30b3dbc04906b714810eff6b29f719a775071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
