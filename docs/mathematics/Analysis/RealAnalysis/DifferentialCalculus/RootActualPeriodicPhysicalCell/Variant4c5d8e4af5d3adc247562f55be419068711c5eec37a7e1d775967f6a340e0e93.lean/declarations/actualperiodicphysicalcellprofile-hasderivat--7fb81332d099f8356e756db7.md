# actualPeriodicPhysicalCellProfile_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:200adc1b-a4eb-800b-9910-6d735aac11e9",
  "kind": "theorem",
  "lexical_name": "actualPeriodicPhysicalCellProfile_hasDerivAt",
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
  "slug": "actualperiodicphysicalcellprofile-hasderivat--7fb81332d099f8356e756db7",
  "source": {
    "blob": "005fee3440a951873ba552886d50b42f206493a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variant4c5d8e4af5d3adc247562f55be419068711c5eec37a7e1d775967f6a340e0e93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fb81332d099f8356e756db7f9b22404f40051ba58163e623b4555954b9539eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variant4c5d8e4af5d3adc247562f55be419068711c5eec37a7e1d775967f6a340e0e93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:200adc1b-a4eb-800b-9910-6d735aac11e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicPhysicalCellProfile_hasDerivAt {A x : ℝ}
    (hA : 0 < A) (hx : 0 < x) (t : ℝ) :
    HasDerivAt (actualPeriodicPhysicalCellProfile A t)
      ((covariantMixedDerivative (actualLogMixedDensity A) t (Real.log x) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log x)) / x ^ 2) x := by
  have hc := (twisted_column_hasDerivAt hA t (Real.log x)).comp x
    (Real.hasDerivAt_log hx.ne')
  have hd := hc.div (hasDerivAt_id x) hx.ne'
  convert hd using 1 <;> try rfl
  simp only [id_eq, Function.comp_apply]
  field_simp
  ring

/-- The actual cell-profile derivative is exactly the retained four-sector transport. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variant4c5d8e4af5d3adc247562f55be419068711c5eec37a7e1d775967f6a340e0e93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variant4c5d8e4af5d3adc247562f55be419068711c5eec37a7e1d775967f6a340e0e93.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `005fee3440a951873ba552886d50b42f206493a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
