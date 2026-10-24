# exactPeriodCount_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6f4e682-1ce0-9464-8c1b-13bb1dc4a96f",
  "kind": "theorem",
  "lexical_name": "exactPeriodCount_dvd",
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
  "slug": "exactperiodcount-dvd--67bb0d321d36eb8185057463",
  "source": {
    "blob": "1ba1a9399eaa3abfa32d1c2599561dda18697c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 328,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant5107f478c6f6375c8b8327973b52edf184890015e48e87282c58474bd4ffb75a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67bb0d321d36eb8185057463e9c8159e780e606a446929e6bfebee7f62a6cc2f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant5107f478c6f6375c8b8327973b52edf184890015e48e87282c58474bd4ffb75a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6f4e682-1ce0-9464-8c1b-13bb1dc4a96f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactPeriodCount_dvd {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    r ∣ exactPeriodCount H r := by
  letI : NeZero r := ⟨hr.ne'⟩
  let X := ExactPoint H r
  let P : Equiv.Perm X := exactPeriodPerm H r
  let G := Subgroup.zpowers P
  let Ω := Quotient (MulAction.orbitRel G X)
  letI : Fintype Ω := Fintype.ofFinite Ω
  let orbitDecomposition : X ≃ Σ ω : Ω, MulAction.orbit G ω.out :=
    MulAction.selfEquivSigmaOrbits G X
  let orbitCoordinates :
      (Σ ω : Ω, MulAction.orbit G ω.out) ≃ Σ _ω : Ω, ZMod r :=
    Equiv.sigmaCongrRight fun ω =>
      (MulAction.orbitZPowersEquiv P ω.out).trans
        (Equiv.cast (congrArg ZMod (by
          change Function.minimalPeriod P ω.out = r
          exact minimalPeriod_exactPeriodPerm H ω.out)))
  have hcard : Fintype.card X = Fintype.card (Σ _ω : Ω, ZMod r) :=
    Fintype.card_congr (orbitDecomposition.trans orbitCoordinates)
  have hcard' : Fintype.card X = Fintype.card Ω * r := by
    simpa [Fintype.card_sigma, ZMod.card] using hcard
  refine ⟨Fintype.card Ω, ?_⟩
  have hcount : exactPeriodCount H r = Fintype.card X := by
    simp [exactPeriodCount, X]
  rw [hcount, hcard', Nat.mul_comm]

/-! ## Primitive cycle counts and divisor sums -/

/-- Number of primitive cycles of length `r`; by convention it is zero at `r = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant5107f478c6f6375c8b8327973b52edf184890015e48e87282c58474bd4ffb75a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant5107f478c6f6375c8b8327973b52edf184890015e48e87282c58474bd4ffb75a.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba1a9399eaa3abfa32d1c2599561dda18697c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
