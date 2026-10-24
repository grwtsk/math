# nonAliasingFejerSharpStepL1Error_eq_cyclicOctaveSubtypeSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a15be9c5-b0a1-6a8d-49d3-2a85f34db6e5",
  "kind": "theorem",
  "lexical_name": "nonAliasingFejerSharpStepL1Error_eq_cyclicOctaveSubtypeSum",
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
  "slug": "nonaliasingfejersharpstepl1error-eq-cyclicoctavesubtypesum--2b1032117e6027c23a794454",
  "source": {
    "blob": "ee8777637ddb2f4cab922b524cf54fef592489dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 14,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b1032117e6027c23a794454a9016aa4481c0ebb44707c42691b197c51af389e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a15be9c5-b0a1-6a8d-49d3-2a85f34db6e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonAliasingFejerSharpStepL1Error_eq_cyclicOctaveSubtypeSum
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    nonAliasingFejerSharpStepL1Error X N m =
      ∑ z :
        {z : ZMod (fejerOctavePeriod X) //
          2 * X < octaveRepresentative X z ∧
            octaveRepresentative X z ≤ 4 * X},
        |cyclicSharpPrefixIndicator X m z.1 -
          cyclicFejerSmoothedPrefix X N m z.1| := by
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold nonAliasingFejerSharpStepL1Error
  rw [← Finset.sum_attach]
  let e :=
    cyclicSharpPrefixSubtypeEquivIoc hX
      (show 2 * X ≤ 4 * X by omega)
      (by simp [fejerOctavePeriod])
  exact Fintype.sum_equiv e.symm
    (fun q :
      {q : ℕ // q ∈ Finset.Ioc (2 * X) (4 * X)} =>
      |sharpPrefixWeight X m q.1 -
        nonAliasingFejerPrefixWeight X N m q.1|)
    (fun z :
      {z : ZMod (fejerOctavePeriod X) //
        2 * X < octaveRepresentative X z ∧
          octaveRepresentative X z ≤ 4 * X} =>
      |cyclicSharpPrefixIndicator X m z.1 -
        cyclicFejerSmoothedPrefix X N m z.1|)
    (by
      intro q
      have hq := Finset.mem_Ioc.mp q.2
      have hsharp :=
        cyclicSharpPrefixIndicator_natCast_eq_sharpPrefixWeight
          hX hq.1 (by simpa [fejerOctavePeriod] using hq.2)
      have hsmooth :=
        arithmeticPrefixWeightEqualsCyclicConvolution
          X N m q.1 ⟨hX, hN, hNL⟩ hq.1 hq.2 hm0 hm1
      simp [e, hsharp, hsmooth])

/-- The arithmetic octave L1 error is bounded by the full cyclic L1 error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8777637ddb2f4cab922b524cf54fef592489dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
