# arithmeticCyclicKernelDifference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44959135-cb74-3689-8c30-ccce74db8c20",
  "kind": "theorem",
  "lexical_name": "arithmeticCyclicKernelDifference",
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
  "slug": "arithmeticcyclickerneldifference--a8e9adc08aa1003e423a5166",
  "source": {
    "blob": "7bec067eb907506948baa927e01969639d93cb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicKernelDifference.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8e9adc08aa1003e423a516612264b8f725682758a0c503fa48f1c7ebf0a7896",
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

Occurrence: `result:44959135-cb74-3689-8c30-ccce74db8c20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticCyclicKernelDifference :
    ArithmeticCyclicKernelDifferenceClaim := by
  intro X N n q hreg hn0 hn1 hq0 hq1
  rcases hreg with ⟨hX, hN, hNL⟩
  let L : ℕ := fejerOctavePeriod X
  let z : ZMod L :=
    (n : ZMod L) - (q : ZMod L)
  have hL : 0 < L := by
    dsimp [L, fejerOctavePeriod]
    omega
  have hzcast :
      ((z.val : ℤ) : ZMod L) =
        (((n : ℤ) - (q : ℤ)) : ZMod L) := by
    change ((z.val : ℕ) : ZMod L) =
      ((n : ZMod L) - (q : ZMod L))
    rw [ZMod.natCast_zmod_val]
    rfl
  unfold cyclicFejerKernel
  dsimp [z, L] at hzcast ⊢
  exact
    signedSampledTriangularKernelAtPeriod_eq_of_modEq
      hL N hzcast

/-- The arithmetic/cyclic prefix bridge is now reduced to finite reindexing
alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicKernelDifference.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicKernelDifference.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bec067eb907506948baa927e01969639d93cb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
