# contMDiffOn_iff_source_of_mem_maximalAtlas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb3bfd4d-8380-6a6e-bf99-5944b58b5fb8",
  "kind": "theorem",
  "lexical_name": "contMDiffOn_iff_source_of_mem_maximalAtlas",
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
  "slug": "contmdiffon-iff-source-of-mem-maximalatlas--a5a4e1a3456266c408dde15c",
  "source": {
    "blob": "a09ef88902e31effc13a32653c4edc052505d3be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 788,
    "line": 776,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantc3358b60ecf4cfc29185877a85216c5c7117c65a63cbc734d4875233cfe60375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5a4e1a3456266c408dde15c033707465dc43264b24c050fc7fd2eb725deb346",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variantc3358b60ecf4cfc29185877a85216c5c7117c65a63cbc734d4875233cfe60375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb3bfd4d-8380-6a6e-bf99-5944b58b5fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 776–788.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffOn_iff_source_of_mem_maximalAtlas [IsManifold I n M]
    (he : e ∈ maximalAtlas I n M) (hs : s ⊆ e.source) :
    ContMDiffOn I I' n f s ↔
      ContMDiffOn 𝓘(𝕜, E) I' n (f ∘ (e.extend I).symm) (e.extend I '' s) := by
  simp_rw [ContMDiffOn, Set.forall_mem_image]
  refine forall₂_congr fun x hx => ?_
  rw [contMDiffWithinAt_iff_source_of_mem_maximalAtlas he (hs hx)]
  apply contMDiffWithinAt_congr_set
  simp_rw [e.extend_symm_preimage_inter_range_eventuallyEq hs (hs hx)]

-- Porting note: didn't compile; fixed by golfing the proof and moving parts to lemmas
/-- A function is `C^n` within a set at a point, for `n : ℕ` or `n = ω`,
if and only if it is `C^n` on a neighborhood of this point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variantc3358b60ecf4cfc29185877a85216c5c7117c65a63cbc734d4875233cfe60375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variantc3358b60ecf4cfc29185877a85216c5c7117c65a63cbc734d4875233cfe60375.lean#L776).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a09ef88902e31effc13a32653c4edc052505d3be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
