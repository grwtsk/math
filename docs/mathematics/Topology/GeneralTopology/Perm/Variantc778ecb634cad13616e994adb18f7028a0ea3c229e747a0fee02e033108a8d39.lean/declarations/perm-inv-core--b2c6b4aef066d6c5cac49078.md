# perm_inv_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59a94253076fafc6c6e005cadd7171fcd02631a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c778ecb634cad13616e994adb18f7028a0ea3c229e747a0fee02e033108a8d39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3acf254d-d166-5d6e-e02c-4183eb28d4ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95599115-9a61-0366-22d1-57c4677f8146",
  "kind": "theorem",
  "lexical_name": "perm_inv_core",
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
  "slug": "perm-inv-core--b2c6b4aef066d6c5cac49078",
  "source": {
    "blob": "59a94253076fafc6c6e005cadd7171fcd02631a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 359,
    "path": "GRWTSK/Topology/GeneralTopology/Perm/Variantc778ecb634cad13616e994adb18f7028a0ea3c229e747a0fee02e033108a8d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2c6b4aef066d6c5cac49078d4be747eb177dfae0e7d9438c75467a9c104946a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perm/Variantc778ecb634cad13616e994adb18f7028a0ea3c229e747a0fee02e033108a8d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95599115-9a61-0366-22d1-57c4677f8146`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perm_inv_core {a : α} {l₁ l₂ r₁ r₂ : List α} :
    l₁ ++ a :: r₁ ~ l₂ ++ a :: r₂ → l₁ ++ r₁ ~ l₂ ++ r₂ := by
  -- Necessary generalization for `induction`
  suffices ∀ s₁ s₂ (_ : s₁ ~ s₂) {l₁ l₂ r₁ r₂},
      l₁ ++ a :: r₁ = s₁ → l₂ ++ a :: r₂ = s₂ → l₁ ++ r₁ ~ l₂ ++ r₂ from (this _ _ · rfl rfl)
  intro s₁ s₂ p
  induction p using Perm.recOnSwap' with intro l₁ l₂ r₁ r₂ e₁ e₂
  | nil =>
    simp at e₁
  | cons x p IH =>
    cases l₁ <;> cases l₂ <;>
      dsimp at e₁ e₂ <;> injections <;> subst_vars
    · exact p
    · exact p.trans perm_middle
    · exact perm_middle.symm.trans p
    · exact (IH rfl rfl).cons _
  | swap' x y p IH =>
    obtain _ | ⟨y, _ | ⟨z, l₁⟩⟩ := l₁
      <;> obtain _ | ⟨u, _ | ⟨v, l₂⟩⟩ := l₂
      <;> dsimp at e₁ e₂ <;> injections <;> subst_vars
      <;> try exact p.cons _
    · exact (p.trans perm_middle).cons u
    · exact ((p.trans perm_middle).cons _).trans (swap _ _ _)
    · exact (perm_middle.symm.trans p).cons y
    · exact (swap _ _ _).trans ((perm_middle.symm.trans p).cons u)
    · exact (IH rfl rfl).swap' _ _
  | trans p₁ p₂ IH₁ IH₂ =>
    subst e₁ e₂
    obtain ⟨l₂, r₂, rfl⟩ := append_of_mem (a := a) (p₁.subset (by simp))
    exact (IH₁ rfl rfl).trans (IH₂ rfl rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perm/Variantc778ecb634cad13616e994adb18f7028a0ea3c229e747a0fee02e033108a8d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perm/Variantc778ecb634cad13616e994adb18f7028a0ea3c229e747a0fee02e033108a8d39.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59a94253076fafc6c6e005cadd7171fcd02631a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
