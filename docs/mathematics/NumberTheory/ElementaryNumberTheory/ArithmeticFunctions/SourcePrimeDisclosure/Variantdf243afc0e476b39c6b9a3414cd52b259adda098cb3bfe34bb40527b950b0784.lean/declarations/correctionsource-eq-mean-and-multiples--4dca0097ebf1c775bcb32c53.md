# correctionSource_eq_mean_and_multiples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faa7b786-2821-de4e-4d15-2beafc38533d",
  "kind": "theorem",
  "lexical_name": "correctionSource_eq_mean_and_multiples",
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
  "slug": "correctionsource-eq-mean-and-multiples--4dca0097ebf1c775bcb32c53",
  "source": {
    "blob": "191d9f886637eb847e7e25f8ba5f7d1724891606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 218,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dca0097ebf1c775bcb32c53152fe1eb1ed3e3eff22a645b8bb8876c443539b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faa7b786-2821-de4e-4d15-2beafc38533d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctionSource_eq_mean_and_multiples (q : ComplexL2)
    (I E : Finset ℕ) (p : ℕ) :
    correctionSource q I E p =
      ((-(1 / (p : ℝ)) * disclosedMean E : ℝ) : ℂ) • plainSource q I +
        primeMultipleSource q I E p := by
  classical
  unfold correctionSource plainSource primeMultipleSource finiteProfile freshPrimeCorrection
  rw [Finset.smul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  dsimp only
  rw [smul_smul, ← add_smul]
  congr 1
  push_cast
  ring

/-- This is the literal physical same-index reflection diagonal, with every n retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variantdf243afc0e476b39c6b9a3414cd52b259adda098cb3bfe34bb40527b950b0784.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `191d9f886637eb847e7e25f8ba5f7d1724891606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
