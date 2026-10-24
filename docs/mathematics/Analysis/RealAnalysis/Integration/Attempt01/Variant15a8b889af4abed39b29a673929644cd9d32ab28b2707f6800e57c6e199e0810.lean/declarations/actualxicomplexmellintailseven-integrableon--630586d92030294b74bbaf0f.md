# actualXiComplexMellinTailSeven_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29bad029-3273-97b9-2e06-1c6c5b18aff7",
  "kind": "theorem",
  "lexical_name": "actualXiComplexMellinTailSeven_integrableOn",
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
  "slug": "actualxicomplexmellintailseven-integrableon--630586d92030294b74bbaf0f",
  "source": {
    "blob": "6b0148792d7315b9943b2442a6608ea43186af4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant15a8b889af4abed39b29a673929644cd9d32ab28b2707f6800e57c6e199e0810.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:630586d92030294b74bbaf0f42f444163d02640d950703bd89a94aa70c82c4f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01/Variant15a8b889af4abed39b29a673929644cd9d32ab28b2707f6800e57c6e199e0810.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29bad029-3273-97b9-2e06-1c6c5b18aff7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexMellinTailSeven_integrableOn {s : ℂ} (hs : 1 < s.re) :
    IntegrableOn (fun y : ℝ => (shiftedActualChebyshev y : ℂ) * (y : ℂ) ^ (-(s + 1)))
      (Ioi (7 : ℝ)) := by
  have hpsi := actualPsiComplexMellinTailSeven_integrableOn hs
  have hp : IntegrableOn (fun y : ℝ => (y : ℂ) ^ (-s)) (Ioi (7 : ℝ)) :=
    integrableOn_Ioi_cpow_of_lt (by simpa using (show -s.re < -1 by linarith)) (by norm_num)
  have hc : IntegrableOn (fun y : ℝ =>
      ((2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
        (y : ℂ) ^ (-(s + 1))) (Ioi (7 : ℝ)) :=
    (integrableOn_Ioi_cpow_of_lt
      (by simpa using (show -(s.re + 1) < -1 by linarith)) (by norm_num)).const_mul _
  apply ((hpsi.sub hp).add hc).congr_fun _ measurableSet_Ioi
  intro y hy
  dsimp only
  unfold shiftedActualChebyshev
  push_cast
  rw [← positive_cpow_product (by linarith [hy] : 0 < y)]
  ring

/-- The original source Mellin identity retains the gamma term and continuous pole exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01/Variant15a8b889af4abed39b29a673929644cd9d32ab28b2707f6800e57c6e199e0810.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant15a8b889af4abed39b29a673929644cd9d32ab28b2707f6800e57c6e199e0810.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b0148792d7315b9943b2442a6608ea43186af4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
