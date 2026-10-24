# degree_sum_eq_of_linearIndepOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b61b5ed-6e4b-15fb-917b-64b0f94c4d74",
  "kind": "lemma",
  "lexical_name": "degree_sum_eq_of_linearIndepOn",
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
  "slug": "degree-sum-eq-of-linearindepon--9c5e57bfc589a971071404db",
  "source": {
    "blob": "804d8253c397a0e3934a2f809957eb8f6509e41f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 295,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c5e57bfc589a971071404dbd042f9c9cc413245efc1b9c12e70b7e8505c37c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b61b5ed-6e4b-15fb-917b-64b0f94c4d74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma degree_sum_eq_of_linearIndepOn {A : Type*} [CommRing A] [Algebra R A] {f : ι → R[X]}
    {v : ι → A} (h : LinearIndepOn R v s) :
    (∑ i ∈ s, v i • (f i).map (algebraMap R A)).degree = s.sup (fun i ↦ (f i).degree) := by
  apply le_antisymm
  · exact (degree_sum_le s _).trans <| Finset.sup_le fun i hi ↦ (degree_smul_le _ _).trans <|
      degree_map_le.trans <| Finset.le_sup (f := fun i ↦ (f i).degree) hi
  · apply Finset.sup_le
    intro i hi
    by_cases hf : f i = 0
    · simp [hf]
    rw [degree_eq_natDegree hf]
    apply le_degree_of_ne_zero
    rw [finsetSum_coeff]
    conv in (fun _ ↦ _) =>
      ext
      rw [coeff_smul, smul_eq_mul, coeff_map, mul_comm, ← Algebra.smul_def]
    intro H
    exact hf (leadingCoeff_eq_zero.mp (linearIndepOn_finset_iff.mp h _ H i hi))

-- Note: Proof duplicated from the `degree` version, since the statements don't
-- trivially follow from each other.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `804d8253c397a0e3934a2f809957eb8f6509e41f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
