# isCoveringMapOn_of_smul_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0b356e0-ad1a-6d17-5453-ce9e0edb0dbf",
  "kind": "lemma",
  "lexical_name": "isCoveringMapOn_of_smul_disjoint",
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
  "slug": "iscoveringmapon-of-smul-disjoint--594b03b5c0340edccd61bb52",
  "source": {
    "blob": "3348d2a4068c7336738a5f5144d377e4ea0847dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 216,
    "path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:594b03b5c0340edccd61bb521221c0faa889256740f4fa49a64a331c471bc9e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0b356e0-ad1a-6d17-5453-ce9e0edb0dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma isCoveringMapOn_of_smul_disjoint
    (disjoint : ∀ e : E, ∃ U ∈ 𝓝 e, ∀ g : G, ((g • ·) '' U ∩ U).Nonempty → g • e = e) :
    IsCoveringMapOn f (f '' {e | MulAction.stabilizer G e = ⊥}) := by
  let : TopologicalSpace G := ⊥; have : DiscreteTopology G := ⟨rfl⟩
  suffices ∀ x ∈ f '' {e | MulAction.stabilizer G e = ⊥}, ∃ t : Trivialization G f, x ∈ t.baseSet by
    choose t ht using this; exact IsCoveringMapOn.mk _ _ _ _ fun x ↦ ht x x.2
  rintro x ⟨e, he, rfl⟩
  have ⟨U, heU, hU⟩ := disjoint e
  refine ⟨hf.trivializationOfSMulDisjoint hfG (interior U) isOpen_interior
    fun g hg ↦ ?_, e, mem_interior_iff_mem_nhds.mpr heU, rfl⟩
  rw [← Subgroup.mem_bot, ← he]
  exact hU _ (hg.mono (by grw [interior_subset]))

section ProperlyDiscontinuousSMul

variable [ProperlyDiscontinuousSMul G E] [LocallyCompactSpace E] [T2Space E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3348d2a4068c7336738a5f5144d377e4ea0847dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
