# strictAntiOn_logb

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
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa2e4c427b1cb8db420943d297a6855c40c3d6f677f236892e210cd0a89ab2d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8552fbd6-19be-df7e-8361-2205d6003663",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c7aef0a-ee35-d91e-6667-97dbebdc69c5",
  "kind": "theorem",
  "lexical_name": "strictAntiOn_logb",
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
  "slug": "strictantion-logb--34f9b2eef51f2a123fce68d2",
  "source": {
    "blob": "f05aa23feab3196dc480479cae771d063e20dbe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/Base/Variantaa2e4c427b1cb8db420943d297a6855c40c3d6f677f236892e210cd0a89ab2d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34f9b2eef51f2a123fce68d2dfbacdd0aa35625996387dc17e4e764cb6b37dfb",
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

Occurrence: `result:6c7aef0a-ee35-d91e-6667-97dbebdc69c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictAntiOn_logb : StrictAntiOn (logb b) (Set.Iio 0) := by
  rintro x (hx : x < 0) y (hy : y < 0) hxy
  rw [← logb_abs y, ← logb_abs x]
  refine' logb_lt_logb hb (abs_pos.2 hy.ne) _
  rwa [abs_of_neg hy, abs_of_neg hx, neg_lt_neg_iff]
#align real.strict_anti_on_logb Real.strictAntiOn_logb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Base/Variantaa2e4c427b1cb8db420943d297a6855c40c3d6f677f236892e210cd0a89ab2d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Base/Variantaa2e4c427b1cb8db420943d297a6855c40c3d6f677f236892e210cd0a89ab2d8.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f05aa23feab3196dc480479cae771d063e20dbe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
