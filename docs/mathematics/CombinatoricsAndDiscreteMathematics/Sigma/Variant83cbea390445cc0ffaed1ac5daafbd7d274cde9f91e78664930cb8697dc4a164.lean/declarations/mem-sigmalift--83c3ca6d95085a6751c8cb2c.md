# mem_sigmaLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36ad42b9-1d95-061f-2988-a882c1a0f128",
  "kind": "theorem",
  "lexical_name": "mem_sigmaLift",
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
  "slug": "mem-sigmalift--83c3ca6d95085a6751c8cb2c",
  "source": {
    "blob": "34e5c042e35d910b0b525b4b5fdedd8f693f1565",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variant83cbea390445cc0ffaed1ac5daafbd7d274cde9f91e78664930cb8697dc4a164.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83c3ca6d95085a6751c8cb2c8f7155513d48ee7cdf76ded1dce4bf2320ab0c10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sigma/Variant83cbea390445cc0ffaed1ac5daafbd7d274cde9f91e78664930cb8697dc4a164.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ad42b9-1d95-061f-2988-a882c1a0f128`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sigmaLift (f : ∀ ⦃i⦄, α i → β i → Finset (γ i)) (a : Sigma α) (b : Sigma β)
    (x : Sigma γ) :
    x ∈ sigmaLift f a b ↔ ∃ (ha : a.1 = x.1) (hb : b.1 = x.1), x.2 ∈ f (ha ▸ a.2) (hb ▸ b.2) := by
  obtain ⟨⟨i, a⟩, j, b⟩ := a, b
  obtain rfl | h := Decidable.eq_or_ne i j
  · constructor
    · simp_rw [sigmaLift]
      simp only [dite_eq_ite, ite_true, mem_map, Embedding.sigmaMk_apply, forall_exists_index,
        and_imp]
      rintro x hx rfl
      exact ⟨rfl, rfl, hx⟩
    · rintro ⟨⟨⟩, ⟨⟩, hx⟩
      rw [sigmaLift, dite_eq_left rfl, mem_map]
      exact ⟨_, hx, by simp⟩
  · rw [sigmaLift, dite_eq_right h]
    refine iff_of_false (notMem_empty _) ?_
    rintro ⟨⟨⟩, ⟨⟩, _⟩
    exact h rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sigma/Variant83cbea390445cc0ffaed1ac5daafbd7d274cde9f91e78664930cb8697dc4a164.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variant83cbea390445cc0ffaed1ac5daafbd7d274cde9f91e78664930cb8697dc4a164.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e5c042e35d910b0b525b4b5fdedd8f693f1565` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
