# centeredMobiusLogPairGCD_squarefree_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b866c6bc-1a84-6c72-9f79-b12a19d5c1e7",
  "kind": "theorem",
  "lexical_name": "centeredMobiusLogPairGCD_squarefree_of_mem",
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
  "slug": "centeredmobiuslogpairgcd-squarefree-of-mem--ae8d09334fdea4ea1363931e",
  "source": {
    "blob": "78839dfc7c2acac898cb976d440ba8f000f4c2e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 279,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae8d09334fdea4ea1363931eb7979dc9e24a6d0c1b54a0cdee8f5d8bb1315e32",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b866c6bc-1a84-6c72-9f79-b12a19d5c1e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredMobiusLogPairGCD_squarefree_of_mem
    {n h : ℕ} {uv : Option ℕ × Option ℕ}
    (huv :
      uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h) :
    Squarefree (centeredMobiusLogPairGCD uv) := by
  have hu :=
    (mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp huv).1
  have hsq :=
    centeredMobiusLogDivisorModulus_squarefree_of_mem hu
  exact
    Squarefree.squarefree_of_dvd
      (Nat.gcd_dvd_left
        (centeredMobiusLogDivisorModulus uv.1)
        (centeredMobiusLogDivisorModulus uv.2))
      hsq

/-- The common gcd of an active pair is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78839dfc7c2acac898cb976d440ba8f000f4c2e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
