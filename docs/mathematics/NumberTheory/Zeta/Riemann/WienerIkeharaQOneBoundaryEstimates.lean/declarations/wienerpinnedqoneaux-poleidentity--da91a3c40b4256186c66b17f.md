# wienerPinnedQOneAux_poleIdentity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f010dbf2-48cb-650f-6372-7f711399ecc7",
  "kind": "theorem",
  "lexical_name": "wienerPinnedQOneAux_poleIdentity",
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
  "slug": "wienerpinnedqoneaux-poleidentity--da91a3c40b4256186c66b17f",
  "source": {
    "blob": "63d37837b2c3798ea6a2a570d778d830d8d696bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da91a3c40b4256186c66b17f8d785be743dac0b57cc88c16cd44b1250e22e809",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f010dbf2-48cb-650f-6372-7f711399ecc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerPinnedQOneAux_poleIdentity
    {s : ℂ} (hs : 1 < s.re) :
    wienerPinnedQOneAux s =
      LSeries wienerPinnedLambdaComplex s - 1 / (s - 1) := by
  have hsource :=
    (ArithmeticFunction.vonMangoldt.eqOn_LFunctionResidueClassAux
      (q := 1) (a := (1 : ZMod 1))
      (isUnit_one : IsUnit (1 : ZMod 1)))
      (show s ∈ {z : ℂ | 1 < z.re} from hs)
  have hseries := wienerPinnedQOne_residueLSeries_eq_lambda s
  change wienerPinnedQOneAux s =
    LSeries
      (fun n : ℕ =>
        ((ArithmeticFunction.vonMangoldt.residueClass
          (1 : ZMod 1) n : ℝ) : ℂ)) s -
        (Nat.totient 1 : ℂ)⁻¹ / (s - 1) at hsource
  rw [hseries] at hsource
  simpa [Nat.totient_one] using hsource

/-- Reuse the pinned theorem about continuation through Re(s)=1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63d37837b2c3798ea6a2a570d778d830d8d696bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
