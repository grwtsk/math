# conditioned_card_eq_fiber_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09258be7-f454-6787-bd14-f81fcd2fc4e5",
  "kind": "theorem",
  "lexical_name": "conditioned_card_eq_fiber_mul",
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
  "slug": "conditioned-card-eq-fiber-mul--4ece53b7f098e3b3ed3e2ed3",
  "source": {
    "blob": "24401f5ffc50d7effa3969bf56c7fa08fedf77dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 139,
    "path": "GRWTSK/Combinatorics/Sequences/ConditionalPartitionExposure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ece53b7f098e3b3ed3e2ed3988e650fcda678088cffd1c9f4b313b2f7b7275c",
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

Occurrence: `result:09258be7-f454-6787-bd14-f81fcd2fc4e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conditioned_card_eq_fiber_mul (sizes : Fin m → ℕ) (a : A) (i : Fin m)
    (R : Finset A) (hR : R ∈ remainderSpace sizes a i) :
    Fintype.card (ConditionedPartition sizes a i) =
      (remainderSpace sizes a i).card * Fintype.card (RemainderFiber sizes a i R) := by
  have h := Finset.card_eq_sum_card_fiberwise
    (s := (Finset.univ : Finset (ConditionedPartition sizes a i)))
    (t := remainderSpace sizes a i) (f := remainder)
    (fun P _ => remainder_mem_space P)
  rw [Finset.card_univ] at h
  rw [h]
  calc
    _ = ∑ _T ∈ remainderSpace sizes a i, Fintype.card (RemainderFiber sizes a i R) := by
      apply Finset.sum_congr rfl
      intro T hT
      rw [← Fintype.card_subtype]
      have hRs := Finset.mem_powersetCard.mp hR
      have hTs := Finset.mem_powersetCard.mp hT
      have haR : a ∉ R := fun ha => Finset.notMem_erase a Finset.univ (hRs.1 ha)
      have haT : a ∉ T := fun ha => Finset.notMem_erase a Finset.univ (hTs.1 ha)
      exact remainderFiber_card_eq sizes a i T R haT haR (hTs.2.trans hRs.2.symm)
    _ = _ := by simp

/-- Exact event cardinality relative to any retained reference remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/ConditionalPartitionExposure.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24401f5ffc50d7effa3969bf56c7fa08fedf77dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
