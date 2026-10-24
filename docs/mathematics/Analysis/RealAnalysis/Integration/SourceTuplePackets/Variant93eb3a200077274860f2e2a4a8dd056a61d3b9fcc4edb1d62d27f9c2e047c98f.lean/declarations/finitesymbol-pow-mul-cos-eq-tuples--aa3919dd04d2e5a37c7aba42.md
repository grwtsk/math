# finiteSymbol_pow_mul_cos_eq_tuples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:843c1842-ea0c-72ff-4460-b740609fcc8e",
  "kind": "theorem",
  "lexical_name": "finiteSymbol_pow_mul_cos_eq_tuples",
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
  "slug": "finitesymbol-pow-mul-cos-eq-tuples--aa3919dd04d2e5a37c7aba42",
  "source": {
    "blob": "b040287622758542fb1bdb694b170064e6982976",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa3919dd04d2e5a37c7aba42d7872898ed5a0bdf4b559729d6b5b7df81c3163d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:843c1842-ea0c-72ff-4460-b740609fcc8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteSymbol_pow_mul_cos_eq_tuples {ι : Type u} [Fintype ι]
    (c ell : ι → ℝ) (j : ℕ) (omega offset : ℝ) :
    finiteSymbol c ell omega ^ j * Real.cos (omega * offset) =
      tupleObservation c ell j (fun s => Real.cos (omega * s)) offset := by
  classical
  induction j generalizing offset with
  | zero => simp [tupleObservation_zero]
  | succ j ih =>
    rw [tupleObservation_succ]
    simp_rw [← ih]
    rw [pow_succ]
    unfold finiteSymbol
    simp only [Finset.mul_sum, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro i _
    have h := cosine_two_signs omega offset (ell i)
    calc
      _ = (∑ k, c k * Real.cos (omega * ell k)) ^ j * c i *
          (Real.cos (omega * offset) * Real.cos (omega * ell i)) := by ring
      _ = _ := by rw [← h]; ring

/-- Degree zero and every positive degree use the same formula consistently. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b040287622758542fb1bdb694b170064e6982976` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
