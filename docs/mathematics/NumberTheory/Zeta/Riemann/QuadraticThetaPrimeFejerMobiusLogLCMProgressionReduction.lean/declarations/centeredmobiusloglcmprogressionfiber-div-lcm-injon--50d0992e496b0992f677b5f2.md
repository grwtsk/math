# centeredMobiusLogLCMProgressionFiber_div_lcm_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3714feb9-5c60-fbe9-c164-687b56c4b25d",
  "kind": "theorem",
  "lexical_name": "centeredMobiusLogLCMProgressionFiber_div_lcm_injOn",
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
  "slug": "centeredmobiusloglcmprogressionfiber-div-lcm-injon--50d0992e496b0992f677b5f2",
  "source": {
    "blob": "1487c73221bb96a0ac1dc2edce6bd31a7123be56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 349,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50d0992e496b0992f677b5f2dd710f8f424c1622b297e61a1707b6665287743e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3714feb9-5c60-fbe9-c164-687b56c4b25d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredMobiusLogLCMProgressionFiber_div_lcm_injOn
    (X h : ℕ) (u v : Option ℕ) :
    Set.InjOn
      (fun n : ℕ =>
        n / Nat.lcm
          (centeredMobiusLogDivisorModulus u)
          (centeredMobiusLogDivisorModulus v))
      (centeredMobiusLogLCMProgressionFiber X h u v : Set ℕ) := by
  intro a ha b hb hab
  have hmod :=
    centeredMobiusLogLCMProgressionFiber_pair_modEq ha hb
  unfold Nat.ModEq at hmod
  let L := Nat.lcm
    (centeredMobiusLogDivisorModulus u)
    (centeredMobiusLogDivisorModulus v)
  change a / L = b / L at hab
  change a % L = b % L at hmod
  calc
    a = a / L * L + a % L := (Nat.div_add_mod a L).symm
    _ = b / L * L + b % L := by rw [hab, hmod]
    _ = b := Nat.div_add_mod b L

/-- Exact elementary cardinality bound for one lcm progression fiber. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1487c73221bb96a0ac1dc2edce6bd31a7123be56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
