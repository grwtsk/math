# logb_le_iff_le_rpow_of_base_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f05aa23feab3196dc480479cae771d063e20dbe8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa2e4c427b1cb8db420943d297a6855c40c3d6f677f236892e210cd0a89ab2d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:691e9e24-dce9-e951-528e-660676c93fd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e30b68a-b62d-e671-5628-6f992e6db6da",
  "kind": "theorem",
  "lexical_name": "logb_le_iff_le_rpow_of_base_lt_one",
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
  "slug": "logb-le-iff-le-rpow-of-base-lt-one--2d941f7c9fa64794d8dcb629",
  "source": {
    "blob": "f05aa23feab3196dc480479cae771d063e20dbe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 301,
    "path": "GRWTSK/Topology/GeneralTopology/Base/Variantaa2e4c427b1cb8db420943d297a6855c40c3d6f677f236892e210cd0a89ab2d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d941f7c9fa64794d8dcb629555a5abf064376904bb0842612f48d5c041608d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Base/Variantaa2e4c427b1cb8db420943d297a6855c40c3d6f677f236892e210cd0a89ab2d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e30b68a-b62d-e671-5628-6f992e6db6da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logb_le_iff_le_rpow_of_base_lt_one (hx : 0 < x) : logb b x ≤ y ↔ b ^ y ≤ x := by
  rw [← rpow_le_rpow_left_iff_of_base_lt_one b_pos b_lt_one, rpow_logb b_pos (b_ne_one b_lt_one) hx]
#align real.logb_le_iff_le_rpow_of_base_lt_one Real.logb_le_iff_le_rpow_of_base_lt_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Base/Variantaa2e4c427b1cb8db420943d297a6855c40c3d6f677f236892e210cd0a89ab2d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Base/Variantaa2e4c427b1cb8db420943d297a6855c40c3d6f677f236892e210cd0a89ab2d8.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f05aa23feab3196dc480479cae771d063e20dbe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
