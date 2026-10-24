# summedShiftMaximalEnergyBound_of_uniformMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cd5464e-89f7-a131-3d48-630cf1811280",
  "kind": "theorem",
  "lexical_name": "summedShiftMaximalEnergyBound_of_uniformMaximal",
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
  "slug": "summedshiftmaximalenergybound-of-uniformmaximal--fee572274944dc1d2a82b61d",
  "source": {
    "blob": "50dcb6cd73dded101f0623a42f16756ce5e7ccab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Moebius/ChowlaScopeSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fee572274944dc1d2a82b61de40472494e77534bdedea1d435661ef057239b1e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ChowlaScopeSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cd5464e-89f7-a131-3d48-630cf1811280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summedShiftMaximalEnergyBound_of_uniformMaximal
    {range : ℕ → ℕ} {B : ℕ → ℝ}
    (hB : ∀ T, 0 ≤ B T)
    (hmax : GrowingShiftTwoPointMaximalBound range B) :
    SummedShiftMaximalEnergyBound range
      (shiftCardinalitySquareBudget range B) := by
  intro T
  calc
    (∑ h ∈ Finset.Icc 1 (range T),
        finitePrefixMax (twoPointMobiusSequence h) T ^ 2) ≤
      ∑ _h ∈ Finset.Icc 1 (range T), B T ^ 2 := by
        apply Finset.sum_le_sum
        intro h hh
        have hmem := Finset.mem_Icc.mp hh
        have hle := hmax T h hmem.1 hmem.2
        have hnonneg :=
          finitePrefixMax_nonneg (twoPointMobiusSequence h) T
        exact (sq_le_sq₀ hnonneg (hB T)).2 hle
    _ = shiftCardinalitySquareBudget range B T := by
      simp only [Finset.sum_const, nsmul_eq_mul,
        shiftCardinalitySquareBudget]

/-- Complete all-prefix control pays the same explicit summed budget by first
using the exact family maximal equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ChowlaScopeSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ChowlaScopeSeparation.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50dcb6cd73dded101f0623a42f16756ce5e7ccab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
