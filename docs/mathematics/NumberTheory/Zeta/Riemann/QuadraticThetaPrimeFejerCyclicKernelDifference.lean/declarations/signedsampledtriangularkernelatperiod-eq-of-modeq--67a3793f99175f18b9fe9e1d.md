# signedSampledTriangularKernelAtPeriod_eq_of_modEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09bec9bc-47c0-2317-a3d3-384631ed7db0",
  "kind": "theorem",
  "lexical_name": "signedSampledTriangularKernelAtPeriod_eq_of_modEq",
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
  "slug": "signedsampledtriangularkernelatperiod-eq-of-modeq--67a3793f99175f18b9fe9e1d",
  "source": {
    "blob": "7bec067eb907506948baa927e01969639d93cb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 33,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicKernelDifference.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67a3793f99175f18b9fe9e1dd68fd5e127d5ba4b3fbcbceedc36dd43339c9483",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicKernelDifference.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09bec9bc-47c0-2317-a3d3-384631ed7db0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedSampledTriangularKernelAtPeriod_eq_of_modEq
    {L : ℕ} (hL : 0 < L)
    (N : ℕ) {a b : ℤ}
    (hmod : (a : ZMod L) = (b : ZMod L)) :
    signedSampledTriangularKernelAtPeriod L N a =
      signedSampledTriangularKernelAtPeriod L N b := by
  have hper :
      Function.Periodic
        (signedSampledTriangularKernelAtPeriod L N) (L : ℤ) := by
    intro r
    exact signedSampledTriangularKernelAtPeriod_add_period hL N r
  have hdiv :
      (L : ℤ) ∣ b - a := by
    exact
      (ZMod.intCast_eq_intCast_iff_dvd_sub a b L).mp hmod
  rcases hdiv with ⟨z, hz⟩
  have hab : b = a + z * (L : ℤ) := by
    linarith
  rw [hab]
  simpa [mul_comm] using hper.int_mul z a

/-- The cyclic residue difference and the ordinary integer difference determine
the same signed sampled-kernel value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicKernelDifference.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicKernelDifference.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bec067eb907506948baa927e01969639d93cb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
