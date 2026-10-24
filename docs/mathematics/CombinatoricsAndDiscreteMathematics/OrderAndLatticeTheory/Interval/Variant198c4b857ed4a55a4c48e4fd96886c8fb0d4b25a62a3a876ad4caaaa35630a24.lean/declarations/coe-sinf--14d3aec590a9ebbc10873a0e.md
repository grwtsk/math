# coe_sInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f317a0a-f94e-ad39-024b-dd7f7491bef9",
  "kind": "theorem",
  "lexical_name": "coe_sInf",
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
  "slug": "coe-sinf--14d3aec590a9ebbc10873a0e",
  "source": {
    "blob": "82be81f249eda2fe22ef625c4094d8b9217e52d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 761,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant198c4b857ed4a55a4c48e4fd96886c8fb0d4b25a62a3a876ad4caaaa35630a24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14d3aec590a9ebbc10873a0e1c30223e9372592b887ca0e9f2f8652f9be09912",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant198c4b857ed4a55a4c48e4fd96886c8fb0d4b25a62a3a876ad4caaaa35630a24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f317a0a-f94e-ad39-024b-dd7f7491bef9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 761–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_sInf [@DecidableRel α (· ≤ ·)] (S : Set (Interval α)) :
    ↑(sInf S) = ⋂ s ∈ S, (s : Set α) := by
  classical -- Porting note: added
  -- Porting note: this `change` was
  -- change ↑ (dite _ _ _) = _
  change ((dite _ _ _ : Interval α) : Set α) = ⋂ (s : Interval α) (_ : s ∈ S), (s : Set α)
  split_ifs with h
  · ext
    simp [WithBot.some_eq_coe, Interval.forall, h.1, ← forall_and, ← NonemptyInterval.mem_def]
  simp_rw [not_and_or, Classical.not_not] at h
  rcases h with h | h
  · refine' (eq_empty_of_subset_empty _).symm
    exact iInter₂_subset_of_subset _ h Subset.rfl
  · refine' (not_nonempty_iff_eq_empty.1 _).symm
    rintro ⟨x, hx⟩
    rw [mem_iInter₂] at hx
    exact h fun s ha t hb => (hx _ ha).1.trans (hx _ hb).2
#align interval.coe_Inf Interval.coe_sInf

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant198c4b857ed4a55a4c48e4fd96886c8fb0d4b25a62a3a876ad4caaaa35630a24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant198c4b857ed4a55a4c48e4fd96886c8fb0d4b25a62a3a876ad4caaaa35630a24.lean#L761).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82be81f249eda2fe22ef625c4094d8b9217e52d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
