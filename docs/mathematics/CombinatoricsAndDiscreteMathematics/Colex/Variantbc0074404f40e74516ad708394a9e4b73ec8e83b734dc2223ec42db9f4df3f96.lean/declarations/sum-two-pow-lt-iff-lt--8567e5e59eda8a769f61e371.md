# sum_two_pow_lt_iff_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df8729ce-0f79-f863-3e73-2aa5287d5fa0",
  "kind": "theorem",
  "lexical_name": "sum_two_pow_lt_iff_lt",
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
  "slug": "sum-two-pow-lt-iff-lt--8567e5e59eda8a769f61e371",
  "source": {
    "blob": "62879d18af2672e8cd1bf5ec9511c7a349235202",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 399,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8567e5e59eda8a769f61e371ae5a06620bef4a520c187fb85d347e7a7387dad0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df8729ce-0f79-f863-3e73-2aa5287d5fa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_two_pow_lt_iff_lt (A B : Finset ℕ) :
    ((∑ i in A, 2 ^ i) < ∑ i in B, 2 ^ i) ↔ A.toColex < B.toColex := by
  have z : ∀ A B : Finset ℕ, A.toColex < B.toColex → ∑ i in A, 2 ^ i < ∑ i in B, 2 ^ i := by
    intro A B
    rw [← sdiff_lt_sdiff_iff_lt, Colex.lt_def]
    rintro ⟨k, z, kA, kB⟩
    rw [← sdiff_union_inter A B]
    conv_rhs => rw [← sdiff_union_inter B A]
    rw [sum_union (disjoint_sdiff_inter _ _), sum_union (disjoint_sdiff_inter _ _), inter_comm,
      add_lt_add_iff_right]
    apply lt_of_lt_of_le (@Nat.sum_two_pow_lt k (A \ B) _)
    · apply single_le_sum (fun _ _ => Nat.zero_le _) kB
    intro x hx
    apply lt_of_le_of_ne (le_of_not_lt _)
    · apply ne_of_mem_of_not_mem hx kA
    -- Porting note: `intro` required because `apply` behaves differently
    intro kx
    have := (z kx).1 hx
    rw [mem_sdiff] at this hx
    exact hx.2 this.1
  refine'
    ⟨fun h => (lt_trichotomy A B).resolve_right fun h₁ => h₁.elim _ (not_lt_of_gt h ∘ z _ _), z A B⟩
  rintro rfl
  apply irrefl _ h
#align colex.sum_two_pow_lt_iff_lt Colex.sum_two_pow_lt_iff_lt

/-- For subsets of ℕ, we can show that colex is equivalent to binary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62879d18af2672e8cd1bf5ec9511c7a349235202` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
