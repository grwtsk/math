# nat_is_prime_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12741c05-3cb7-2b6e-4373-e51c995694f1",
  "kind": "theorem",
  "lexical_name": "nat_is_prime_iff",
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
  "slug": "nat-is-prime-iff--4e1c3a4bd10bc3f7a2dfd50f",
  "source": {
    "blob": "854a8bc57accea64b200c1567ae5a38e0a4837db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e1c3a4bd10bc3f7a2dfd50f87828a4769c7b9e4a86b3d730aaa81e551840b0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12741c05-3cb7-2b6e-4373-e51c995694f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_is_prime_iff : Prime (n : Cardinal) ↔ n.Prime := by
  simp only [Prime, Nat.prime_iff]
  refine' and_congr (by simp) (and_congr _ ⟨fun h b c hbc => _, fun h b c hbc => _⟩)
  · simp only [isUnit_iff, Nat.isUnit_iff]
    exact_mod_cast Iff.rfl
  · exact_mod_cast h b c (by exact_mod_cast hbc)
  cases' lt_or_le (b * c) ℵ₀ with h' h'
  · rcases mul_lt_aleph0_iff.mp h' with (rfl | rfl | ⟨hb, hc⟩)
    · simp
    · simp
    lift b to ℕ using hb
    lift c to ℕ using hc
    exact_mod_cast h b c (by exact_mod_cast hbc)
  rcases aleph0_le_mul_iff.mp h' with ⟨hb, hc, hℵ₀⟩
  have hn : (n : Cardinal) ≠ 0 := by
    intro h
    rw [h, zero_dvd_iff, mul_eq_zero] at hbc
    cases hbc <;> contradiction
  wlog hℵ₀b : ℵ₀ ≤ b
  refine' (this h c b _ _ hc hb hℵ₀.symm hn (hℵ₀.resolve_left hℵ₀b)).symm <;> try assumption
  rwa [mul_comm] at hbc
  rwa [mul_comm] at h'
  exact Or.inl (dvd_of_le_of_aleph0_le hn ((nat_lt_aleph0 n).le.trans hℵ₀b) hℵ₀b)
#align cardinal.nat_is_prime_iff Cardinal.nat_is_prime_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `854a8bc57accea64b200c1567ae5a38e0a4837db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
