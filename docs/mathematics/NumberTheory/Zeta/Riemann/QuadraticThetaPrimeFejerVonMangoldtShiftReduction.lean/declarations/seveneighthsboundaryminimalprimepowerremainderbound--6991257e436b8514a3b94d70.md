# SevenEighthsBoundaryMinimalPrimePowerRemainderBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89bf885f9a25849364cb838a18a9245f99a6ef6ff49c7b0ea5112a710db63787",
  "kind": "def",
  "lexical_name": "SevenEighthsBoundaryMinimalPrimePowerRemainderBound",
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
  "slug": "seveneighthsboundaryminimalprimepowerremainderbound--6991257e436b8514a3b94d70",
  "source": {
    "blob": "c0157897853716e8630663f1f070cd3050ee87d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 934,
    "line": 919,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6991257e436b8514a3b94d7073ebe51a1f2544f21fc9881d6380aa94ea6c942d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89bf885f9a25849364cb838a18a9245f99a6ef6ff49c7b0ea5112a710db63787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 919–934.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SevenEighthsBoundaryMinimalPrimePowerRemainderBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ j m : ℕ,
      2 * dyadicScale j ≤ m →
      m ≤ 4 * dyadicScale j →
      |nonAliasingFejerPositivePrimePowerRemainder
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m|
        ≤
      C *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^4

/-- The higher-prime-power remainder is unconditionally within the exact
seven-eighths target scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean#L919).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0157897853716e8630663f1f070cd3050ee87d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
