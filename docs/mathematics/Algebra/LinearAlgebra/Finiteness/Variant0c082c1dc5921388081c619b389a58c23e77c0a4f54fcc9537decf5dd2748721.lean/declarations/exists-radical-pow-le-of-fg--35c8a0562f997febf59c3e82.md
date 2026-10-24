# exists_radical_pow_le_of_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eca6203e-ccfa-d4d5-4bd8-21cde4c48c0c",
  "kind": "theorem",
  "lexical_name": "exists_radical_pow_le_of_fg",
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
  "slug": "exists-radical-pow-le-of-fg--35c8a0562f997febf59c3e82",
  "source": {
    "blob": "bb35424c63bf81464502e4a9645bf70ab95dee8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 502,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35c8a0562f997febf59c3e82fff8614ca1c0d39e75940e98482a15381fc63af9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eca6203e-ccfa-d4d5-4bd8-21cde4c48c0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_radical_pow_le_of_fg {R : Type*} [CommSemiring R] (I : Ideal R) (h : I.radical.FG) :
    ∃ n : ℕ, I.radical ^ n ≤ I := by
  have := le_refl I.radical; revert this
  refine' Submodule.fg_induction _ _ (fun J => J ≤ I.radical → ∃ n : ℕ, J ^ n ≤ I) _ _ _ h
  · intro x hx
    obtain ⟨n, hn⟩ := hx (subset_span (Set.mem_singleton x))
    exact ⟨n, by rwa [← Ideal.span, span_singleton_pow, span_le, Set.singleton_subset_iff]⟩
  · intro J K hJ hK hJK
    obtain ⟨n, hn⟩ := hJ fun x hx => hJK <| Ideal.mem_sup_left hx
    obtain ⟨m, hm⟩ := hK fun x hx => hJK <| Ideal.mem_sup_right hx
    use n + m
    rw [← Ideal.add_eq_sup, add_pow, Ideal.sum_eq_sup, Finset.sup_le_iff]
    refine' fun i _ => Ideal.mul_le_right.trans _
    obtain h | h := le_or_lt n i
    · apply Ideal.mul_le_right.trans ((Ideal.pow_le_pow h).trans hn)
    · apply Ideal.mul_le_left.trans
      refine' (Ideal.pow_le_pow _).trans hm
      rw [add_comm, Nat.add_sub_assoc h.le]
      apply Nat.le_add_right
#align ideal.exists_radical_pow_le_of_fg Ideal.exists_radical_pow_le_of_fg

end Ideal

section ModuleAndAlgebra

variable (R A B M N : Type*)

/-- A module over a semiring is `Finite` if it is finitely generated as a module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb35424c63bf81464502e4a9645bf70ab95dee8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
