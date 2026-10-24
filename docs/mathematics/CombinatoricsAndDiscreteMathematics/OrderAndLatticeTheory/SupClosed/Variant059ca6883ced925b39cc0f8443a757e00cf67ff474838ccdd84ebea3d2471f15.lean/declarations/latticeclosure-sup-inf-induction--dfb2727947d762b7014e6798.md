# latticeClosure_sup_inf_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bee61b6655c28d4a68417a569e4024a3e4dee28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/059ca6883ced925b39cc0f8443a757e00cf67ff474838ccdd84ebea3d2471f15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e08a71af-dcdc-d922-430f-3b871f0e5128",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd9ccd1c-e3ee-4f30-82e3-1bc850a776a0",
  "kind": "lemma",
  "lexical_name": "latticeClosure_sup_inf_induction",
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
  "slug": "latticeclosure-sup-inf-induction--dfb2727947d762b7014e6798",
  "source": {
    "blob": "2bee61b6655c28d4a68417a569e4024a3e4dee28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 325,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant059ca6883ced925b39cc0f8443a757e00cf67ff474838ccdd84ebea3d2471f15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfb2727947d762b7014e6798929fe6cade2de2ce79b1f155304d0cbb4bd4f9c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant059ca6883ced925b39cc0f8443a757e00cf67ff474838ccdd84ebea3d2471f15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd9ccd1c-e3ee-4f30-82e3-1bc850a776a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma latticeClosure_sup_inf_induction (p : (a : α) → a ∈ latticeClosure s → Prop)
    (mem : ∀ (a : α) (has : a ∈ s), p a (subset_latticeClosure has))
    (sup : ∀ (a : α) (has : a ∈ latticeClosure s) (b : α) (hbs : b ∈ latticeClosure s),
      p a has → p b hbs → p (a ⊔ b) (isSublattice_latticeClosure.supClosed has hbs))
    (inf : ∀ (a : α) (has : a ∈ latticeClosure s) (b : α) (hbs : b ∈ latticeClosure s),
      p a has → p b hbs → p (a ⊓ b) (isSublattice_latticeClosure.infClosed has hbs))
    {a : α} (has : a ∈ latticeClosure s) :
    p a has := by
  have h : IsSublattice { a : α | ∃ has : a ∈ latticeClosure s, p a has } := {
    supClosed := fun a ⟨has, hpa⟩ b ⟨hbs, hpb⟩ =>
      ⟨isSublattice_latticeClosure.supClosed has hbs, sup a has b hbs hpa hpb⟩
    infClosed := fun a ⟨has, hpa⟩ b ⟨hbs, hpb⟩ =>
      ⟨isSublattice_latticeClosure.infClosed has hbs, inf a has b hbs hpa hpb⟩ }
  refine (latticeClosure_min (fun a ha ↦ ?_) h has).choose_spec
  exact ⟨subset_latticeClosure ha, mem a ha⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant059ca6883ced925b39cc0f8443a757e00cf67ff474838ccdd84ebea3d2471f15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant059ca6883ced925b39cc0f8443a757e00cf67ff474838ccdd84ebea3d2471f15.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bee61b6655c28d4a68417a569e4024a3e4dee28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
