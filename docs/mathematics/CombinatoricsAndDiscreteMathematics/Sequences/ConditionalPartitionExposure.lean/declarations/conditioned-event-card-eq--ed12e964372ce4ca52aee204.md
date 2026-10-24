# conditioned_event_card_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:857d0ee4-9733-144e-7b64-706e2b6ceaba",
  "kind": "theorem",
  "lexical_name": "conditioned_event_card_eq",
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
  "slug": "conditioned-event-card-eq--ed12e964372ce4ca52aee204",
  "source": {
    "blob": "24401f5ffc50d7effa3969bf56c7fa08fedf77dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 162,
    "path": "GRWTSK/Combinatorics/Sequences/ConditionalPartitionExposure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed12e964372ce4ca52aee204cbed4ed2bc514c8c80261950d787a60fbd15fa23",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:857d0ee4-9733-144e-7b64-706e2b6ceaba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conditioned_event_card_eq (sizes : Fin m → ℕ) (a : A) (i : Fin m)
    (R : Finset A) (hR : R ∈ remainderSpace sizes a i) (E : Finset A → Prop) :
    Fintype.card {P : ConditionedPartition sizes a i // E (remainder P)} =
      ((remainderSpace sizes a i).filter E).card * Fintype.card (RemainderFiber sizes a i R) := by
  rw [Fintype.card_subtype]
  have h := Finset.card_eq_sum_card_fiberwise
    (s := (Finset.univ : Finset (ConditionedPartition sizes a i)).filter
      (fun P => E (remainder P)))
    (t := (remainderSpace sizes a i).filter E) (f := remainder)
    (fun P hP => Finset.mem_filter.mpr ⟨remainder_mem_space P, (Finset.mem_filter.mp hP).2⟩)
  rw [h]
  calc
    _ = ∑ _T ∈ (remainderSpace sizes a i).filter E,
        Fintype.card (RemainderFiber sizes a i R) := by
      apply Finset.sum_congr rfl
      intro T hT
      have hET := (Finset.mem_filter.mp hT).2
      have hTs := Finset.mem_powersetCard.mp (Finset.mem_filter.mp hT).1
      have hRs := Finset.mem_powersetCard.mp hR
      have hsets : ((Finset.univ : Finset (ConditionedPartition sizes a i)).filter
          (fun P => E (remainder P))).filter (fun P => remainder P = T) =
          Finset.univ.filter (fun P => remainder P = T) := by
        ext P
        simp only [Finset.mem_filter, Finset.mem_univ, true_and]
        exact ⟨And.right, fun hP => ⟨hP ▸ hET, hP⟩⟩
      rw [hsets, ← Fintype.card_subtype]
      exact remainderFiber_card_eq sizes a i T R
        (fun ha => Finset.notMem_erase a Finset.univ (hTs.1 ha))
        (fun ha => Finset.notMem_erase a Finset.univ (hRs.1 ha)) (hTs.2.trans hRs.2.symm)
    _ = _ := by simp

/-- Conditional uniform counting probability; the checker is a total finite
count even when numerical hypotheses have not yet proved nonemptiness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/ConditionalPartitionExposure.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24401f5ffc50d7effa3969bf56c7fa08fedf77dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
