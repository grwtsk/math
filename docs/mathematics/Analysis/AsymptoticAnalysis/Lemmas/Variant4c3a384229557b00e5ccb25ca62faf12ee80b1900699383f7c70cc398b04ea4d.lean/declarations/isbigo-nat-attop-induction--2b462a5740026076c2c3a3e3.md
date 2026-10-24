# isBigO_nat_atTop_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e19025e2919c8cc17a7b6dfca656e4bf7a015b1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 735,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b24703f-60d4-4ac0-1095-dec3e85b2f0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a62984e8-dd8b-3b91-a986-d964751b0d92",
  "kind": "lemma",
  "lexical_name": "isBigO_nat_atTop_induction",
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
  "slug": "isbigo-nat-attop-induction--2b462a5740026076c2c3a3e3",
  "source": {
    "blob": "e19025e2919c8cc17a7b6dfca656e4bf7a015b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 765,
    "line": 735,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b462a5740026076c2c3a3e3550d97b0a1376df7279c9a6fc22455bf833fc4a6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Lemmas/Variant4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a62984e8-dd8b-3b91-a986-d964751b0d92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–765.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBigO_nat_atTop_induction {f : ℕ → E''} {g : ℕ → F''}
    (h : ∀ᶠ n in atTop, g n = 0 → f n = 0)
    (hrec : ∀ᶠ n₀ in atTop, ∃ C₀, ∀ᶠ n in atTop, ∀ C ≥ C₀,
      (∀ m ∈ Finset.Ico n₀ n, ‖f m‖ ≤ C * ‖g m‖) → ‖f n‖ ≤ C * ‖g n‖) :
    f =O[atTop] g := by
  rw [← eventually_forall_ge_atTop] at h
  obtain ⟨n₀, h, hrec⟩ := h.and hrec |>.exists
  obtain ⟨C₀, hrec⟩ := hrec
  rw [isBigO_iff]
  rw [← eventually_forall_ge_atTop] at hrec
  obtain ⟨n₁, H₁, H₂⟩ := (eventually_ge_atTop n₀).and hrec |>.exists
  let ubounds := {C | ∀ m ∈ Finset.Icc n₀ n₁, ‖f m‖ ≤ C * ‖g m‖}
  let C₁ := (Finset.Icc n₀ n₁).sup' (Finset.nonempty_Icc.mpr H₁) fun n => ‖f n‖ / ‖g n‖
  have C₁_mem : C₁ ∈ ubounds := by
    rw [Set.mem_ofPred]
    intro m hm
    calc ‖f m‖ = (‖f m‖ / ‖g m‖) * ‖g m‖ := by by_cases hm' : g m = 0 <;> grind [norm_eq_zero]
      _ ≤ C₁ * ‖g m‖ := by
        gcongr
        exact Finset.le_sup' (fun x => ‖f x‖ / ‖g x‖) (Finset.mem_def.mpr hm)
  refine ⟨max C₀ C₁, ?_⟩
  filter_upwards [eventually_ge_atTop n₁] with n hn
  induction n using Nat.strongRecOn with
  | ind n h_ind =>
    refine H₂ _ (by grind) _ (by grind) fun m hm => ?_
    by_cases hbase : m < n₁
    · have hC₁ : C₁ ≤ max C₀ C₁ := by grind
      grw [← hC₁]
      grind
    · grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Lemmas/Variant4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e19025e2919c8cc17a7b6dfca656e4bf7a015b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
