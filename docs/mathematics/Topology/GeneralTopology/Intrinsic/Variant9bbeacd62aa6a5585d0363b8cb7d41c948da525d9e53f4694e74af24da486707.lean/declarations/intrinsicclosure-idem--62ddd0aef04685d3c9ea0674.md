# intrinsicClosure_idem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89f9bac9-60bd-3384-d7bd-18e1fe58659d",
  "kind": "theorem",
  "lexical_name": "intrinsicClosure_idem",
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
  "slug": "intrinsicclosure-idem--62ddd0aef04685d3c9ea0674",
  "source": {
    "blob": "5c2e8732d6db4461d667d61ee457dd5d45601116",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 201,
    "path": "GRWTSK/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62ddd0aef04685d3c9ea067447ee3259622f1adaf38511afd8be51f438ff6e25",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89f9bac9-60bd-3384-d7bd-18e1fe58659d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intrinsicClosure_idem (s : Set P) :
    intrinsicClosure 𝕜 (intrinsicClosure 𝕜 s) = intrinsicClosure 𝕜 s := by
  refine IsClosed.intrinsicClosure ?_
  set t := affineSpan 𝕜 (intrinsicClosure 𝕜 s) with ht
  clear_value t
  obtain rfl := ht.trans (affineSpan_intrinsicClosure _)
  rw [intrinsicClosure, preimage_image_eq _ Subtype.coe_injective]
  exact isClosed_closure

end AddTorsor

namespace AffineIsometry

variable [NormedField 𝕜] [SeminormedAddCommGroup V] [SeminormedAddCommGroup W] [NormedSpace 𝕜 V]
  [NormedSpace 𝕜 W] [MetricSpace P] [PseudoMetricSpace Q] [NormedAddTorsor V P]
  [NormedAddTorsor W Q]

-- Porting note: Removed attribute `local nolint fails_quickly`
attribute [local instance] AffineSubspace.toNormedAddTorsor AffineSubspace.nonempty_map

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c2e8732d6db4461d667d61ee457dd5d45601116` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
