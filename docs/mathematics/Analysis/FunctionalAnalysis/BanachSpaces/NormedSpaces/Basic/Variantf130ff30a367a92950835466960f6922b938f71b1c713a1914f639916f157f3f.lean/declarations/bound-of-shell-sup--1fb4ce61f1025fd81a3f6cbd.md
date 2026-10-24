# bound_of_shell_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d06f9ab5aa82edd455f79e15bccbfc5d3c61e27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f130ff30a367a92950835466960f6922b938f71b1c713a1914f639916f157f3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8983e728-c0b8-7545-906f-f55ade18c8d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7904b91d-b331-1461-e2da-1b0c39a247ec",
  "kind": "lemma",
  "lexical_name": "bound_of_shell_sup",
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
  "slug": "bound-of-shell-sup--1fb4ce61f1025fd81a3f6cbd",
  "source": {
    "blob": "8d06f9ab5aa82edd455f79e15bccbfc5d3c61e27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1307,
    "line": 1286,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf130ff30a367a92950835466960f6922b938f71b1c713a1914f639916f157f3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fb4ce61f1025fd81a3f6cbdc0a277d9f28dbf6c1e079f52dee9fd3984acdc5f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf130ff30a367a92950835466960f6922b938f71b1c713a1914f639916f157f3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7904b91d-b331-1461-e2da-1b0c39a247ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1286–1307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bound_of_shell_sup (p : ι → Seminorm 𝕜 E) (s : Finset ι)
    (q : Seminorm 𝕜 E) {ε : ℝ} {C : ℝ≥0} (ε_pos : 0 < ε) {c : 𝕜} (hc : 1 < ‖c‖)
    (hf : ∀ x, (∀ i ∈ s, p i x < ε) → ∀ j ∈ s, ε / ‖c‖ ≤ p j x → q x ≤ (C • p j) x)
    {x : E} (hx : ∃ j, j ∈ s ∧ p j x ≠ 0) :
    q x ≤ (C • s.sup p) x := by
  rcases hx with ⟨j, hj, hjx⟩
  have : (s.sup p) x ≠ 0 :=
    ne_of_gt ((hjx.symm.lt_of_le <| apply_nonneg _ _).trans_le (le_finset_sup_apply hj))
  refine (s.sup p).bound_of_shell_smul q ε_pos hc (fun y hle hlt ↦ ?_) this
  rcases exists_apply_eq_finset_sup p ⟨j, hj⟩ y with ⟨i, hi, hiy⟩
  rw [smul_apply, hiy]
  exact hf y (fun k hk ↦ (le_finset_sup_apply hk).trans_lt hlt) i hi (hiy ▸ hle)

end ShellLemmas

section NontriviallyNormedField

variable [NontriviallyNormedField 𝕜] [AddCommGroup E] [Module 𝕜 E]

/-- Let `p i` be a family of seminorms on `E`. Let `s` be an absorbent set in `𝕜`.
If all seminorms are uniformly bounded at every point of `s`,
then they are bounded in the space of seminorms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf130ff30a367a92950835466960f6922b938f71b1c713a1914f639916f157f3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf130ff30a367a92950835466960f6922b938f71b1c713a1914f639916f157f3f.lean#L1286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d06f9ab5aa82edd455f79e15bccbfc5d3c61e27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
