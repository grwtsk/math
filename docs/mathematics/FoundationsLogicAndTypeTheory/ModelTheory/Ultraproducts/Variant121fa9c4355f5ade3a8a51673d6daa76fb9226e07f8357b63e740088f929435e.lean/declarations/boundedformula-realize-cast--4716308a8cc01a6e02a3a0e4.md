# boundedFormula_realize_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "338cdcea73860e678efa8c017298f04bb659347d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e82c3fa4-7b2b-d104-b443-27227ead5cd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09d196eb-070c-8c52-af87-75cb8a1dacbf",
  "kind": "theorem",
  "lexical_name": "boundedFormula_realize_cast",
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
  "slug": "boundedformula-realize-cast--4716308a8cc01a6e02a3a0e4",
  "source": {
    "blob": "338cdcea73860e678efa8c017298f04bb659347d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4716308a8cc01a6e02a3a0e4fd63f52ec502b32fe7268eb817e75c0078778a7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09d196eb-070c-8c52-af87-75cb8a1dacbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundedFormula_realize_cast {β : Type*} {n : ℕ} (φ : L.BoundedFormula β n)
    (x : β → ∀ a, M a) (v : Fin n → ∀ a, M a) :
    (φ.Realize (fun i : β => (x i : (u : Filter α).Product M))
        (fun i => (v i : (u : Filter α).Product M))) ↔
      ∀ᶠ a : α in u, φ.Realize (fun i : β => x i a) fun i => v i a := by
  letI := (u : Filter α).productSetoid M
  induction φ with
  | falsum => simp only [BoundedFormula.Realize, eventually_const]
  | equal =>
    have h2 : ∀ a : α, (Sum.elim (fun i : β => x i a) fun i => v i a) = fun i => Sum.elim x v i a :=
      fun a => funext fun i => Sum.casesOn i (fun i => rfl) fun i => rfl
    simp only [BoundedFormula.Realize, h2, term_realize_cast]
    erw [(Sum.comp_elim ((↑) : (∀ a, M a) → (u : Filter α).Product M) x v).symm,
      term_realize_cast, term_realize_cast]
    exact Quotient.eq''
  | rel =>
    have h2 : ∀ a : α, (Sum.elim (fun i : β => x i a) fun i => v i a) = fun i => Sum.elim x v i a :=
      fun a => funext fun i => Sum.casesOn i (fun i => rfl) fun i => rfl
    simp only [BoundedFormula.Realize, h2]
    erw [(Sum.comp_elim ((↑) : (∀ a, M a) → (u : Filter α).Product M) x v).symm]
    conv_lhs => enter [2, i]; erw [term_realize_cast]
    apply relMap_quotient_mk'
  | imp _ _ ih ih' =>
    simp only [BoundedFormula.Realize, ih v, ih' v]
    rw [Ultrafilter.eventually_imp]
  | @all k φ ih =>
    simp only [BoundedFormula.Realize]
    apply Iff.trans (b := ∀ m : ∀ a : α, M a,
      φ.Realize (fun i : β => (x i : (u : Filter α).Product M))
        (Fin.snoc (((↑) : (∀ a, M a) → (u : Filter α).Product M) ∘ v)
          (m : (u : Filter α).Product M)))
    · exact Quotient.forall
    have h' :
      ∀ (m : ∀ a, M a) (a : α),
        (fun i : Fin (k + 1) => (Fin.snoc v m : _ → ∀ a, M a) i a) =
          Fin.snoc (fun i : Fin k => v i a) (m a) := by
      refine fun m a => funext (Fin.reverseInduction ?_ fun i _ => ?_)
      · simp only [Fin.snoc_last]
      · simp only [Fin.snoc_castSucc]
    simp only [← Fin.comp_snoc]
    simp only [Function.comp_def, ih, h']
    refine ⟨fun h => ?_, fun h m => ?_⟩
    · contrapose! h
      simp_rw [← Ultrafilter.eventually_not, not_forall] at h
      refine
        ⟨fun a : α =>
          Classical.epsilon fun m : M a =>
            ¬φ.Realize (fun i => x i a) (Fin.snoc (fun i => v i a) m),
          ?_⟩
      rw [← Ultrafilter.eventually_not]
      exact Filter.mem_of_superset h fun a ha => Classical.epsilon_spec ha
    · rw [Filter.eventually_iff] at *
      exact Filter.mem_of_superset h fun a ha => ha (m a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `338cdcea73860e678efa8c017298f04bb659347d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
