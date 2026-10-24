# HasCompactMulSupport.is_one_at_infty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22210dde-86f7-603c-730a-aaffe6f3ef9a",
  "kind": "theorem",
  "lexical_name": "HasCompactMulSupport.is_one_at_infty",
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
  "slug": "hascompactmulsupport-is-one-at-infty--28d436f2bdf14bdae579cac1",
  "source": {
    "blob": "97ab3169a8e315499a405b1973150ada5e21b9bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 231,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28d436f2bdf14bdae579cac100fe6f351126b5729a246d0dce2612004eeeafb7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22210dde-86f7-603c-730a-aaffe6f3ef9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasCompactMulSupport.is_one_at_infty {f : α → γ} [TopologicalSpace γ] [One γ]
    (h : HasCompactMulSupport f) : Tendsto f (cocompact α) (𝓝 1) := by
  -- porting note: move to src/topology/support.lean once the port is over
  intro N hN
  rw [mem_map, mem_cocompact']
  refine' ⟨mulTSupport f, h.isCompact, _⟩
  rw [compl_subset_comm]
  intro v hv
  rw [mem_preimage, image_eq_one_of_nmem_mulTSupport hv]
  exact mem_of_mem_nhds hN
#align has_compact_mul_support.is_one_at_infty HasCompactMulSupport.is_one_at_infty
#align has_compact_support.is_zero_at_infty HasCompactSupport.is_zero_at_infty

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ab3169a8e315499a405b1973150ada5e21b9bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
