# integral_goldbachDifferenceTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b7eaa1a-1b85-2b8d-d20c-b35cd87957da",
  "kind": "theorem",
  "lexical_name": "integral_goldbachDifferenceTerm",
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
  "slug": "integral-goldbachdifferenceterm--100c0d7e675c229ba59400f9",
  "source": {
    "blob": "63ad20000c9aacc51529181c6be51b56eeac7b17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:100c0d7e675c229ba59400f98a3e46b5710e9d65ce657179a4c92643c2eed5cd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b7eaa1a-1b85-2b8d-d20c-b35cd87957da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_goldbachDifferenceTerm (p q : ℕ) :
    (∫ x : ℝ in 0..1,
      (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
        unitCharacter ((p : ℤ) - (q : ℤ)) x) =
      (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
        (if p = q then 1 else 0) := by
  rw [intervalIntegral.integral_const_mul, integral_unitCharacter]
  have hf : (p : ℤ) - (q : ℤ) = 0 ↔ p = q := by omega
  simp [hf]

/-- Finite Parseval with the source's exact inclusive support and weights.
No prime number theorem or infinite Fourier limit is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63ad20000c9aacc51529181c6be51b56eeac7b17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
