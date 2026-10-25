# rfindX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:523d9fb1ea1f3e229d6709346fd991e46b1009a3933ef7d0a659cb4e7be014e3",
  "kind": "def",
  "lexical_name": "rfindX",
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
  "slug": "rfindx--f9824f4f407ccb9d8156aeb4",
  "source": {
    "blob": "4c4c27318b14650076b1ae7bf38970b895d8d90b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant1fcb1d8990517dcf0c9f645d3a22b88e23a2d9aa25cb220c92a0ba4e082c6b41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9824f4f407ccb9d8156aeb40443d1fe4b98fb718865f677d1e92f5edb54928c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant1fcb1d8990517dcf0c9f645d3a22b88e23a2d9aa25cb220c92a0ba4e082c6b41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:523d9fb1ea1f3e229d6709346fd991e46b1009a3933ef7d0a659cb4e7be014e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rfindX : { n // true ∈ p n ∧ ∀ m < n, false ∈ p m } :=
  suffices ∀ k, (∀ n < k, false ∈ p n) → { n // true ∈ p n ∧ ∀ m < n, false ∈ p m } from
    this 0 fun _ => (Nat.not_lt_zero _).elim
  @WellFounded.fix _ _ (lbp p) (wf_lbp p H)
    (by
      intro m IH al
      have pm : (p m).Dom := by
        rcases H with ⟨n, h₁, h₂⟩
        rcases lt_trichotomy m n with (h₃ | h₃ | h₃)
        · exact h₂ _ h₃
        · rw [h₃]
          exact h₁.fst
        · injection mem_unique h₁ (al _ h₃)
      cases e : (p m).get pm
      · suffices ∀ᵉ k ≤ m, false ∈ p k from IH _ ⟨rfl, this⟩ fun n h => this _ (le_of_lt_succ h)
        intro n h
        rcases h.lt_or_eq_dec with h | h
        · exact al _ h
        · rw [h]
          exact ⟨_, e⟩
      · exact ⟨m, ⟨_, e⟩, al⟩)

end Rfind

/-- Find the smallest `n` satisfying `p n`, where all `p k` for `k < n` are defined as false.
Returns a `Part`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant1fcb1d8990517dcf0c9f645d3a22b88e23a2d9aa25cb220c92a0ba4e082c6b41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant1fcb1d8990517dcf0c9f645d3a22b88e23a2d9aa25cb220c92a0ba4e082c6b41.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c4c27318b14650076b1ae7bf38970b895d8d90b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
