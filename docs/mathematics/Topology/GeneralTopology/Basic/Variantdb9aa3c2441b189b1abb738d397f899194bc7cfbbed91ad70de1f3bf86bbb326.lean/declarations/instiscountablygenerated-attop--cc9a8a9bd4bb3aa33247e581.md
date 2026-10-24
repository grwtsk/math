# instIsCountablyGenerated_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:173a4f2dcde55d27614659a850f81896c0f04609f753b0b84bdbbdf60fcac399",
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
  "slug": "instiscountablygenerated-attop--cc9a8a9bd4bb3aa33247e581",
  "source": {
    "blob": "6bdc8ca6049a776cdfbf567bda8ac8ee527505d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 744,
    "line": 715,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc9a8a9bd4bb3aa33247e581c2eb3f8fcee8a58526f171a455fa358cfffd4708",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:173a4f2dcde55d27614659a850f81896c0f04609f753b0b84bdbbdf60fcac399`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 715–744.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsCountablyGenerated_atTop [SeparableSpace α] :
    IsCountablyGenerated (atTop : Filter α) := by
  obtain (h | ⟨x, hx⟩) := Set.eq_empty_or_nonempty {x : α | IsTop x}
  · obtain ⟨s, s_count, hs⟩ := exists_countable_dense α
    have : atTop = generate (Ici '' s) := by
      refine atTop_eq_generate_of_not_bddAbove fun ⟨x, hx⟩ ↦ ?_
      simp only [eq_empty_iff_forall_notMem, IsTop, mem_ofPred_eq, not_forall, not_le] at h
      obtain ⟨y, hy, hxy⟩ := hs.exists_mem_open isOpen_Ioi (h x)
      exact (hx hy).not_gt hxy
    rw [this]
    exact ⟨_, s_count.image _, rfl⟩
  · rw [atTop_eq_pure_of_isTop hx]
    exact isCountablyGenerated_pure x

end OrderTopology

section Pi

/-!
### Intervals in `Π i, X i` belong to `𝓝 x`

For each lemma `pi_Ixx_mem_nhds` we add a non-dependent version `pi_Ixx_mem_nhds'` because
sometimes Lean fails to unify different instances while trying to apply the dependent version to,
e.g., `ι → ℝ`.
-/

variable [OrderTopology α] {ι : Type*} {X : ι → Type*} [Finite ι] [∀ i, LinearOrder (X i)]
  [∀ i, TopologicalSpace (X i)] [∀ i, OrderTopology (X i)] {a b x : ∀ i, X i} {a' b' x' : ι → α}

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean#L715).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bdc8ca6049a776cdfbf567bda8ac8ee527505d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
