# encard_diff_le_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bb80fe6-ce70-29cd-0d05-735438f5ea39",
  "kind": "theorem",
  "lexical_name": "encard_diff_le_aux",
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
  "slug": "encard-diff-le-aux--4d9467f4630efa2f7641f487",
  "source": {
    "blob": "074cdae84f92ec170c9370dfe9c5909eeac02301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 298,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7db668a57f773f6b27d1791ad13e20590aad41036a327959d7ac3b7de9ee63b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d9467f4630efa2f7641f487ec094739363215e9a55f7d4de68b21f9f50f5f7e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7db668a57f773f6b27d1791ad13e20590aad41036a327959d7ac3b7de9ee63b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bb80fe6-ce70-29cd-0d05-735438f5ea39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encard_diff_le_aux {B₁ B₂ : Set α}
    (exch : ExchangeProperty IsBase) (hB₁ : IsBase B₁) (hB₂ : IsBase B₂) :
    (B₁ \ B₂).encard ≤ (B₂ \ B₁).encard := by
  obtain (he | hinf | ⟨e, he, hcard⟩) :=
    (B₂ \ B₁).eq_empty_or_encard_eq_top_or_encard_diff_singleton_lt
  · rw [exch.antichain hB₂ hB₁ (diff_eq_empty.mp he)]
  · exact le_top.trans_eq hinf.symm

  obtain ⟨f, hf, hB'⟩ := exch B₂ B₁ hB₂ hB₁ e he

  have : encard (insert f (B₂ \ {e}) \ B₁) < encard (B₂ \ B₁) := by
    rw [insert_diff_of_mem _ hf.1, diff_diff_comm]; exact hcard

  have hencard := encard_diff_le_aux exch hB₁ hB'
  rw [insert_diff_of_mem _ hf.1, diff_diff_comm, ← union_singleton, ← diff_diff, diff_diff_right,
    inter_singleton_eq_empty.mpr he.2, union_empty] at hencard

  rw [← encard_diff_singleton_add_one he, ← encard_diff_singleton_add_one hf]
  exact add_le_add_right hencard 1
termination_by (B₂ \ B₁).encard

variable {B₁ B₂ : Set α}

/-- For any two sets `B₁`, `B₂` in a family with the exchange property, the differences `B₁ \ B₂`
and `B₂ \ B₁` have the same `ℕ∞`-cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7db668a57f773f6b27d1791ad13e20590aad41036a327959d7ac3b7de9ee63b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7db668a57f773f6b27d1791ad13e20590aad41036a327959d7ac3b7de9ee63b3.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074cdae84f92ec170c9370dfe9c5909eeac02301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
