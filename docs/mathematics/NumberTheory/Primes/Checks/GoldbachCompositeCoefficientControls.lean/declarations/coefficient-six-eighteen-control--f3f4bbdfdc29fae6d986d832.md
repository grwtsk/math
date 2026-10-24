# coefficient_six_eighteen_control

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50e72254-b803-d82b-0cf4-f18c21088294",
  "kind": "theorem",
  "lexical_name": "coefficient_six_eighteen_control",
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
  "slug": "coefficient-six-eighteen-control--f3f4bbdfdc29fae6d986d832",
  "source": {
    "blob": "0e0b36b8203dea86f5185b5e7f902722d91e0ce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3f4bbdfdc29fae6d986d83214613c788d3521730662b3c35efd946075a70f2a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50e72254-b803-d82b-0cf4-f18c21088294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_six_eighteen_control :
    goldbachProgressionDenominatorCoefficient 6 18 =
      (1 / 2 : ℂ) := by
  calc
    goldbachProgressionDenominatorCoefficient 6 18 =
        goldbachProgressionDenominatorCoefficient 2 18 *
          goldbachProgressionDenominatorCoefficient 3 18 :=
      goldbachProgressionDenominatorCoefficient_mul_of_coprime
        (q := 2) (r := 3) (by norm_num) (by norm_num) (by norm_num)
    _ = _ := by
      rw [goldbachProgressionDenominatorCoefficient_prime_formula Nat.prime_two,
        goldbachProgressionDenominatorCoefficient_prime_formula Nat.prime_three]
      norm_num

/-- At prime cutoff three the primorial is six. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0b36b8203dea86f5185b5e7f902722d91e0ce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
