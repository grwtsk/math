# prod_range_diag_flip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73d92341-029a-7611-e5f3-384b437a1819",
  "kind": "lemma",
  "lexical_name": "prod_range_diag_flip",
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
  "slug": "prod-range-diag-flip--d2b6d9398bc8905c16c4b259",
  "source": {
    "blob": "a0e6cd06348319ed0dbe41066e8a98b49bd9915e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 195,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant2edfe50bd72101acbf47aaefc1bf9883a698b404274e6e235c00b4556bdd7ad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2b6d9398bc8905c16c4b2594feef3ef2e5526a72ae174c379917b0b6260149f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Intervals/Variant2edfe50bd72101acbf47aaefc1bf9883a698b404274e6e235c00b4556bdd7ad3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73d92341-029a-7611-e5f3-384b437a1819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_range_diag_flip (n : ℕ) (f : ℕ → ℕ → M) :
    (∏ m ∈ range n, ∏ k ∈ range (m + 1), f k (m - k)) =
      ∏ m ∈ range n, ∏ k ∈ range (n - m), f m k := by
  rw [prod_sigma', prod_sigma']
  refine prod_nbij' (fun a ↦ ⟨a.2, a.1 - a.2⟩) (fun a ↦ ⟨a.1 + a.2, a.1⟩) ?_ ?_ ?_ ?_ ?_ <;>
    simp +contextual only [mem_sigma, mem_range, lt_tsub_iff_left,
      Nat.lt_succ_iff, le_add_iff_nonneg_right, Nat.zero_le, and_true, and_imp, implies_true,
      Sigma.forall, add_tsub_cancel_of_le, add_tsub_cancel_left]
  exact fun a b han hba ↦ lt_of_le_of_lt hba han

end Generic

section Nat

variable {M : Type*}
variable (f : ℕ → M) {m n : ℕ}

section Group

variable [CommGroup M]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Intervals/Variant2edfe50bd72101acbf47aaefc1bf9883a698b404274e6e235c00b4556bdd7ad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant2edfe50bd72101acbf47aaefc1bf9883a698b404274e6e235c00b4556bdd7ad3.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0e6cd06348319ed0dbe41066e8a98b49bd9915e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
