# LowerHemicontinuousAt.exists_seq_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7472852d-b246-ab77-04b1-0a1ae1f5ca55",
  "kind": "lemma",
  "lexical_name": "LowerHemicontinuousAt.exists_seq_tendsto",
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
  "slug": "lowerhemicontinuousat-exists-seq-tendsto--49c2fe4e311d6ca1dfd576c1",
  "source": {
    "blob": "ee84c9d5f5382fab06ddb8d836d53157701446cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 433,
    "path": "GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49c2fe4e311d6ca1dfd576c184a63a60373b8e9a5b13f5379b9f7ec411a6c946",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7472852d-b246-ab77-04b1-0a1ae1f5ca55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LowerHemicontinuousAt.exists_seq_tendsto {x₀ : α} (hf : LowerHemicontinuousAt f x₀)
    {x : ℕ → α} (hx : Tendsto x atTop (𝓝 x₀)) {y₀ : β} (hy₀ : y₀ ∈ f x₀)
    [(𝓝 y₀).IsCountablyGenerated] :
    ∃ y : ℕ → β, (∀ᶠ n in atTop, y n ∈ f (x n)) ∧ Tendsto y atTop (𝓝 y₀) := by
  classical
  obtain ⟨U, hU, hUbasis⟩ := (nhds_basis_opens y₀).exists_antitone_subbasis
  have hev (k) : ∀ᶠ n in atTop, (f (x n) ∩ U k).Nonempty :=
    hx.eventually <| (lowerHemicontinuousAt_iff.mp hf) (U k) (hU k).2 ⟨y₀, hy₀, (hU k).1⟩
  -- For each `n`, find the largest `k ≤ n` where `U k` intersects `f (x n)`.
  let g : ℕ → ℕ := fun n ↦ Nat.findGreatest (fun k ↦ (f (x n) ∩ U k).Nonempty) n
  have key (n k) (hkn : k ≤ n) (hk : (f (x n) ∩ U k).Nonempty) : (f (x n) ∩ U (g n)).Nonempty :=
    Nat.findGreatest_spec (P := fun k ↦ (f (x n) ∩ U k).Nonempty) hkn hk
  -- Define `y n` to be some element of `f (x n) ∩ U (g n)` (or be arbitrary)
  let y : ℕ → β := fun n ↦ if h : (f (x n) ∩ U (g n)).Nonempty then h.some else y₀
  have hy (n) (h : (f (x n) ∩ U (g n)).Nonempty) : y n ∈ f (x n) ∩ U (g n) := by
    simpa only [y, dite_eq_left h] using h.some_mem
  refine ⟨y, (hev 0).mono (by grind), ?_⟩
  -- Have to show for all `k`, eventually, all `y n ∈ U k`.
  rw [hUbasis.tendsto_right_iff]
  intro k _
  filter_upwards [hev k, eventually_ge_atTop k] with n hk hkn
  exact hUbasis.antitone (Nat.le_findGreatest hkn hk) (hy n (key n k hkn hk)).2

/-- **Lower hemicontinuity along a countably generated filter** (subsequence form):
if `f : α → Set β` is lower hemicontinuous at `x₀`, `y₀ ∈ f x₀`, `𝓝 y₀` is countably generated and
`x : ι → α` tends to `x₀` along a nontrivial countably generated filter `l`, then some sequence
`u : ℕ → ι` converging to `l` admits a companion `y : ℕ → β` tending to `y₀` with
`y k ∈ f (x (u k))` eventually.

For a general filter one must pass to the subsequence `u`: the "same-index" conclusion already
fails for `l = pure i₀` (which is `NeBot` and countably generated). When `l = atTop` one may take
`u = id`, recovering `LowerHemicontinuousAt.exists_seq_tendsto`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee84c9d5f5382fab06ddb8d836d53157701446cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
