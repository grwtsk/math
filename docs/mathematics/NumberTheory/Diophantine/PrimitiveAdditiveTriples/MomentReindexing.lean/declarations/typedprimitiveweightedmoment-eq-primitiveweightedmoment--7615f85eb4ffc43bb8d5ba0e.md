# typedPrimitiveWeightedMoment_eq_primitiveWeightedMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5344aa99-03ba-fb8f-8607-83a0bf9b47d7",
  "kind": "theorem",
  "lexical_name": "typedPrimitiveWeightedMoment_eq_primitiveWeightedMoment",
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
  "slug": "typedprimitiveweightedmoment-eq-primitiveweightedmoment--7615f85eb4ffc43bb8d5ba0e",
  "source": {
    "blob": "e5e19efd3ac41e337d851b9690c2255f925dae6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 38,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7615f85eb4ffc43bb8d5ba0eb563929161e608e87e69ef3739ece74f4e915874",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5344aa99-03ba-fb8f-8607-83a0bf9b47d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typedPrimitiveWeightedMoment_eq_primitiveWeightedMoment {R : Type*} [Ring R]
    (N : ℕ) (W : ℕ → ℕ → ℕ → R) :
    typedPrimitiveWeightedMoment N W = primitiveWeightedMoment N W := by
  classical
  unfold typedPrimitiveWeightedMoment primitiveWeightedMoment
  rw [← Finset.sum_filter]
  refine Finset.sum_bij (fun t _ => (t.a, t.b)) ?_ ?_ ?_ ?_
  · intro t ht
    have hc : t.c ≤ N := mem_boundedTriples.mp ht
    have ha : t.a ≤ N := le_trans (Nat.le_of_lt t.a_lt_c) hc
    have hb : t.b ≤ N := le_trans (Nat.le_of_lt t.b_lt_c) hc
    apply Finset.mem_filter.mpr
    exact ⟨mem_additivePairs.mpr ⟨t.a_pos, ha, t.b_pos, hb,
      by simpa only [t.sum_eq] using hc⟩, t.coprime_ab⟩
  · intro s _ t _ h
    exact PrimitiveAdditiveTriple.coordinates_injective h
  · intro p hp
    obtain ⟨hp, hcoprime⟩ := Finset.mem_filter.mp hp
    obtain ⟨ha, _, hb, _, hcut⟩ := mem_additivePairs.mp hp
    let t : PrimitiveAdditiveTriple :=
      ⟨p.1, p.2, p.1 + p.2, ha, hb, rfl, hcoprime⟩
    exact ⟨t, mem_boundedTriples.mpr hcut, rfl⟩
  · intro t _
    simp only [t.sum_eq]

/-- Product weights preserve the same exact typed-triple reindexing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5e19efd3ac41e337d851b9690c2255f925dae6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
