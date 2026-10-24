# irreducible_iff_prime_of_existsUnique_irreducible_factors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff43708e5be15f293a85076e7e453edd2cb5c4c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40b9690c661feaf2a41bba54ed40ea2c1df34eeba7bd203af438a76aa67a1642.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c2da916-a7ca-7e01-bfa3-91af13f8959d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5ef1a08-8acd-7598-fb2c-a8691f9ca9a7",
  "kind": "theorem",
  "lexical_name": "irreducible_iff_prime_of_existsUnique_irreducible_factors",
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
  "slug": "irreducible-iff-prime-of-existsunique-irreducible-factors--f9848f962a680d088e5df60d",
  "source": {
    "blob": "ff43708e5be15f293a85076e7e453edd2cb5c4c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant40b9690c661feaf2a41bba54ed40ea2c1df34eeba7bd203af438a76aa67a1642.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9848f962a680d088e5df60d3f655882023c036c5f6d2593450d41e25c6faedd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant40b9690c661feaf2a41bba54ed40ea2c1df34eeba7bd203af438a76aa67a1642.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5ef1a08-8acd-7598-fb2c-a8691f9ca9a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible_iff_prime_of_existsUnique_irreducible_factors [CancelCommMonoidWithZero α]
    (eif : ∀ a : α, a ≠ 0 → ∃ f : Multiset α, (∀ b ∈ f, Irreducible b) ∧ f.prod ~ᵤ a)
    (uif :
      ∀ f g : Multiset α,
        (∀ x ∈ f, Irreducible x) →
          (∀ x ∈ g, Irreducible x) → f.prod ~ᵤ g.prod → Multiset.Rel Associated f g)
    (p : α) : Irreducible p ↔ Prime p :=
  letI := Classical.decEq α
  ⟨ fun hpi =>
    ⟨hpi.ne_zero, hpi.1, fun a b ⟨x, hx⟩ =>
      if hab0 : a * b = 0 then
        (eq_zero_or_eq_zero_of_mul_eq_zero hab0).elim (fun ha0 => by simp [ha0]) fun hb0 => by
          simp [hb0]
      else by
        have hx0 : x ≠ 0 := fun hx0 => by simp_all
        have ha0 : a ≠ 0 := left_ne_zero_of_mul hab0
        have hb0 : b ≠ 0 := right_ne_zero_of_mul hab0
        obtain ⟨fx, hfx⟩ := eif x hx0
        obtain ⟨fa, hfa⟩ := eif a ha0
        obtain ⟨fb, hfb⟩ := eif b hb0
        have h : Multiset.Rel Associated (p ::ₘ fx) (fa + fb) := by
          apply uif
          · exact fun i hi => (Multiset.mem_cons.1 hi).elim (fun hip => hip.symm ▸ hpi) (hfx.1 _)
          · exact fun i hi => (Multiset.mem_add.1 hi).elim (hfa.1 _) (hfb.1 _)
          calc
            Multiset.prod (p ::ₘ fx) ~ᵤ a * b := by
              rw [hx, Multiset.prod_cons]; exact hfx.2.mul_left _
            _ ~ᵤ fa.prod * fb.prod := hfa.2.symm.mul_mul hfb.2.symm
            _ = _ := by rw [Multiset.prod_add]

        exact
          let ⟨q, hqf, hq⟩ := Multiset.exists_mem_of_rel_of_mem h (Multiset.mem_cons_self p _)
          (Multiset.mem_add.1 hqf).elim
            (fun hqa =>
              Or.inl <| hq.dvd_iff_dvd_left.2 <| hfa.2.dvd_iff_dvd_right.1 (Multiset.dvd_prod hqa))
            fun hqb =>
            Or.inr <| hq.dvd_iff_dvd_left.2 <| hfb.2.dvd_iff_dvd_right.1 (Multiset.dvd_prod hqb)⟩,
    Prime.irreducible⟩

@[deprecated (since := "2024-12-17")]
alias irreducible_iff_prime_of_exists_unique_irreducible_factors :=
  irreducible_iff_prime_of_existsUnique_irreducible_factors

namespace UniqueFactorizationMonoid

variable [CancelCommMonoidWithZero α]
variable [UniqueFactorizationMonoid α]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant40b9690c661feaf2a41bba54ed40ea2c1df34eeba7bd203af438a76aa67a1642.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant40b9690c661feaf2a41bba54ed40ea2c1df34eeba7bd203af438a76aa67a1642.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff43708e5be15f293a85076e7e453edd2cb5c4c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
