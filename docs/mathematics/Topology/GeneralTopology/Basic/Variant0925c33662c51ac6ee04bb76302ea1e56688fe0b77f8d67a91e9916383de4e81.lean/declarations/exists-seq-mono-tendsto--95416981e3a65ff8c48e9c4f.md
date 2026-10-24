# exists_seq_mono_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7af78e0-6f7c-a3ff-f15e-386061f7e73a",
  "kind": "theorem",
  "lexical_name": "exists_seq_mono_tendsto",
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
  "slug": "exists-seq-mono-tendsto--95416981e3a65ff8c48e9c4f",
  "source": {
    "blob": "db6d2dfe8366005498dd3bb04658b921a09c1a58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 428,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95416981e3a65ff8c48e9c4f1daecfa558591932aa233db1c9875b6ba14eb98d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7af78e0-6f7c-a3ff-f15e-386061f7e73a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_seq_mono_tendsto (I : Box ι) :
    ∃ J : ℕ →o Box ι,
      (∀ n, Box.Icc (J n) ⊆ Box.Ioo I) ∧
        Tendsto (lower ∘ J) atTop (𝓝 I.lower) ∧ Tendsto (upper ∘ J) atTop (𝓝 I.upper) := by
  choose a b ha_anti hb_mono ha_mem hb_mem hab ha_tendsto hb_tendsto using
    fun i ↦ exists_seq_strictAnti_strictMono_tendsto (I.lower_lt_upper i)
  exact
    ⟨⟨fun k ↦ ⟨flip a k, flip b k, fun i ↦ hab _ _ _⟩, fun k l hkl ↦
        le_iff_bounds.2 ⟨fun i ↦ (ha_anti i).antitone hkl, fun i ↦ (hb_mono i).monotone hkl⟩⟩,
      fun n x hx i _ ↦ ⟨(ha_mem _ _).1.trans_le (hx.1 _), (hx.2 _).trans_lt (hb_mem _ _).2⟩,
      tendsto_pi_nhds.2 ha_tendsto, tendsto_pi_nhds.2 hb_tendsto⟩

section Distortion

variable [Fintype ι]

/-- The distortion of a box `I` is the maximum of the ratios of the lengths of its edges.
It is defined as the maximum of the ratios
`nndist I.lower I.upper / nndist (I.lower i) (I.upper i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db6d2dfe8366005498dd3bb04658b921a09c1a58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
