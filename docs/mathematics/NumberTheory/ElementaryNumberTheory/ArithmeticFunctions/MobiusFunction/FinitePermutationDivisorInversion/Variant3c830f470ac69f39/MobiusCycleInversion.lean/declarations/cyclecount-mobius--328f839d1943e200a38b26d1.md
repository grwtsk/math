# cycleCount_mobius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac728f63-b8e0-e078-8663-a7379a697e6f",
  "kind": "theorem",
  "lexical_name": "cycleCount_mobius",
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
  "slug": "cyclecount-mobius--328f839d1943e200a38b26d1",
  "source": {
    "blob": "664a8ce8062cd97053b83b615089837b4a9d20c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 58,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusFunction/FinitePermutationDivisorInversion/Variant3c830f470ac69f39/MobiusCycleInversion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:328f839d1943e200a38b26d1732f1e887b30ca61b80250487730e44c9f6bd894",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusFunction/FinitePermutationDivisorInversion/Variant3c830f470ac69f39/MobiusCycleInversion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac728f63-b8e0-e078-8663-a7379a697e6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleCount_mobius {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    ((r * cycleCount H r : Nat) : ℤ) =
      ∑ d ∈ r.divisors,
        (ArithmeticFunction.moebius (r / d) : ℤ) *
          (fixedPointCount H d : ℤ) := by
  let f : Nat → ℤ := fun d => ((d * cycleCount H d : Nat) : ℤ)
  let g : Nat → ℤ := fun d => (fixedPointCount H d : ℤ)
  have hsum : ∀ k > 0, ∑ d ∈ k.divisors, f d = g k := by
    intro k hk
    have h := fixedPointCount_eq_sum_mul_cycleCount H hk
    have hcast := congrArg (fun z : Nat => (z : ℤ)) h
    simpa [f, g] using hcast.symm
  have hmob :=
    (ArithmeticFunction.sum_eq_iff_sum_mul_moebius_eq.mp hsum) r hr
  simp only [Int.cast_id] at hmob
  rw [Nat.sum_divisorsAntidiagonal'
    (f := fun a b => (ArithmeticFunction.moebius a : ℤ) * g b)] at hmob
  exact hmob.symm

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusFunction/FinitePermutationDivisorInversion/Variant3c830f470ac69f39/MobiusCycleInversion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusFunction/FinitePermutationDivisorInversion/Variant3c830f470ac69f39/MobiusCycleInversion.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `664a8ce8062cd97053b83b615089837b4a9d20c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
