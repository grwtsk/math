# applyId_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:930d4309-5230-4503-bd6b-0598f2a7bfc2",
  "kind": "theorem",
  "lexical_name": "applyId_mem_iff",
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
  "slug": "applyid-mem-iff--43e77a834cbc1d37098189f8",
  "source": {
    "blob": "14b83ee06429ca1f7b0cf6b9279be4c0c2b6e1d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43e77a834cbc1d37098189f8ea98071262f7c021e19ee0575bf27708275db2df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:930d4309-5230-4503-bd6b-0598f2a7bfc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyId_mem_iff [DecidableEq α] {xs ys : List α} (h₀ : List.Nodup xs) (h₁ : xs ~ ys)
    (x : α) : List.applyId.{u} (xs.zip ys) x ∈ ys ↔ x ∈ xs := by
  simp only [List.applyId]
  cases h₃ : List.dlookup x (List.map Prod.toSigma (xs.zip ys)) with
  | none =>
    dsimp [Option.getD]
    rw [h₁.mem_iff]
  | some val =>
    have h₂ : ys.Nodup := h₁.nodup_iff.1 h₀
    replace h₁ : xs.length = ys.length := h₁.length_eq
    dsimp
    induction xs generalizing ys with
    | nil => contradiction
    | cons x' xs xs_ih =>
      rcases ys with - | ⟨y, ys⟩
      · cases h₃
      dsimp [List.dlookup] at h₃; split_ifs at h₃ with h
      · rw [Option.some_inj] at h₃
        subst x'; subst val
        simp only [List.mem_cons, true_or, eq_self_iff_true]
      · obtain - | ⟨h₀, h₅⟩ := h₀
        obtain - | ⟨h₂, h₄⟩ := h₂
        have h₆ := Nat.succ.inj h₁
        specialize xs_ih h₅ h₃ h₄ h₆
        simp only [Ne.symm h, xs_ih, List.mem_cons]
        suffices val ∈ ys by tauto
        rw [← Option.mem_def, List.mem_dlookup_iff] at h₃
        · simp only [Prod.toSigma, List.mem_map, heq_iff_eq, Prod.exists] at h₃
          rcases h₃ with ⟨a, b, h₃, h₄, h₅⟩
          apply (List.of_mem_zip h₃).2
        simp only [List.NodupKeys, List.keys, comp_def, Prod.fst_toSigma, List.map_map]
        rwa [List.map_fst_zip (le_of_eq h₆)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14b83ee06429ca1f7b0cf6b9279be4c0c2b6e1d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
