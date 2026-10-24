# instIsCountablyGenerated_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4adbbe207303e44568acfb4b9daec248d880fd1550647c891958e3389e3353f0",
  "kind": "instance",
  "lexical_name": "instIsCountablyGenerated_atTop",
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
  "slug": "instiscountablygenerated-attop--e65e8cb4a7a1693b107ec69c",
  "source": {
    "blob": "55a7510276f30c2bbe70b43993143d137ed0ed25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 642,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e65e8cb4a7a1693b107ec69cfd770e59e6d0b0109c2e401f54c28baddbddfcc2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4adbbe207303e44568acfb4b9daec248d880fd1550647c891958e3389e3353f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsCountablyGenerated_atTop [OrderTopology α] [SecondCountableTopology α] :
    IsCountablyGenerated (atTop : Filter α) := by
  by_cases h : ∃ (x : α), IsTop x
  · rcases h with ⟨x, hx⟩
    rw [atTop_eq_pure_of_isTop hx]
    exact isCountablyGenerated_pure x
  · rcases exists_countable_basis α with ⟨b, b_count, b_ne, hb⟩
    have : Countable b := by exact Iff.mpr countable_coe_iff b_count
    have A : ∀ (s : b), ∃ (x : α), x ∈ (s : Set α) := by
      intro s
      have : (s : Set α) ≠ ∅ := by
        intro H
        apply b_ne
        convert s.2
        exact H.symm
      exact Iff.mp notMem_singleton_empty this
    choose a ha using A
    have : (atTop : Filter α) = (generate (Ici '' (range a))) := by
      apply atTop_eq_generate_of_not_bddAbove
      intro ⟨x, hx⟩
      simp only [IsTop, not_exists, not_forall, not_le] at h
      rcases h x with ⟨y, hy⟩
      obtain ⟨s, sb, -, hs⟩ : ∃ s, s ∈ b ∧ y ∈ s ∧ s ⊆ Ioi x :=
        hb.exists_subset_of_mem_open hy isOpen_Ioi
      have I : a ⟨s, sb⟩ ≤ x := hx (mem_range_self _)
      have J : x < a ⟨s, sb⟩ := hs (ha ⟨s, sb⟩)
      exact lt_irrefl _ (I.trans_lt J)
    rw [this]
    exact ⟨_, (countable_range _).image _, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55a7510276f30c2bbe70b43993143d137ed0ed25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
