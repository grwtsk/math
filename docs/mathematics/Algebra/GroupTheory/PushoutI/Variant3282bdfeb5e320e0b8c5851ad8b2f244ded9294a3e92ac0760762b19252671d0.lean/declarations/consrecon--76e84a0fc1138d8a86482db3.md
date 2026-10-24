# consRecOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0668d8c10e6d3de6c1c9f8a7062d9013262210f515aba272a511c4223a44dcba",
  "kind": "def",
  "lexical_name": "consRecOn",
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
  "slug": "consrecon--76e84a0fc1138d8a86482db3",
  "source": {
    "blob": "993453553d0f9e5e7faf38ad15f434a476bd2883",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 490,
    "path": "GRWTSK/Algebra/GroupTheory/PushoutI/Variant3282bdfeb5e320e0b8c5851ad8b2f244ded9294a3e92ac0760762b19252671d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76e84a0fc1138d8a86482db3be941012b2b923e3665cdc6fd0dd86d8e1a79335",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PushoutI/Variant3282bdfeb5e320e0b8c5851ad8b2f244ded9294a3e92ac0760762b19252671d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0668d8c10e6d3de6c1c9f8a7062d9013262210f515aba272a511c4223a44dcba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def consRecOn {motive : NormalWord d → Sort _} (w : NormalWord d)
    (empty : motive empty)
    (cons : ∀ (i : ι) (g : G i) (w : NormalWord d) (hmw : w.fstIdx ≠ some i)
      (_hgn : g ∈ d.set i) (hgr : g ∉ (φ i).range) (_hw1 : w.head = 1),
      motive w → motive (cons g w hmw hgr))
    (base : ∀ (h : H) (w : NormalWord d), w.head = 1 → motive w → motive
      (base φ h • w)) : motive w := by
  rcases w with ⟨w, head, h3⟩
  convert! base head ⟨w, 1, h3⟩ rfl ?_
  · simp [base_smul_def]
  · induction w using Word.consRecOn with
    | empty => exact empty
    | cons i g w h1 hg1 ih =>
      convert!
        cons i g ⟨w, 1, fun _ _ h => h3 _ _ (List.mem_cons_of_mem _ h)⟩ h1
          (h3 _ _ List.mem_cons_self) ?_ rfl (ih ?_)
      · simp only [Word.cons, NormalWord.cons, map_one, mul_one,
          (equiv_snd_eq_self_iff_mem (d.compl i) (one_mem _)).2
          (h3 _ _ List.mem_cons_self)]
      · apply d.injective i
        simp only [NormalWord.cons, equiv_fst_eq_mul_inv, MonoidHom.apply_ofInjective_symm,
          map_one, mul_one, mul_inv_cancel, (equiv_snd_eq_self_iff_mem (d.compl i) (one_mem _)).2
          (h3 _ _ List.mem_cons_self)]
      · rwa [← SetLike.mem_coe,
          ← coe_equiv_snd_eq_one_iff_mem (d.compl i) (d.one_mem _),
          (equiv_snd_eq_self_iff_mem (d.compl i) (one_mem _)).2
          (h3 _ _ List.mem_cons_self)]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PushoutI/Variant3282bdfeb5e320e0b8c5851ad8b2f244ded9294a3e92ac0760762b19252671d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PushoutI/Variant3282bdfeb5e320e0b8c5851ad8b2f244ded9294a3e92ac0760762b19252671d0.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `993453553d0f9e5e7faf38ad15f434a476bd2883` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
