# tupleObservation_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba4a3348-d85b-d8c6-f1d7-61f0db3d6b91",
  "kind": "theorem",
  "lexical_name": "tupleObservation_succ",
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
  "slug": "tupleobservation-succ--14156a3ede5be5336ae85f07",
  "source": {
    "blob": "047a3eed860fb4cb08795b5b83cc02dd83bf16e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14156a3ede5be5336ae85f0710919345d06844203972e1466867c2c903cf64a4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba4a3348-d85b-d8c6-f1d7-61f0db3d6b91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tupleObservation_succ {ι : Type u} [Fintype ι]
    (c ell : ι → ℝ) (j : ℕ) (response : ℝ → ℝ) (offset : ℝ) :
    tupleObservation c ell (j + 1) response offset =
      (1 / 2 : ℝ) * ∑ i, c i *
        (tupleObservation c ell j response (offset + ell i) +
          tupleObservation c ell j response (offset - ell i)) := by
  classical
  change (1 / 2 : ℝ) ^ (j + 1) *
    (∑ p : ι × Bool × SignTuple ι j, c p.1 * tupleWeight c j p.2.2 *
      response (offset + (signedShift (ell p.1) p.2.1 + tupleShift ell j p.2.2))) = _
  simp only [tupleObservation, Fintype.sum_prod_type, Fintype.sum_bool,
    signedShift, Bool.false_eq_true, if_true, if_false,
    pow_succ, Finset.mul_sum, Finset.sum_add_distrib]
  rw [← Finset.sum_add_distrib, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  simp only [mul_add, Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p _
  rw [show offset + (ell i + tupleShift ell j p) =
    offset + ell i + tupleShift ell j p by ring,
    show offset + (-ell i + tupleShift ell j p) =
      offset - ell i + tupleShift ell j p by ring]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047a3eed860fb4cb08795b5b83cc02dd83bf16e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
