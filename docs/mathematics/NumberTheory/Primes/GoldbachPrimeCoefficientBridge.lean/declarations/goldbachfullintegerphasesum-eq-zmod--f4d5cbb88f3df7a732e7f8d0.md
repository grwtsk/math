# goldbachFullIntegerPhaseSum_eq_zmod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bcb3547-7b86-a23e-100d-bd5642b12c96",
  "kind": "theorem",
  "lexical_name": "goldbachFullIntegerPhaseSum_eq_zmod",
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
  "slug": "goldbachfullintegerphasesum-eq-zmod--f4d5cbb88f3df7a732e7f8d0",
  "source": {
    "blob": "fb0de743dd7ece259f138dac992ed6e13588d308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 83,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4d5cbb88f3df7a732e7f8d03192cc24bb60d729f3adf125b36e05285d593b16",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bcb3547-7b86-a23e-100d-bd5642b12c96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachFullIntegerPhaseSum_eq_zmod
    (q : ℕ) [NeZero q] (m : ℤ) :
    goldbachFullIntegerPhaseSum q m =
      ∑ x : ZMod q,
        ZMod.stdAddChar (x * (m : ZMod q)) := by
  unfold goldbachFullIntegerPhaseSum
  calc
    (∑ a ∈ Finset.range q,
        unitCharacter m (goldbachRationalArcCenter a q)) =
      ∑ a : Fin q,
        unitCharacter m
          (goldbachRationalArcCenter a.1 q) := by
            simpa using
              (Fin.sum_univ_eq_sum_range
                (fun a : ℕ =>
                  unitCharacter m
                    (goldbachRationalArcCenter a q)) q).symm
    _ =
      ∑ x : ZMod q,
        ZMod.stdAddChar (x * (m : ZMod q)) := by
      rw [← Equiv.sum_comp (ZMod.finEquiv q).toEquiv]

      apply Fintype.sum_congr
      intro a
      rw [unitCharacter_integer_rational_eq_stdAddChar]
      congr 2
      cases q with
      | zero => exact ((NeZero.ne 0) rfl).elim
      | succ n =>
        apply Fin.ext
        exact Nat.mod_eq_of_lt a.isLt

/-- Exact finite orthogonality for the complete denominator character sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0de743dd7ece259f138dac992ed6e13588d308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
