# exactPeriodCount_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9adb403b-8296-0f06-0455-d40f659ee051",
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
  "slug": "exactperiodcount-dvd--491fef94490df84e19777442",
  "source": {
    "blob": "03886f4abadc49af6c26ce34eee5e994683807da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 328,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant6fb23e5e40763f58a33bf62eb6df43b637f8fe09463383eed974669a9228c35f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:491fef94490df84e19777442c2ffc4d4481a54cda8389ae4fd32e6445cde8c2e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant6fb23e5e40763f58a33bf62eb6df43b637f8fe09463383eed974669a9228c35f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9adb403b-8296-0f06-0455-d40f659ee051`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–359.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant6fb23e5e40763f58a33bf62eb6df43b637f8fe09463383eed974669a9228c35f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant6fb23e5e40763f58a33bf62eb6df43b637f8fe09463383eed974669a9228c35f.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03886f4abadc49af6c26ce34eee5e994683807da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
