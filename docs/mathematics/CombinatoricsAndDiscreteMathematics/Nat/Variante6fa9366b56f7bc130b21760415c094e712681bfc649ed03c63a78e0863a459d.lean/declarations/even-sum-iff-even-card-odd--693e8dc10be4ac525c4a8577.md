# even_sum_iff_even_card_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:234902a9-ca02-414d-1b00-95ac8b7e4add",
  "kind": "lemma",
  "lexical_name": "even_sum_iff_even_card_odd",
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
  "slug": "even-sum-iff-even-card-odd--693e8dc10be4ac525c4a8577",
  "source": {
    "blob": "5dce07d74f4a103cfe1e43881daef0662276159b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:693e8dc10be4ac525c4a8577e5eca914831f8a610c0b4d5166d0d4731b078ece",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:234902a9-ca02-414d-1b00-95ac8b7e4add`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma even_sum_iff_even_card_odd {s : Finset ι} (f : ι → ℕ) :
    Even (∑ i ∈ s, f i) ↔ Even #{x ∈ s | Odd (f x)} := by
  rw [← Finset.sum_filter_add_sum_filter_not _ (fun x ↦ Even (f x)), Nat.even_add]
  simp only [Finset.mem_filter, and_imp, imp_self, implies_true, Finset.even_sum, true_iff]
  rw [Nat.even_iff, Finset.sum_nat_mod, Finset.sum_filter]
  simp +contextual only [Nat.not_even_iff_odd, Nat.odd_iff.mp]
  simp_rw [← Finset.sum_filter, ← Nat.even_iff, Finset.card_eq_sum_ones]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dce07d74f4a103cfe1e43881daef0662276159b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
