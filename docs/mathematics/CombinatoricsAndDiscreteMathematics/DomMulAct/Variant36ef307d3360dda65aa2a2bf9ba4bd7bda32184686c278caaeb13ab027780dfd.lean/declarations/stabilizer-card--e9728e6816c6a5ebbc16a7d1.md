# stabilizer_card'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fe113ed-1e5f-6d6d-5ad8-4e8af35510c9",
  "kind": "theorem",
  "lexical_name": "stabilizer_card'",
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
  "slug": "stabilizer-card--e9728e6816c6a5ebbc16a7d1",
  "source": {
    "blob": "0504b1aad26c0c9e8b58288cb39f2588428eecf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant36ef307d3360dda65aa2a2bf9ba4bd7bda32184686c278caaeb13ab027780dfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9728e6816c6a5ebbc16a7d109496d6d578589ffaf129c11660709cc3ba6978e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant36ef307d3360dda65aa2a2bf9ba4bd7bda32184686c278caaeb13ab027780dfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fe113ed-1e5f-6d6d-5ad8-4e8af35510c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stabilizer_card':
    Fintype.card {g : Perm α // f ∘ g = f} =
      ∏ i ∈ Finset.univ.image f, (Fintype.card ({a // f a = i}))! := by
  set φ : α → Finset.univ.image f :=
    Set.codRestrict f (Finset.univ.image f) (fun a => by simp)
  suffices ∀ g : Perm α, f ∘ g = f ↔ φ ∘ g = φ by
    simp only [this, stabilizer_card]
    apply Finset.prod_bij (fun g _ => g.val)
    · exact fun g _ => Finset.coe_mem g
    · exact fun g _ g' _ =>  SetCoe.ext
    · exact fun g hg => by
        rw [Finset.mem_image] at hg
        obtain ⟨a, _, rfl⟩ := hg
        use ⟨f a, by simp only [Finset.mem_image, Finset.mem_univ, true_and, exists_apply_eq_apply]⟩
        simp only [Finset.univ_eq_attach, Finset.mem_attach, exists_const]
    · intro i _
      apply congr_arg
      apply Fintype.card_congr
      apply Equiv.subtypeEquiv (Equiv.refl α)
      intro a
      rw [refl_apply, ← Subtype.coe_inj]
      simp only [φ, Set.val_codRestrict_apply]
  · intro g
    simp only [funext_iff]
    apply forall_congr'
    intro a
    simp only [Function.comp_apply, φ, ← Subtype.coe_inj, Set.val_codRestrict_apply]

end Fintype

end DomMulAct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant36ef307d3360dda65aa2a2bf9ba4bd7bda32184686c278caaeb13ab027780dfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant36ef307d3360dda65aa2a2bf9ba4bd7bda32184686c278caaeb13ab027780dfd.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0504b1aad26c0c9e8b58288cb39f2588428eecf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
