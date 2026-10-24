# completeSpace_of_weaklyLocallyCompactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e743378-c590-546c-6cdc-13268dc7234f",
  "kind": "theorem",
  "lexical_name": "completeSpace_of_weaklyLocallyCompactSpace",
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
  "slug": "completespace-of-weaklylocallycompactspace--0c83ceb0a4e4dd4534d4540b",
  "source": {
    "blob": "3c0174bdd65ba9c013d8831bee9924a83451ac6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8a54c95892872d07763bccb96b2023b056d03c2b897cbba8f30ad0eb691509ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c83ceb0a4e4dd4534d4540b6f002c05801a7bce5f950c4daf4c866bb5fd5275",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8a54c95892872d07763bccb96b2023b056d03c2b897cbba8f30ad0eb691509ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e743378-c590-546c-6cdc-13268dc7234f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeSpace_of_weaklyLocallyCompactSpace
    [WeaklyLocallyCompactSpace G] : CompleteSpace G where
  complete {f} hf := by
    have : f.NeBot := hf.1
    obtain ⟨K, K_compact, K_mem⟩ := WeaklyLocallyCompactSpace.exists_compact_mem_nhds (1 : G)
    obtain ⟨x, hx⟩ : ∃ x, ∀ᶠ y in f, x⁻¹ * y ∈ K := by
      rw [cauchy_iff_le, uniformity_eq_comap_inv_mul_nhds_one, ← tendsto_iff_comap] at hf
      exact hf.eventually_mem K_mem |>.curry.exists
    simp_rw [← smul_eq_mul, ← Set.mem_smul_set_iff_inv_smul_mem] at hx
    have Kx_complete : IsComplete (x • K) := K_compact.smul _ |>.isComplete
    obtain ⟨l, -, hl⟩ := Kx_complete f hf (by simpa using hx)
    exact ⟨l, hl⟩

end IsLeftUniformGroup

namespace IsRightUniformGroup

variable (G : Type*) [Group G] [UniformSpace G] [IsRightUniformGroup G]

-- not an instance for performance reasons, see benchmark on PR #42117
/-- A locally compact right-uniform group is complete. -/
@[to_additive
/-- A locally compact right-uniform additive group is complete. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8a54c95892872d07763bccb96b2023b056d03c2b897cbba8f30ad0eb691509ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8a54c95892872d07763bccb96b2023b056d03c2b897cbba8f30ad0eb691509ad.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c0174bdd65ba9c013d8831bee9924a83451ac6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
