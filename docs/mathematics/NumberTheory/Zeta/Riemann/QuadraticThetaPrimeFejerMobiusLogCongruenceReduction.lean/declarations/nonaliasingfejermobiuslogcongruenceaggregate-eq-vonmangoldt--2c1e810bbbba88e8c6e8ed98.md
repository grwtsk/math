# nonAliasingFejerMobiusLogCongruenceAggregate_eq_vonMangoldt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3600b57-1c13-8f2f-5eb9-0ada1f2ef8cb",
  "kind": "theorem",
  "lexical_name": "nonAliasingFejerMobiusLogCongruenceAggregate_eq_vonMangoldt",
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
  "slug": "nonaliasingfejermobiuslogcongruenceaggregate-eq-vonmangoldt--2c1e810bbbba88e8c6e8ed98",
  "source": {
    "blob": "581428da0f5a73c37fad0f70fe5c3138e7c241b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 366,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c1e810bbbba88e8c6e8ed985e88e043947a02be3508312065c92204d45a2592",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3600b57-1c13-8f2f-5eb9-0ada1f2ef8cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonAliasingFejerMobiusLogCongruenceAggregate_eq_vonMangoldt
    (X N m : ℕ) :
    nonAliasingFejerMobiusLogCongruenceAggregate X N m =
      ∑ h ∈ fejerPositiveLagSet X,
        nonAliasingFejerVonMangoldtShiftCorrelation
          X N m h := by
  unfold nonAliasingFejerMobiusLogCongruenceAggregate
  apply Finset.sum_congr rfl
  intro h hh
  exact
    nonAliasingFejerMobiusLogCongruenceShiftCorrelation_eq_vonMangoldt
      X N m h

/-- Exact remaining arithmetic supplier in centered Möbius-log congruence
form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `581428da0f5a73c37fad0f70fe5c3138e7c241b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
